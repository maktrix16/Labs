<?php 
/*
	Project: CSV Category Import
	Author : karapuz <support@ka-station.com>

	Version: 1.0 ($Revision: 13 $)

*/

require_once(KaVQMod::modCheck(DIR_SYSTEM . 'library/ka_db.php'));
require_once(KaVQMod::modCheck(DIR_SYSTEM . 'library/ka_urlify.php'));
require_once(KaVQMod::modCheck(DIR_SYSTEM . 'engine/ka_model.php'));

if (!function_exists('mb_strtolower')) {
	function mb_strtolower($str, $charset) {
		$ret = "";
		if ($charset == 'utf-8') {
			$ret = utf8_strtolower($str);
		} else {
			$ret = strtolower($str);
		}
		return $ret;
	}
}

if (!function_exists('utf8_strlen')) {
	function utf8_strlen($string) {
		return strlen(utf8_decode($string));
	}
}

class KaImport extends KaModel {

	protected $logFileName    = 'ka_import.log';
	protected $profiles_table = '';

	// session variables
	protected $stat; // == $this->params['stat']

	// constants
	protected $sec_per_cycle    = 10;
	protected $enclosure        = '"';
	//	protected $escape           = '\\'; - not supported;
	protected $default_attribute_group_name = 'unassigned';
	protected $generate_urls    = true;
	
	//temporary vaiables
	protected $columns;
	protected $messages;
	protected $kalog = null;
	protected $key_fields = null;

	/*
		PARAMETERS:
			$str   - string
			$chars - a character or array of characters
	*/
	public function strip($str, $chars) {
		$str = trim($str);

		if (empty($chars)) {
			return $str;
		}

		if (!is_array($chars)) {
			$chars = array($chars);
		}

		$pat = array();
		$rep = array();
		foreach($chars as $char) {
			$pat[] = "/(" . preg_quote($char, '/') . ")*$/";
			$rep[] = '';
			$pat[] = "/^(" . preg_quote($char, '/') . ")*/";
			$rep[] = '';
		}

		$res = preg_replace($pat, $rep, $str);
		
		return $res;
	}

	
	public function formatDate(&$date) {
		$date = trim($date);
		if (!preg_match("/^\d{4}-\d{1,2}-\d{1,2}$/", $date)) {
			return false;
		}
		return true;
	}

	
	public function timeFormat($diff) {

 		$periods = array( //suffixes
	    	'd' => array(86400, $this->language->get('text_days')),
	   		'h' => array(3600, $this->language->get('text_hours')),
      		'm' => array(60, $this->language->get('text_minutes')),
			's' => array(1, $this->language->get('text_seconds'))
  		);

		$ret = '';
		foreach ($periods as $k => $v) {
			$num = floor($diff / $v[0]);
				if ($num || !empty($ret) || $k == 's') {
					$ret .= $num . ' ' . $v[1] . ' ';
				}
				$diff -= $v[0] * $num;
		}

	    return $ret;
	}

	
  	/*
  		function converts values like 10M to bytes
	*/
	public function convertToByte($file_size) {
		$val = trim($file_size);
		switch (strtolower(substr($val, -1))) {
			case 'g':
				$val *= 1024;
			case 'm':
				$val *= 1024;
			case 'k':
				$val *= 1024;
		}
		return $val;
	}


