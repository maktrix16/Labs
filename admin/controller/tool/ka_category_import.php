<?php 
/*
  Project: CSV Category Import
  Author : karapuz <support@ka-station.com>

  Version: 1 ($Revision: 14 $)

*/

require_once(KaVQMod::modCheck(DIR_SYSTEM . 'engine/ka_controller.php'));

class ControllerToolKaCategoryImport extends KaController { 

	protected $tmp_dir;
	protected $store_root_dir;
	protected $store_images_dir;

	protected function onLoad() {

		$this->tmp_dir          = DIR_CACHE;
		$this->store_root_dir   = dirname(DIR_APPLICATION);
		$this->store_images_dir = dirname(DIR_IMAGE) . DIRECTORY_SEPARATOR . basename(DIR_IMAGE);

		if (!$this->validate()) {
			return $this->redirect($this->url->link('error/permission', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->load->model('tool/ka_category_import');

		if (!$this->db->isKaInstalled('ka_category_import')) {
			return $this->redirect($this->url->link('extension/ka_extensions', 'token=' . $this->session->data['token'], 'SSL'));
		}

 		$this->loadLanguage('ka_extensions/ka_category_import');
 		
		$this->data['store_images_dir'] = $this->store_images_dir;
		$this->data['store_root_dir']   = $this->store_root_dir;

		$this->data['breadcrumbs'] = array();
		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
		);
		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('CSV Category Import'),
			'href'      => $this->url->link('tool/ka_category_import', 'token=' . $this->session->data['token'], 'SSL'),
		);
		
		$this->children = array(
			'common/header',
			'common/footer',
		);
	}
	
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'tool/ka_category_import')) {
			return FALSE;
		}

		return TRUE;
	}

	
	protected function prepareOutput() {
		$this->document->setTitle($this->language->get('CSV Category Import'));
		$this->response->setOutput($this->render());
	}
	
	
	public function index() {
	
		// do we need re-install the extension?
		//
		if (!$this->model_tool_ka_category_import->isDBPrepared()) {
			$this->data['is_wrong_db'] = true;
			$this->template = 'tool/ka_category_import.tpl';
			$this->prepareOutput();
			return;
		}
		
		if (empty($this->params) || ($this->request->server['REQUEST_METHOD'] == 'GET' && empty($this->session->data['save_params']))) {
			$this->params = array(
				'step'                => 1,
				'update_mode'         => 'add',
				'cat_separator'       => '///',
				'delimiter'           => 's',
				'location'            => 'local', // file location (local / server)
				'language_id'         => $this->config->get('config_language_id'),
				'store_ids'           => array(0),
				'images_dir'          => '',
				'incoming_images_dir' => 'data' . DIRECTORY_SEPARATOR . 'incoming',
				'charset'             => 'ISO-8859-1',
				'charset_option'      => 'predefined',
				'profile_name'        => '', // for the second step
				'profile_id'          => '', // for the first step
				'file_path'           => '',
				'rename_file'         => true,				
				'disable_not_imported_categories' => false,
				'skip_new_categories'             => false,
			);

			$this->params['iconv_exists']       = function_exists('iconv');
			$this->params['filter_exists']      = in_array('convert.iconv.*', stream_get_filters());
			$this->params['image_urls_allowed'] = false;
			
			if (ini_get('allow_url_fopen') || function_exists('curl_version')) {
				$this->params['image_urls_allowed'] = true;
			}
	 	}

		$profiles = $this->model_tool_ka_category_import->getProfiles();
		$this->data['profiles'] = $profiles;
	 	
		$this->session->data['save_params'] = false;
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
		
			$msg = '';
			if ($this->request->post['mode'] == 'load_profile') {
			
				$this->session->data['save_params'] = true;
				$this->params = array_merge($this->params, $this->model_tool_ka_category_import->getProfileParams($this->request->post['profile_id']));
				if (!empty($this->params)) {
					$this->params['profile_id'] = $this->request->post['profile_id'];
					$this->addTopMessage("Profile has been loaded succesfully");
				} else {
					$this->addTopMessage("Operation failed", 'E');
				}
				
				return $this->redirect($this->url->link('tool/ka_category_import', 'token=' . $this->session->data['token'], 'SSL'));
				
			} elseif ($this->request->post['mode'] == 'delete_profile') {
			
				$this->model_tool_ka_category_import->deleteProfile($this->request->post['profile_id']);
				$this->session->data['save_params'] = true;
				$this->addTopMessage("Profile has been deleted succesfully");
				
				return $this->redirect($this->url->link('tool/ka_category_import', 'token=' . $this->session->data['token'], 'SSL'));
			}
		
			if (!isset($this->request->post['images_dir'])) {
				$this->addTopMessage("Wrong post parameters. Please verify that the file size is less than the maximum upload limit.", 'E');
				$this->session->data['save_params'] = true;
			 	return $this->redirect($this->url->link('tool/ka_category_import', 'token=' . $this->session->data['token'], 'SSL'));
			}

			$this->params['images_dir']          = $this->request->post['images_dir'];
			$this->params['incoming_images_dir'] = $this->request->post['incoming_images_dir'];

			$this->params['delimiter']           = $this->request->post['delimiter'];
			$this->params['location']            = $this->request->post['location'];
			$this->params['language_id']         = $this->request->post['language_id'];
			$this->params['cat_separator']       = $this->request->post['cat_separator']; 
			$this->params['update_mode']         = $this->request->post['update_mode']; 
			$this->params['rename_file']         = (!empty($this->request->post['rename_file'])) ? true:false;
			
			$this->params['charset_option'] = $this->request->post['charset_option']; 
			if ($this->params['charset_option'] == 'predefined') {
				$this->params['charset']        = $this->request->post['charset']; 
			} else {
				$this->params['charset'] = $this->request->post['custom_charset']; 
			}

			if (!empty($this->request->post['store_ids'])) {
				$this->params['store_ids']     = $this->request->post['store_ids'];
			} else {
				$this->params['store_ids']     = array(0);
			}
			
			$this->params['disable_not_imported_categories'] = (isset($this->request->post['disable_not_imported_categories'])) ? true : false;
			$this->params['skip_new_categories']             = (isset($this->request->post['skip_new_categories'])) ? true : false;

			if ($this->params['location'] == 'server') {
				$this->params['file_path'] = $this->model_tool_ka_category_import->strip($this->request->post['file_path'], array('/','\\'));
				$this->params['file']      = $this->store_root_dir . DIRECTORY_SEPARATOR . $this->params['file_path'];

				if (!file_exists($this->params['file'])) {
					$msg = $msg . $this->language->get('error_file_not_found');
				}

			} else {

				if (!empty($this->request->files['file']) && is_uploaded_file($this->request->files['file']['tmp_name'])) {
					$filename = $this->request->files['file']['name'] . '.' . md5(rand());
					if (move_uploaded_file($this->request->files['file']['tmp_name'], $this->tmp_dir . $filename)) {
					  $this->params['file'] = $this->tmp_dir . $filename;
					} else {
						$msg = $msg . str_replace('{dest_dir}', $this->tmp_dir, $this->language->get('error_cannot_move_file'));
					}
				} else {
					$msg = $msg . $this->language->get('error_file_not_found');
			 	}
		 	}

		 	if (empty($msg)) {
				$params = $this->params;
				$params['delimiter'] = strtr($params['delimiter'], array('c'=>',', 's'=>';', 't'=>"\t"));
				if ($this->model_tool_ka_category_import->loadFile($params)) {
					$this->params['columns'] = $this->model_tool_ka_category_import->getColumns();
				} else {
					$msg .= $this->model_tool_ka_category_import->getLastError();
				}
			}
			
			if (!empty($msg)) {
				$this->addTopMessage($msg, 'E');
				$this->session->data['save_params'] = true;
			 	return $this->redirect($this->url->link('tool/ka_category_import', 'token=' . $this->session->data['token'], 'SSL'));
			}

			return $this->redirect($this->url->link('tool/ka_category_import/step2', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->params['step'] = 1;
		
		$this->load->model('setting/store');
		$this->data['stores'] = $this->model_tool_ka_category_import->getStores();

		$this->load->model('catalog/category');
		$this->data['categories'] = $this->model_catalog_category->getCategories(0);
		$this->data['charsets']   = $this->model_tool_ka_category_import->getCharsets();

		$this->load->model('localisation/language');
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		$this->data['action']    = $this->url->link('tool/ka_category_import', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['backup_link'] = $this->url->link('tool/backup', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['params']      = $this->params;

		$this->data['max_file_size'] = $this->model_tool_ka_category_import->getUploadMaxFilesize();

		$this->data['settings_page'] = $this->url->link('ka_extensions/ka_category_import', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->template = 'tool/ka_category_import.tpl';
		return $this->prepareOutput();
	}


	/*
		The function updates $this->params['matches'] array with assigned columns and some other parameters.

		POST REQUEST:
			fields[<fieldid>     => <column position in the file>
			discounts[<fieldid>] => <column position in the file>
			...
	*/
	protected function updateMatches() {

		$sets = $this->model_tool_ka_category_import->getFieldSets();

		foreach ($sets as $sk => $sv) {

			if (empty($sv)) {
				continue;
			}
					
			$fields = $this->request->post[$sk];
			
			foreach ($sv as $f_idx => $f_data) {
			
				if ($sk == 'filter_groups') {
					$f_key = $f_data['filter_group_id'];
				} else {
					$f_key = (isset($f_data['field']) ? $f_data['field']:$f_idx);
				}
				
				if (isset($fields[$f_key])) {
					if ($fields[$f_key] > 0) {
						$matches[$sk][$f_key] = $this->params['columns'][$fields[$f_key]-1];
					} else {
						$matches[$sk][$f_key] = '';
					}
				}
			}
		}

//		var_dump($matches); die;
		$this->params['matches'] = $matches;

		return true;
	}


	public function step2() {

		$this->params['step'] = 2;
		
		$this->data['columns'] = $this->params['columns'];
		array_unshift($this->data['columns'], '');

		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {

			$this->updateMatches();

			$sets = $this->model_tool_ka_category_import->getFieldSets();
			$this->model_tool_ka_category_import->copyMatches($sets, $this->params['matches'], $this->data['columns']);
			
			$errors_found = false;
			if (empty($sets['fields']['category_id']['column']) && 
				empty($sets['fields']['category_path']['column']))
			{
				$this->addTopMessage('Key fields (category_id or category_path) are not selected.', 'E');
				$errors_found = true;
			}

			if ($errors_found) {
				return $this->redirect($this->url->link('tool/ka_category_import/step2', 'token=' . $this->session->data['token'], 'SSL'));
			}
			
			if ($this->request->post['mode'] == 'save_profile') {
			
				if (empty($this->request->post['profile_name'])) {
					$this->addTopMessage("Profile name is empty", "E");
					
				} else {
				
					// we will create new profile always on saving
					//				
					if ($this->model_tool_ka_category_import->setProfileParams(0, $this->request->post['profile_name'], $this->params)) {
						$this->addTopMessage("Profile has been saved succesfully");
					}
				}
			
				return $this->redirect($this->url->link('tool/ka_category_import/step2', 'token=' . $this->session->data['token'], 'SSL'));
			}
						
			return $this->redirect($this->url->link('tool/ka_category_import/step3', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$sets = $this->model_tool_ka_category_import->getFieldSets();
		if (!empty($sets['filter_groups'])) {
			$this->data['filters_enabled'] = true;
		} else {
			$this->data['filters_enabled'] = false;
		}

		//
		// $matches - stores array of fields and assigned columns
		// $columns - list of columns in the file
		//

		if (!empty($this->params['matches'])) {
			$this->model_tool_ka_category_import->copyMatches($sets, $this->params['matches'], $this->data['columns']);
		}

		$this->model_tool_ka_category_import->findMatches($sets, $this->data['columns']);
		$this->data['matches'] = $sets;

		$this->data['filter_page_url']    = $this->url->link('catalog/filter', 'token=' . $this->session->data['token'], 'SSL');
    	$this->data['action']             = $this->url->link('tool/ka_category_import/step2', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['back_action']        = $this->url->link('tool/ka_category_import', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['params']             = $this->params;

		$this->data['filesize']           = $this->model_tool_ka_category_import->convertToMegabyte(filesize($this->params['file']));

		$this->template = 'tool/ka_category_import.tpl';

		return $this->prepareOutput();

	}

	
	public function step3() { // step3

		$this->params['step'] = 3;

		$params = $this->params;
		$params['delimiter'] = strtr($params['delimiter'], array('c'=>',', 's'=>';', 't'=>"\t"));
		if (!$this->model_tool_ka_category_import->initImport($params)) {
			$this->addTopMessage($this->model_tool_ka_category_import->getLastError(), 'E');
			return $this->redirect($this->url->link('tool/ka_category_import/step2', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->data['done_action']        = $this->url->link('tool/ka_category_import', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['params']             = $this->params;
		$sec = $this->model_tool_ka_category_import->getSecPerCycle();
		$this->data['update_interval']    = $sec.' - ' .($sec + 5);

		// format=raw&tmpl=component - these parameters are used for compatibility with Mojoshop
		//
 		$this->data['page_url'] = str_replace('&amp;', '&', $this->url->link('tool/ka_category_import/stat', 'format=raw&tmpl=component&token=' . $this->session->data['token'], 'SSL'));
		$this->template = 'tool/ka_category_import.tpl';
		return $this->prepareOutput();
	}


	/*
		The function is called by ajax script and it outputs information in json format.

		json format:
			status - in progress, completed, error;
			...    - extra import parameters.
	*/
	public function stat() {

		if ($this->params['step'] != 3) {
			$this->addTopMessage('This script can be requested at step 3 only', 'E');
			return $this->redirect($this->url->link('tool/ka_category_import/step2', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->model_tool_ka_category_import->processImport($this);

		$stat                  = $this->model_tool_ka_category_import->getImportStat();
		$stat['messages']      = $this->model_tool_ka_category_import->getImportMessages();
		$stat['time_passed']   = $this->model_tool_ka_category_import->timeFormat(time() - $stat['started_at']);
		$stat['completion_at'] = sprintf("%.2f%%", $stat['offset'] / ($stat['filesize']/100));
	
 		$this->response->setOutput(json_encode($stat));
 		
	}


	public function showSelector($name, $data, $selected = '', $extra = '') {
		$template = new Template();
		$template->data['name']    = $name;
		$template->data['options'] = $data;
		$template->data['value']   = $selected;
		$template->data['extra']   = $extra;
		$text = $template->fetch("ka_extensions/select.tpl");
		
		echo $text;
 	}
}
?>