	/*
		Function converts value to human readable format like 10.1 Mb 
	*/
	public function convertToMegabyte($val) {
	
		if (!is_numeric($val)) {
			$val = $this->convertToByte($val);
		}

		if ($val >= 1073741824) {
			$val = round($val/1073741824, 1) . " Gb";

		} elseif ($val >= 1048576) {
			$val = round($val/1048576, 1) . " Mb";

		} elseif ($val >= 1024) {
			$val = round($val/1024, 1) . " Kb";
		} else {
			$val = $val . " bytes";
		}

		return $val;
	}

		
	public function getUploadMaxFilesize($units = 'MB') {
		static $max_filesize;

		if (!isset($max_filesize)) {
			$post_max_size = $this->convertToByte(ini_get('post_max_size'));
			$upload_max_filesize = $this->convertToByte(ini_get('upload_max_filesize'));
			$max_filesize = intval(min($post_max_size, $upload_max_filesize));
		}

		if ($units == 'MB') {
			$max_filesize = $this->convertToMegabyte($max_filesize);
		}
		
    	return $max_filesize;
	}
	
	
	public function getCustomerGroupByName($customer_group) {
			
		static $customer_groups;

		if (isset($customer_groups[$customer_group])) {
			return $customer_groups[$customer_group];
		}
		
		if (version_compare(VERSION, '1.5.3', '>=')) {
		
			$qry = $this->db->query("SELECT cgd.customer_group_id FROM " . DB_PREFIX . "customer_group cg
				INNER JOIN " . DB_PREFIX . "customer_group_description cgd
					ON cg.customer_group_id = cgd.customer_group_id 
				WHERE 
					cgd.name = '$customer_group'"
			);

		} else {
		
			$qry = $this->db->query("SELECT customer_group_id FROM " . DB_PREFIX . "customer_group
			WHERE name = '$customer_group'");
		}

		
		if (empty($qry->row)) {
			$customer_groups[$customer_group] = 0;
			return 0;
		}
		
		$customer_groups[$customer_group] = $qry->row['customer_group_id'];
						
		return $qry->row['customer_group_id'];
	}

	
	/*
		fseek - works in bytes always (regardless of the stream encoding)
		ftell - measures length in bytes for UTF-8 charset
		fread - reads a number of utf characters (not bytes)

		PARAMETERS:
			offset - length in bytes for utf-8 stream
	*/
	function fseek_utf8($handle, $offset) {

		if (empty($this->filter)) {
			return fseek($handle, $offset);
		}

		rewind($handle);

		$remainder = $offset;	 // remainder in bytes for utf-8 stream

		while ($remainder && !feof($handle)) {

			// calculate max_length in bytes
			//
			// 4 bytes are reserved for possible BOL
			// we assume that the whole string may consists of 2-byte characters
			//
			$max_length = (int)($remainder / 2) - 4;

			if ($max_length > 1) {
				$block_size = min(1024*32, $max_length);
			} else {
				$block_size = 1;
			}

			$buf = fread($handle, $block_size);
			if ($buf === false) {
				return -1;
			} 
			
			$pos = ftell($handle);

			if ($pos > $offset) {
				die('ERROR: ftell() function failed, please contact author of this extension.');
			}

			$remainder = $offset - $pos;
			if ($remainder < 0) {				
				die('ERROR: fseek() function failed, please contact author of this extension.');
			}
		}

		return 0;
	}

	function filesize_utf8($filename) {

		if (($handle = $this->fopen_utf8($filename, $this->params['charset'])) == FALSE) {
			return false;
		}
		
    	if ($this->fseek_utf8($handle, 1024*1024*1024) == -1) {
    		return false;
    	}
		$size = ftell($handle);
		fclose($handle);

		return $size;
	}

	function fopen_utf8($filename, $charset = 'UTF-16') {
		
		if (!is_file($filename)) {
			$this->report("trying to open non-existing file $filename");			
			return false;
		}
	
		@ini_set("auto_detect_line_endings", "1");

		$handle   = fopen($filename, 'r');
		$bom      = fread($handle, 2);

		rewind($handle);

/*
			http://www.unicode.org/faq/utf_bom.html#UTF8
			00 00 FE FF UTF-32, big-endian
			FF FE 00 00 UTF-32, little-endian
			FE FF       UTF-16, big-endian
			FF FE       UTF-16, little-endian
			EF BB BF    UTF-8
*/
		
	    if ($charset == 'UTF-16') {
			if ($bom === chr(0xff).chr(0xfe)  || $bom === chr(0xfe).chr(0xff)) {
				// UTF16 Byte Order Mark present
				$charset = 'UTF-16';
			} else {
				$charset = '';
			}
	 	} elseif ($charset == 'UTF-8') {
	 		if ($bom === chr(0xef).chr(0xbb)) {
	 			fread($handle, 3);
	 		}
	 	}

		if ($charset) {
			$this->filter = stream_filter_append($handle, 'convert.iconv.'.$charset.'/UTF-8');
			setlocale(LC_ALL, 'en_US.UTF8', 'en_US.UTF-8');
		} else {
			fclose($handle);
			$handle = FALSE;
		}
		return $handle;
	}
	
		
	public function getStores() {

		$this->load->model('setting/store');
		$stores = $this->model_setting_store->getStores();

		$stores[] = array(
			'store_id' => 0,
			'name'     => $this->config->get('config_name') . $this->language->get('text_default'),
			'url'      => HTTP_CATALOG,
		);

		return $stores;
	}


 	/*
 		This function is used for writing messages to log and displaying them instantly during development.
 	*/
 	public function report($msg) {

 		if (defined('KA_DEBUG')) {
 			echo $msg;
 		}

		$this->kalog->write($msg);
 	}


	public function getSecPerCycle() {
		return $this->sec_per_cycle;
	}

	
	
	protected function addImportMessage($msg, $type = 'W') {
		static $too_many = false;

		if ($too_many ) return false;

		$prefix = '';
		if ($type == 'W') {
			$prefix = 'WARNING';
		} else if ($type == 'E') {
	  		$prefix = 'ERROR';
	  	} elseif ($type == 'I') {
		  	$prefix = 'INFO';
		}


		if (!empty($this->messages) && count($this->messages) > 200) {
			$too_many = true;
	  		$msg = "too many messages...";
	  	} else {
		  	$msg = $prefix . ': ' . $msg;
		}

	  	$this->kalog->write("Import message: " . $msg);

		$this->messages[] = $msg;
	}


	protected function isUrl($path) {
    	return preg_match('/^(http|https|ftp):\/\//isS', $path);
	}


	/*
		RETURNS:
			false - on error
			array - on success. It looks like:
				array(
					'status'
						'http_version'  =>
						'status_code'   =>
						'reason_phrase' =>
					'headers'
						'<hdr1>' => value
						'<hdr2>' => value
				)
	*/
	protected function parseHttpHeader($header) {
	
		if (!preg_match("/^(.*)\s(.*)\s(.*)\x0D\x0A/U", $header, $matches)) {
			return false;
		}

		$status = array(
			'http_version'  => $matches[1],
			'status_code'   => $matches[2],
			'reason_phrase' => $matches[3]
		);
		
		$headers = array();		
		$header_lines = explode("\x0D\x0A", $header);
		
		foreach ($header_lines as $line) {
			$pair        = array();
			$value_start = strpos($line, ': ');
			$name        = substr($line, 0, $value_start);
			$value       = substr($line, $value_start + 2);
						
			$headers[$name] = $value;
		}
		
		$result = array(
			'status' => $status,
			'headers' => $headers
		);
		
		return $result;					
	}

	//
	// http://www.w3.org/Protocols/rfc2616/rfc2616-sec6.html
	//
	public function getFileContentsByUrl($url) {

		$message = null;
		
		if (function_exists('curl_init')) {
		
			$tmp_url        = $url;
			$redirect_count = 0;
						
			do {			
				$headers = '';
				$message = null;
				
				$curl = curl_init($tmp_url);
				curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
				curl_setopt($curl, CURLOPT_HEADER, true);
				curl_setopt($curl, CURLOPT_TIMEOUT, 30);
				curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
				curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
				$response = curl_exec($curl);
				curl_close($curl);
				
				$msg_start    = strpos($response, "\x0D\x0A\x0D\x0A");
				$header_block = substr($response, 0, $msg_start);
				$headers      = $this->parseHttpHeader($header_block);				
				if (empty($headers)) {
					break;
				}

				if ($headers['status']['status_code'] >= 200 && $headers['status']['status_code'] < 300) {
					$message = substr($response, $msg_start+4);
					break;
					
				} elseif ($headers['status']['status_code'] >= 300 && $headers['status']['status_code'] < 400) {
					$tmp_url = $headers['headers']['Location'];
					continue;
				} else {
					$this->lastError = 'Invalid status code: ' . $headers['status']['status_code'];
					break;
				}
				
			} while (++$redirect_count < 5);
			
		} else {
			if (ini_get('allow_url_fopen')) {
				$message = file_get_contents($url);
			}
		}

		return $message;
	}

		
	protected function normalizeFilename($filename) {

		$chars = array('\\','/','=','.','+','*','?','[','^',']','(','$',']','&','<','>');
   		$filename = str_replace($chars, "_", $filename);

   		return $filename;
	}

	/*
		RETURNS:
			$file - path with file name within image directory or FALSE on error.

		File name can be theortically converted to the right charset but we do not support
		it at this moment.
		$file  = iconv('utf-8', 'Windows-1251', $image);
	*/
	protected function getImageFile($image) {
		$this->lastError = '';
	
		if (empty($image))
			return false;

		$image = trim($image);
		
		$file = '';
		if ($this->isUrl($image)) {

			// download file and parse the path
			//
			$image = htmlspecialchars_decode($image);
		    $tmp = str_replace(array(' '), array('%20'), $image);

		    $content = $this->getFileContentsByUrl($tmp);
	    	if (empty($content)) {
		    	$this->lastError = "File content is empty for $tmp";
		    	return false;
	    	}

		    $url_info = @parse_url($image);

		    if (empty($url_info)) {
	    		$this->lastError = "Invalid URL data $url";
	    		return false;
			}

	    	//get relative image directory to $images_dir

		    $fullname  = '';
		    $images_dir = str_replace("\\", '/', $this->params['incoming_images_dir']);
      
	    	if (!empty($url_info['path'])) {
	    		$url_info['path'] = urldecode($url_info['path']);
	    		
			    $path_info = pathinfo($url_info['path']);
			    $path_info['dirname'] = $this->strip($path_info['dirname'], array("\\","/"));
			    if (!empty($path_info['dirname'])) {
		    		$images_dir = $images_dir . $path_info['dirname'] . '/';
		    		if (!file_exists(DIR_IMAGE . $images_dir)) {
			    		if (!mkdir(DIR_IMAGE . $images_dir, 0755, true)) {
			    			$this->lastError = "Script cannot create directory: $images_dir";
			    			return false;
		    			}
			    	}
			    }
			}

			// get file name to $filename

		  	$tmp_file = tempnam(DIR_IMAGE . $images_dir, "tmp");
		  	
		  	$size = file_put_contents($tmp_file, $content);
		  	if (empty($size)) {
		  		$this->lastError = "Cannot save new image file: $tmp_file";
			  	return false;
			}

    		$image_info = getimagesize($tmp_file);
    		if (empty($image_info)) {
				$this->lastError = "getimagesize returned empty info for the file: $image";
				return false;
			}

			if (!empty($url_info['query'])) {
				$filename = '';
				if (!empty($path_info['basename'])) {
					$filename = $path_info['basename'];
				}
				$query = $this->normalizeFilename($url_info['query']);
				$filename = $filename . $query . image_type_to_extension($image_info[2]);

			} else {
				$filename = $path_info['basename'];
				if (empty($path_info['extension'])) {
					$filename = $filename . image_type_to_extension($image_info[2]);
				}
			}
			
			if (is_file(DIR_IMAGE.$images_dir.$filename)) {
				@unlink(DIR_IMAGE.$images_dir.$filename);
			}
			
			if (!is_file(DIR_IMAGE.$images_dir.$filename)) {
				if (!rename($tmp_file, DIR_IMAGE.$images_dir.$filename)) {
					$this->lastError = "rename operation failed. from $tmp_file to " . DIR_IMAGE.$images_dir.$filename;
					return false;
				}

				if (!chmod(DIR_IMAGE . $images_dir . $filename, 0644)) {
					$this->lastError = "chmod failed for file: $filename";
					return false;
				}
			}

		   	$file = $images_dir . $filename;
		   	
		} else {
			
			//
			// if the image is a regular file
			//

			$file = $this->params['images_dir'].$image;
			if (!is_file(DIR_IMAGE . $file)) {
				$this->lastError = "File not found " . DIR_IMAGE . $file;
				return false;
			}
		}

		return $file;
	}

	
	public function insertToStores($entity, $entity_id, $stores) {

		$table = $entity . "_to_store";
		$field = $entity . "_id";

		foreach($stores as $sv) {
		 	$rec = array(
		 		'store_id' => $sv,
		 		$field => $entity_id
		 	);
		 	$this->kadb->queryInsert($table, $rec, true);
		}

		return true;
	}


	/*
		PARAMETERS:
			weight - value like this 0.0234g

		RETURNS:
			array (
				value           -> 0.0234
				weight_class_id -> 4
			)

		NOTES:
			function does NOT create a new weight class
	*/	
	public function parseWeight($weight) {

		$pair = array(
			'value'           => 0,
			'weight_class_id' => $this->config->get("config_weight_class_id"),
		);
	
		$matches = array();
		if (preg_match("/([\d\.\,]*)([\D]*)$/", $weight, $matches)) {
			$pair['value'] = $matches[1];
		
			$qry = $this->db->query("SELECT * FROM " . DB_PREFIX . "weight_class_description
				WHERE unit = '" . $this->db->escape($matches[2]) . "'"
			);
	
			if (!empty($qry->row)) {
				$pair['weight_class_id'] = $qry->row['weight_class_id'];
			}
		}
		
		return $pair;
	}

	
	public function parseLength($length) {
	
		$pair = array(
			'value'           => 0,
			'length_class_id' => $this->config->get("config_length_class_id"),
		);
	
		$matches = array();
		if (preg_match("/(.*)([\D]*)$/U", $length, $matches)) {
			$pair['value'] = $matches[1];
		
			$qry = $this->db->query("SELECT * FROM " . DB_PREFIX . "length_class_description
				WHERE unit = '" . $this->db->escape($matches[2]) . "'"
			);

			if (!empty($qry->row)) {
				$pair['length_class_id'] = $qry->row['length_class_id'];
			}
		}

		return $pair;
	}
	

	public function getLastError() {
		return $this->lastError;
	}


	public function getColumns() {
		return $this->columns;
	}


	public function getImportMessages() {
		return $this->messages;
	}

	public function getImportStat() {		
	 	return $this->stat;
	}

	
	public function getCharsets() {
		$arr = array(
			'ISO-8859-1'   => 'ISO-8859-1 (Western Europe)',
			'ISO-8859-5'   => 'ISO-8859-5 (Cyrillc, DOS)',
			'UTF-16'       => 'UNICODE (MS Excel text format)',
			'KOI-8R'       => 'KOI-8R (Cyrillic, Unix)',
			'UTF-7'        => 'UTF-7',
			'UTF-8'        => 'UTF-8',
			'windows-1250' => 'windows-1250 (Central European languages)',
			'windows-1251' => 'windows-1251 (Cyrillc)',
			'windows-1252' => 'windows-1252 (Western languages)',
			'windows-1253' => 'windows-1253 (Greek)',
			'windows-1254' => 'windows-1254 (Turkish)',
			'windows-1255' => 'windows-1255 (Hebrew)',
			'windows-1256' => 'windows-1256 (Arabic)',
			'windows-1257' => 'windows-1257 (Baltic languages)',
			'windows-1258' => 'windows-1258 (Vietnamese)',
			'CP932'        => 'CP932 (Japanese)',
		);

		return $arr;
	}

	
	/*
		TRUE  - success
		FALSE - fail. See lastError for details.
	*/
	public function loadFile($params) {

		if (!in_array($params['delimiter'], array(',',';',"\t"))) {
			$this->lastError = 'Wrong delimiter';
			return false;
		}

		if (empty($params['file'])) {
			$this->lastError = "File not defined";
			return false;
		}			
		
		if (!is_file($params['file'])) {
			$this->lastError = "File '" . $params['file'] ."' does not exist.";
			return false;
		}

		$this->params = $params;

		if (!$this->readColumns($params['file'], $params['delimiter'])) {
			$this->lastError = 'Invalid file header';
			return false;
		}

		$this->params['columns'] = $this->columns;

		return true;
	}
		
	
	protected function readColumns($file, $sep) {

		if (($handle = $this->fopen_utf8($file, $this->params['charset'])) == FALSE) {
			return false;
		}
		$this->columns = fgetcsv($handle, 0, $sep, $this->enclosure);

		if (!empty($this->columns)) {
			foreach ($this->columns as &$cv) {
				$cv = trim($cv);
			}
		}

    	fclose($handle);
	
    	return true;
	}


	protected function onLoad() {
	
		$this->kalog = new Log($this->logFileName);
 		$this->kadb = new KaDb($this->db);
	
 		if (!isset($this->params['stat'])) {
 			$this->params['stat'] = array();
 		}
 		$this->stat = &$this->params['stat'];
	}
	
	
	/*
		it works with varchar(...) type only right now
		
		RETURNS:
			array where keys are fields, values are field lengths
	*/
	protected function getFieldLengths($table, $fields) {
	
		$qry = $this->db->query("DESCRIBE `$table`");
		if (empty($qry->rows) || empty($fields)) {
			return false;
		}
		
		$ret = array_combine($fields, array_fill(0, count($fields), 0));
		foreach ($qry->rows as $f) {

			if (!in_array($f['Field'], $fields)) {
				continue;
			}
		
			if (!preg_match("/varchar\((\d*)\)/", $f['Type'], $matches)) {
				continue;
			}
			
			$ret[$f['Field']] = intval($matches[1]);
		}
		
		return $ret;	
	}
	
	
	public function getProfiles() {		
				
		$qry = $this->db->query("SELECT profile_id, name FROM " . $this->profiles_table);

		$profiles = array();
		if (!empty($qry->rows)) {
			foreach ($qry->rows as $row) {
				$profiles[$row['profile_id']] = $row['name'];
			}
		}
		
		return $profiles;
	}

	
	public function deleteProfile($profile_id) {

		$this->db->query("DELETE FROM " . $this->profiles_table . " WHERE profile_id = '" . $this->db->escape($profile_id) . "'");
			
		return true;
	}
	
	
	/*
		returns:
			array - on success
			false - on error
	*/
	public function getProfileParams($profile_id) {
	
		$qry = $this->db->query("SELECT * FROM " . $this->profiles_table . " WHERE profile_id = '" . $this->db->escape($profile_id) . "'");
		if (empty($qry->rows)) {
			return false;
		}

		if (!empty($qry->row['params'])) {
			$params = unserialize($qry->row['params']);
		} else {
			$params = array();
		}

		return $params;
	}
	
	
	/*
		returns:
			true  - on success
			false - on error
	*/
	public function setProfileParams($profile_id, $name, $params) {
	
		if (empty($profile_id)) {
			$this->db->query("INSERT INTO " . $this->profiles_table . "
				SET 
					name = '" . $this->db->escape($name) . "'
			");
			$profile_id = $this->db->getLastId();
		}
		
		$this->db->query("UPDATE " . $this->profiles_table . "
			SET 
				name = '" . $this->db->escape($name) . "',
				params = '" . $this->db->escape(serialize($params)) . "'
			WHERE
				profile_id = '" . $this->db->escape($profile_id) . "'
		");

		return true;
	}
	
}

?>