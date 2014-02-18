<?php
/*
  Project: CSV Category Import
  Author : karapuz <support@ka-station.com>

  Version: 1 ($Revision: 15 $)

*/

require_once(KaVQMod::modCheck(DIR_SYSTEM . 'library/ka_import.php'));

class ModelToolKaCategoryImport extends KaImport {

	protected $logFileName    = 'ka_category_import.log';

	public function isDBPrepared() {

		$prefix = DB_PREFIX;
		if (class_exists('MijoShop')) {
		  $prefix = MijoShop::get('db')->getDbo()->replacePrefix($prefix);
		}
		
		$tbl = $prefix . "ka_ci_profiles";
		
		$res = $this->db->query("SHOW TABLES LIKE '$tbl'");
		if (empty($res->rows)) {
			return false;
		}
	
		$tbl = $prefix . "ka_category_import";
		$res = $this->db->query("SHOW TABLES LIKE '$tbl'");
		if (empty($res->rows)) {
			return false;
		}

		return true;
	}


	protected function onLoad() {
		$this->profiles_table = DB_PREFIX . 'ka_ci_profiles';
	
		parent::onLoad();
		
 		$upd = $this->config->get('ka_ci_update_interval');
 		if ($upd >= 5 && $upd <= 25) {
 			$this->sec_per_cycle = $upd;
 		}
 		
 		if (isset($this->params['stat'])) {
 			$this->stat = &$this->params['stat'];
		}
 		
		$this->load->model('tool/image');
		$this->load->model('catalog/category');
	}

	
	/*
		PARAMETERS:
			$matches - an array with field sets
				array(
					'fields' =>
									array(
										'field' => 'model',
										'required' => true,
										'copy'  => true,
										'name'  => 'Model',
										'descr' => 'A unique product code required by Opencart'
									),
									...
					'options'    =>
					'attributes' =>
					...
			 	
			$columns - an array with column names like
				arrray(
					'model' => 0
					'name' => 1
					...
				);

		RETURNS:
			true  - on success. In this case the matches array is extended with th 'column' value
							containing the column name associated with the field.

			false - error.
	*/	
	public function findMatches(&$matches, $columns) {

		$tmp = array();

		foreach ($columns as $ck => $cv) {
			$cv = mb_strtolower($cv, 'utf-8');
			$tmp[$cv] = $ck;
		}
		$columns = $tmp;

		/*
			'set name' => (
				<field id>
				<readable name for users>
				<prefix>
			);
		*/
		$sets = array(
			'fields'        => array('field', 'name', ''),
			'filter_groups' => array('filter_group_id', 'name', 'filter group:'),
		);

		foreach ($sets as $sk => $sv) {
		
			if (!isset($matches[$sk])) {
				continue;
			}
			
			foreach ($matches[$sk] as $mk => $mv) {

				if (isset($mv['column'])) {
					continue;
				}
			
				$field = mb_strtolower($mv[$sv[0]], 'utf-8');
				$name  = mb_strtolower($mv[$sv[1]], 'utf-8');

				if (isset($columns[$sv[2]. $field])) {
					$mv['column'] = $columns[$sv[2]. $field];
					
				} if (isset($columns[$sv[2]. $name])) {
					
					$mv['column'] = $columns[$sv[2]. $name];
				}
				$matches[$sk][$mk] = $mv;
			}
		}
		
		return true;
	}


	/*
		$matches - sets array
		$matches - hash array of column names			
	*/
	public function copyMatches(&$sets, $matches, $columns) {

		foreach ($columns as $ck => $cv) {
			$tmp[$cv] = $ck;
		}
		$columns = $tmp;

		foreach ($sets as $sk => $sv) {
		
			foreach ($sv as $f_idx => $f_data) {
				if ($sk == 'filter_groups') {
					$f_key = $f_data['filter_group_id'];
				} else {
					$f_key = (isset($f_data['field']) ? $f_data['field']:$f_idx);
				}
				
				if (isset($matches[$sk][$f_key])) {
					if (isset($columns[$matches[$sk][$f_key]])) {
						$sets[$sk][$f_idx]['column'] = $columns[$matches[$sk][$f_key]];
					}
				}
			}
		}
		
		return true;
	}
	

	protected function generateCategoryUrl($id, $name) {
	
		if (empty($name) || empty($id)) {
			$this->kalog->write("generateCategoryUrl:empty parameters");
			return false;
		}
	
		$url = KaUrlify::filter($name);
		if (empty($url)) {
			$this->kalog->write("generateCategoryUrl: filter returned empty string");
			return false;
		}
		
		$qry = $this->db->query("SELECT url_alias_id FROM " . DB_PREFIX . "url_alias WHERE 
			keyword='" . $this->db->escape($url) . "'");
			
		if (empty($qry->row)) {
			return $url;
		}
		
		$url = $url . "-ñ-" . $id;
		$qry = $this->db->query("SELECT url_alias_id FROM " . DB_PREFIX . "url_alias WHERE 
			keyword='" . $this->db->escape($url) . "'");

		if (empty($qry->row)) {
			return $url;
		}

		$this->kalog->write("generateCategoryUrl: cannot find suitable string");
				
		return false;
	}

	
	protected function getCategoryIdByPath($category_path) {
	
		if (empty($category_path)) {
			$this->lastError = "empty category path";
			return false;
		}
	
		$multicat_sep = $this->params['cat_separator'];
		$cats_list    = array();

		if (!empty($multicat_sep)) {
			$cats_list = explode($multicat_sep, $category_path);	
		} else {
			$cats_list = array($category_path);
		}
		
		$parent_id = 0;
		foreach ($cats_list as $cat) {
		
			$qry = $this->db->query($x = "SELECT c.category_id FROM " . DB_PREFIX . "category c INNER JOIN
				" . DB_PREFIX . "category_description cd ON c.category_id = cd.category_id
				WHERE c.parent_id = '" . (int)$parent_id . "' AND
					TRIM(CONVERT(name using utf8)) LIKE '" . $this->db->escape($cat) . "'"
			);
			
			if (empty($qry->row)) {
				$this->addImportMessage("there is no category available by specified path: $category_path");
				return false;
			}
		
			$parent_id = $qry->row['category_id'];
		}
		
		return $parent_id;
	}
	
		
	/*
		get category information from the row.

		RETURNS:
			category_id - if category exists
			false       - if category does NOT exist
			
		    lastError  - message. If it is set, the category will not be imported!
	*/
	protected function getCategoryId($data) {

		$this->lastError = '';
		
		$where = array();

		if (!empty($data['category_id'])) {
		
			$where[] = "category_id='" . $this->db->escape($data['category_id']) . "'";
			
		} else {
		
			if (isset($data['category_path'])) {

				$category_id = $this->getCategoryIdByPath($data['category_path']);
				if (empty($category_id)) {
					return false;
				}
				$where[] = "category_id ='" . $category_id . "'";
			}
		}
		
		if (empty($where)) {
			$this->lastError = 'key fields are empty';
			return false;
		}

		$sel = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "category AS c
			WHERE " . implode(" AND ", $where));

		$category_id = (isset($sel->row['category_id'])) ?$sel->row['category_id'] : false;

		return $category_id;
	}

	
	protected function rebuildCategoryPaths($category_id) {

		// Delete the path below the current one
		$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_id . "'");

		$qry = $this->db->query("SELECT parent_id FROM `" . DB_PREFIX . "category` WHERE category_id = '" . (int)$category_id . "'");
		$parent_id = $qry->row['parent_id'];
		$paths = array();
		
		if (!empty($parent_id)) {
			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$parent_id . "'");
			foreach ($query->rows as $path) {
				$paths[$path['level']] = $path['path_id'];
			}
		}
		array_push($paths, $category_id);
		
		$level = 0;
		foreach ($paths as $path) {
			$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET
				category_id = '" . (int)$category_id . "', 
				`path_id` = '" . (int)$path . "', 
				level = '" . (int)$level . "'"
			);
			
			$level++;
		}
		
		$this->model_catalog_category->repairCategories($category_id);
		
	}
	
	
	/*
		Update existing category. The category record should be created earlier for new categories.

		Returns:
			true  - success
			false - fail 
	*/
	protected function updateCategory($category_id, $data, $is_new) {

		if (empty($category_id)) {
			return false;
		}

		$category = array();

		foreach ($this->params['matches']['fields'] as $fk => $fv) {
			if (empty($fv['column']))
				continue;

			if (!empty($fv['copy'])) {
				$category[$fv['field']] = $data[$fv['field']];
			}
		}
		
		if (!empty($data['parent_id'])) {
			//check if it is available
			$qry = $this->db->query($x = "SELECT category_id FROM " . DB_PREFIX . "category WHERE
				category_id = '" . (int)$data['parent_id'] . "'"
			);
			
			if (!empty($qry->row['category_id'])) {
				$category['parent_id'] = $qry->row['category_id'];
			} else {
				$this->addImportMessage($this->marker . " parent category id does not exist" . $data['parent_id']);
			}
		}
/*		
		if ($category_id == 510) {
			var_dump($data, $category['parent_id']); die;
		}
*/
		if (!empty($data['parent_category_path']) && (empty($category['parent_id']))) {
			$parent_id = $this->getCategoryIdByPath($data['parent_category_path']);
			
			if (!empty($parent_id)) {
				$category['parent_id'] = $parent_id;
			}
		}

		// set the category status
		//
		if (isset($data['status'])) {
			$category['status'] = (in_array($data['status'], array('1','Y'))) ? 1 : 0;

		} elseif ($is_new) {  // if it is a new category
		
			$category['status'] = $this->params['status_for_new_categories'];			
		}

		if (isset($data['top'])) {
			if (strlen($data['top'])) {
				$category['top'] = (in_array($data['top'], array('1','Y'))) ? 1 : 0;
			}
		}

		if (isset($data['columns'])) {
			if (strlen($data['columns'])) {
				$category['column'] = (int)$data['columns'];
			}
		}

		
		if (isset($data['sort_order'])) {
			if (strlen($data['sort_order'])) {
				$category['sort_order'] = (int)$data['sort_order'];
			}
		}
						
		// insert the category to the selected store
		//
	    if (!$this->insertToStores('category', $category_id, $this->params['store_ids'])) {
    		$this->addImportMessage("Saving the record to stores has failed");
	    }

		// insert language-specific options
		//
		$lang = array(
			'category_id'  => $category_id,
			'language_id' => $this->params['language_id'],
		);
		
		if (isset($data['name'])) {
			$lang['name'] = trim($data['name']);
		}

		if (isset($data['description'])) 
			$lang['description'] = trim($data['description']);

		if (isset($data['meta_description']))
			$lang['meta_description'] = trim($data['meta_description']);

		if (isset($data['meta_keyword']))
			$lang['meta_keyword'] = trim($data['meta_keyword']);

		// update description or insert new one
		//
		$qry = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_description
			WHERE 
				category_id = '" . $category_id . "'
				AND language_id = '" . $this->params['language_id'] . "'"
		);
		if (!empty($qry->row)) {
			$lang = array_merge($qry->row, $lang);
		}
		$this->kadb->queryInsert('category_description', $lang, true);

		// insert an image
		//
		if (isset($data['image'])) {
			if (!empty($data['image'])) {
				$file = $this->getImageFile($data['image']);
				if ($file === false) {
					if (!empty($this->lastError)) {
						$this->addImportMessage($this->record_mark . "image cannot be saved - " . $this->lastError);
					}
				} elseif (!empty($file)) {
					$category['image'] = $file;
				}
			} else {
				$category['image'] = '';
			}
		}

		$this->kadb->queryUpdate('category', $category, "category_id='$category_id'");

		if (version_compare(VERSION, '1.5.5', '>=')) {
			$this->rebuildCategoryPaths($category_id);
		}
		
		// insert seo keyword
		//		
		if (isset($data['seo_keyword']) || $this->generate_urls) {
	
			if (!empty($data['seo_keyword'])) {
				$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . $category_id. "'");
				
			} elseif ($this->generate_urls) {
				$qry = $this->db->query("SELECT url_alias_id FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . $category_id. "'");

				if (empty($qry->row) && !empty($lang['name'])) {
					$data['seo_keyword'] = $this->generateCategoryUrl($category_id, $lang['name']);
					if (empty($data['seo_keyword'])) {
						$this->addImportMessage($this->record_mark . "Unable to generate SEO friendly URL ($lang[name])");
					}
				}
			}
			
			if (!empty($data['seo_keyword'])) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET 
					query = 'category_id=" . (int)$category_id . "', 
					keyword = '" . $this->db->escape($data['seo_keyword']) . "'"
				);
			}
		}

		// category layout
		//		
		if (isset($data['layout'])) {
			$layout_id = null;
			if (empty($data['layout'])) {
				$layout_id = 0;
			} else {
				$qry = $this->db->query('SELECT * FROM ' . DB_PREFIX . "layout WHERE
					TRIM(CONVERT(name using utf8)) LIKE '" . $this->db->escape($data['layout']) . "'"
				);
				
				if (empty($qry->row['layout_id'])) {
					$this->addImportMessage($this->record_mark . "Layout is not found $data[layout]");
				} else {
					$layout_id = $qry->row['layout_id'];
				}
			}
				
			if (!is_null($layout_id)) {
				foreach ($this->params['store_ids'] as $store_id) {
					$this->db->query("REPLACE INTO " . DB_PREFIX . "category_to_layout SET 
						category_id = '" . (int)$category_id . "', 
						store_id   = '" . (int)$store_id . "', 
						layout_id  = '" . (int)$layout_id . "'"
					);
				}
			}
		}

		return true;
	}
	

	protected function saveFilters($row, $delete_old) {

		if (empty($this->params['matches']['filter_groups'])) {
			return true;
		}

		if ($delete_old) {
			$this->db->query("DELETE FROM " . DB_PREFIX . "category_filter
				WHERE
					category_id = '$row[category_id]'"
			);
		}

		$data = array();
		foreach ($this->params['matches']['filter_groups'] as $ak => $av) {
			if (empty($av['column']))
				continue;

			$val = $row[$av['column']];

			$sep = $this->config->get('ka_ci_general_separator');
			if (!empty($sep)) {
				$filter_values = explode($sep, $val);
			} else {
				$filter_values = array($val);
			}
			
			foreach ($filter_values as $fv) {
			
				if (empty($fv)) {
					continue;
				}
						
				// find the filter_id
				//
				$filter_id = false;
				$filter_group_id = $av['filter_group_id'];
				
				$qry = $this->db->query("SELECT filter_id FROM " . DB_PREFIX . "filter_description WHERE 
					language_id = '" . $this->params['language_id'] . "' 
					AND TRIM(CONVERT(name using utf8)) LIKE '". $this->db->escape($this->db->escape($fv)) . "' 
					AND filter_group_id = '$filter_group_id'"
				);
				
				// create a new filter if required
				//
				if (empty($qry->row)) {
				
					// add a new filter value
					//
					$this->db->query("INSERT INTO " . DB_PREFIX . "filter SET 
						filter_group_id = '" . (int)$filter_group_id . "', 
						sort_order = 0"
					);
					$filter_id = $this->db->getLastId();
					
					if (empty($filter_id)) {
						$this->report('filter was not created');
						continue;
					}
						
					$rec = array(
						'filter_id'       => $filter_id,
						'filter_group_id' => $filter_group_id,
						'language_id'     => $this->params['language_id'],
						'name'            => $fv
					);
					$this->kadb->queryInsert('filter_description', $rec);

				} else {
					$filter_id = $qry->row['filter_id'];
				}
				
				// assign the filter
				//
				$this->db->query("REPLACE INTO " . DB_PREFIX . "category_filter SET 
					category_id = '" . (int)$row['category_id'] . "', 
					filter_id = '" . (int)$filter_id . "'"
				);
			}
		}

		return true;
	}

	
	public function initImport($params) {

		if (!$this->loadFile($params)) {
			$this->report("initImport: file was not loaded. Last Error:" . $this->lastError);
			return false;
		}

		// clean up the temporary table		
		//
		$this->db->query("DELETE FROM " . DB_PREFIX . "ka_category_import
			WHERE 
				token = '" . $this->session->data['token'] . "'
				OR UNIX_TIMESTAMP(NOW() - added_at)"
		);
		
		$this->params['images_dir']   = $this->strip($this->params['images_dir'], array("\\", "/"));
		if (!empty($this->params['images_dir'])) {
			$this->params['images_dir'] = $this->params['images_dir'] . '/';
		}

		// store relative path in incoming images directory 
		// important: if incoming_images_dir exists then it should ends with slash
		//
		$incoming_images_dir = '';
		if (!empty($this->params['incoming_images_dir'])) {
			$this->params['incoming_images_dir'] = $this->strip($this->params['incoming_images_dir'], array("\\", "/"));
			if (!empty($this->params['incoming_images_dir'])) {
				$incoming_images_dir = $this->params['incoming_images_dir'] . '/';
			}
		}
		$this->params['incoming_images_dir'] = $incoming_images_dir;

		// remove sets if they are not required in the current import
		//
		$sets = $this->model_tool_ka_category_import->getFieldSets();
		
		$this->copyMatches($sets, $params['matches'], $this->columns);
		
		foreach ($sets as $sk => $sv) {
			$has_column = false;
			foreach ($sv as $msk => $msv) {
				if (!empty($msv['column'])) {
					$has_column = true;
				}
			}
			
			if (!$has_column) {
				unset($sets[$sk]);
			}
		}

		$this->params['matches'] = $sets;
		$this->params['status_for_new_categories']      = $this->config->get('ka_ci_status_for_new_categories');
		$this->params['general_separator']              = str_replace(array('\r','\n'), array("\r", "\n"), $this->config->get('ka_ci_general_separator'));

		$this->params['stat'] = array(
			'filesize'         => $this->filesize_utf8($params['file']),
			'offset'           => 0,
			'started_at'       => time(),			
			'lines_processed'  => 0,
			
			'categories_created' => 0,			
			'categories_updated' => 0,
			'categories_deleted' => 0,

			'errors'           => array(),
			'status'           => 'not_started',
			'col_count'        => count($this->columns),
		);
		$this->stat = &$this->params['stat'];
		
		$this->kalog->write("Import started. Parameters: " . var_export($this->stat, true));

		return true;
	}
	
	
	/*
		This function is supposed to be called from an external object multiple times. But first you
		will need to call initImport() to define import parameters.

		Import status can be checked by requesting getImportStat() function and verifying $status
		parameter.
	*/
	public function processImport() {

		// switch error output to our stream
		//
		$old_config_error_display = $this->config->get('config_error_display');
		$this->config->set('config_error_display', false);
		$this->process();
		$this->config->set('config_error_display', $old_config_error_display);

		return;
	}

	/*
		function updates $this->stat array.
		
		Import status can be determined by 
			$this->stat['status']  - completed, in_progress, error, not_started
			$this->stat['message'] - last import fatal error
	*/
	protected function process() {

		if ($this->stat['status'] == 'completed') {
			return;
		}
		
		$max_execution_time = @ini_get('max_execution_time');
		if ($max_execution_time > 5 && $max_execution_time < $this->sec_per_cycle) {
			$this->sec_per_cycle = $max_execution_time - 3;
		}

		$started_at = time();
		if (($handle = $this->fopen_utf8($this->params['file'], $this->params['charset'])) == FALSE) {
			$this->addImportMessage("Cannot open file: $this->params[file]", 'E');
			$this->stat['status']  = 'error';
			return;
		}

		$col_count = $this->stat['col_count'];

		if ($this->stat['offset']) {
			if ($this->fseek_utf8($handle, $this->stat['offset']) == -1) {
				$this->addImportMessage("Cannot offset at $this->stat[offset] in file: $file.", 'E');
				$this->stat['status']  = 'error';
				return;
			}
		} else {
			$tmp = fgetcsv($handle, 0, $this->params['delimiter'], $this->enclosure);
			$this->stat['lines_processed'] = 1;
			if (is_null($tmp) || count($tmp) != $col_count) {
				$this->addImportMessage("File header does not match the initial file header.", 'E');
				$this->stat['status']  = 'error';
				return;
			}
		}

		$status = 'error';
		while ($row = fgetcsv($handle, 0, $this->params['delimiter'], $this->enclosure)) {
		
			$this->stat['lines_processed']++;
			$row = $this->request->clean($row);

			if (!is_array($row)) {
				$this->addImportMessage('File reading error. File ended unexpectedly.');
				continue;
			}
			
			// compare number of read values against the number of columns in the header
			//
			$row_count = count($row);
			if ($row_count < $col_count) {
				if ($row_count == 1) {
					continue;
				}

				// extend the line with empty values. MS Excel may 'optimize' a CSV file and remove
				// trailing empty cells
				//
				$tail = array_fill($row_count, $col_count - $row_count, '');
				$row = array_merge($row, $tail);
				
			} elseif ($row_count > $col_count) {
				$row = array_slice($row, 0, $col_count);
			}
				
			// delete previous records
			//
			$delete_old_param = ($this->params['update_mode'] == 'replace');

			$data    = array();
			$is_new  = false;

			$is_first_record = true;    // first occurence of the category in the file
			$delete_old      = false;   // 

			// fill in associated fields
			//
			if (empty($this->params['matches']['fields'])) {
				$this->addImportMessage("Import script lost parameters. Aborting...");
				$status = 'error';
				break;
			}

			foreach ($this->params['matches']['fields'] as $fk => $fv) {
				if (!isset($fv['column']))
					continue;

				$data[$fv['field']] = trim($row[$fv['column']]);
			}
			
			$this->record_mark = '(line:' . $this->stat['lines_processed'] . '): ';
			
			// get category id
			//
			$category_id = $this->getCategoryId($data);

			// here we have two separate ways
			//
			// 1) delete record
			// 2) go through insert/update procedure
			//
			if (!empty($data['delete_category_flag'])) {
				if (!empty($category_id)) {
					$this->model_catalog_category->deleteCategory($category_id);
					$this->stat['categories_deleted']++;
				}				
				
			} else {

				if (empty($category_id)) {

					if (!empty($this->params['skip_new_records'])) {
						continue;
					}
										
					// insert a new record if required
					//
					if (empty($data['name'])) {
						$this->addImportMessage("Category name is not specified for a new category. Line is skipped: " . $this->stat['lines_processed']);
						continue;
					}

					if (empty($data['category_id'])) {
						$this->db->query("INSERT INTO " . DB_PREFIX . 'category SET date_modified = NOW(), date_added = NOW()');
						$category_id = $this->db->getLastId();
					} else {
						$this->db->query("REPLACE INTO " . DB_PREFIX . "category SET date_modified = NOW(), date_added = NOW(), category_id = '" . $this->db->escape($data['category_id']) . "'");
						$category_id = $data['category_id'];
					}

					if (empty($category_id)) {
						$this->addImportMessage("Insert operation failed.");
						continue;
					}
					$is_new = true;
					$this->stat['categories_created']++;
				}

				// check if we already updated the category
				//
				$qry = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "ka_category_import
					WHERE category_id = '$category_id'
					AND token='" . $this->session->data['token'] . "';"
				);

				if (empty($qry->row)) {
					$rec = array(
						'category_id' => $category_id,
						'token'      => $this->session->data['token']
					);
					$this->kadb->queryInsert('ka_category_import', $rec);
				} else {
					$is_first_record = false;
				}
				
				// update category fields once
				//
				if ($is_first_record) {
					if (!$this->updateCategory($category_id, $data, $is_new)) {
						continue;
					}
					if (!$is_new) {
						$this->stat['categories_updated']++;
					}
				}

				if ($delete_old_param && $is_first_record) {
					$delete_old = true;
				}

				$row['category_id'] = $category_id;
				
				if (version_compare(VERSION, '1.5.5', '>=')) {
					$this->saveFilters($row, $delete_old);
				}
			}
			
			if (time() - $started_at > $this->sec_per_cycle) {
				$status = 'in_progress';
				break;
			}
		}

		$this->cache->delete('category');

	    if (feof($handle)) {
	    
	    	fclose($handle);

    		$this->stat['status'] = 'completed';
    		$this->stat['offset'] = $this->stat['filesize'];
	    	$this->kalog->write("Import completed. Parameters: " . var_export($this->stat, true));
	    	
	    	// rename the import file if required
	    	//
	    	if ($this->params['location'] == 'server' && !empty($this->params['rename_file'])) {
		    	$path_parts = pathinfo($this->params['file']);
	    	
		    	$dest_file  = $path_parts['dirname'] . DIRECTORY_SEPARATOR . $path_parts['filename'] 
					. '.' . 'processed_at_' . date("Ymd-His") 
					. '.' . $path_parts['extension'];
				if (!rename($this->params['file'], $dest_file)) {
					$this->addImportMessage("rename operation failed. from " .$this->params['file'] . " to " . $dest_file);
				}
			}
			
			if (!empty($this->params['disable_not_imported_categories'])) {
				$this->disableNotImportedCategories();
			}

	    } else if ($status == 'error') {
	    	fclose($handle);
			$this->stat['status'] = $status;
			
		} else {
			$this->stat['offset'] = ftell($handle);
			$this->stat['status'] = 'in_progress';
			fclose($handle);
		}

	    return;
	}

		
	/*
		Extends array with custom fields from the category table
		
	*/
	protected function addCustomCategoryFields(&$fields) {
		$default_fields = array('category_id', 'image', 'parent_id', 'top', 'column', 
			'sort_order', 'status', 'date_added', 'date_modified'
		);
		
		if (!empty($fields)) {
			foreach ($fields as $field) {
				$default_fields[] = $field['field'];
			}
		}
	
		$qry = $this->db->query('SHOW FIELDS FROM ' . DB_PREFIX . 'category');
		if (empty($qry->rows)) {
			return false;
		}
		
		foreach ($qry->rows as $row) {
			if (in_array($row['Field'], $default_fields)) {
				continue;
			}
			
			$field = array(
				'field' => $row['Field'],
				'copy'  => true,
				'name'  => $row['Field'],
				'descr' => 'Custom field. Type: ' . $row['Type']
			);
			
			$fields[] = $field;
		}
		
		return true;
	}

		
	public function getFieldSets() {

		$fields = array(
			'category_id' => array(
				'name'    => 'Category ID',
				'descr'   => 'Primary key field',
			),
			'category_path' => array(
				'name'    => 'Category Path',
				'descr'   => 'Secondary key field',
			),
			'parent_id'   => array(
				'name'    => 'Parent Category ID',
				'descr'   => ''
			),
			'parent_category_path' => array(
				'name'    => 'Parent Category Path',
				'descr'   => ''
			),
			array(
				'field'    => 'name',
				'name'     => 'Category Name',
			),
			array(
				'field'    => 'description',
				'name'     => 'Description',
				'descr'    => 'Category Description',
			),
			array(
				'field'    => 'meta_description',
				'name'     => 'Meta Description',
				'descr'    => 'Category Meta Description',
			),
			array(
				'field'    => 'meta_keyword',
				'name'     => 'Meta Keyword',
				'descr'    => 'Category Meta Keyword',
			),
			array(
				'field'    => 'seo_keyword',
				'name'     => 'SEO Keyword',
			),
			array(
				'field'    => 'image',
				'name'     => 'Image',
			),
			array(
				'field'    => 'top',
				'name'     => 'Top',
				'descr'    => 'Display in the top menu bar. For root categories only.'
			),
			array(
				'field'    => 'columns',
				'name'     => 'Columns',
				'descr'    => 'Number of columns to use for the bottom categories. For root categories only.'
			),
			array(
				'field'    => 'sort_order',
				'name'     => 'Sort Order',
			),
			array(
				'field'    => 'status',
				'name'     => 'Status',
			),
			array(
				'field'    => 'layout',
				'name'     => 'Layout',
			),
		);

		$fields[] = array(
			'field' => 'delete_category_flag',
			'name'  => '"Delete Category" Flag',
			'descr' => 'Any non-empty value will be treated as positive confirmation, be careful',
		);

		foreach ($fields as $fk => $fv) {
			if (!isset($fv['field'])) {
				$fields[$fk]['field'] = $fk;
			}
		}
		
		$this->addCustomCategoryFields($fields);
		
		$sets = array(
			'fields' => $fields,
		);
		
		if (version_compare(VERSION, '1.5.5', '>=')) {
			$this->load->model('catalog/filter');
			$sets['filter_groups'] = $this->model_catalog_filter->getFilterGroups();
		}
		
		return $sets;
	}

	
/*
	Do not uncomment these functions!

	Task Scheduler API support will be implemented later. 

	*
	public function requestSchedulerOperations() {
	
		if (!$this->isInstalled()) {
			return false;
		}
	
		$ret = array(
			'import' => 'Import'
		);
	
		return $ret;
	}
	
	
	public function requestSchedulerOperationParams($operation) {
	
		$ret = array(
			'profile' => array(
				'title' => 'Import Profile',
				'type'  => 'select',
				'required' => true,
			),
		);

		$ret['profile']['options'] = $this->getProfiles();

		return $ret;
	}

			
	protected function initSchedulerImport($profile_id) {
	
		/* profile parameters:
		
				'charset'             => 'UTF-8'
				'cat_separator'       => '///',
				'delimiter'           => 's',
				'store_id'            => array(0),
				'sort_by'             => 'name',
				'image_path'          => 'path',
				'category_ids'        => array(),
				...
		*
		$params = $this->getProfileParams($profile_id);
		
		if (empty($params)) {
			$this->lastError = "Profile not found";
			return false;
		}
		
		$params['delimiter'] = strtr($params['delimiter'], array('c'=>',', 's'=>';', 't'=>"\t"));
		
		if (!$this->initImport($params)) {
			return false;
		}

		return true;
	}


	/*
		return a code:			
			finished      - operation is complete
			not_finished  - still working (additional calls needed)
	*
	public function runSchedulerOperation($operation, $params, &$stat) {

		$ret = 'finished';

		if (!$this->isInstalled()) {
			return $ret;
		}
		
		if (version_compare(VERSION, '1.5.5', '>=')) {
			$this->language->load('tool/ka_import');
		} else {
			$this->load->language('tool/ka_import');
		}

		if ($operation != 'import') {
			$stats['error'] = "Unsupported operation code";
			return $ret;
		}

		if (empty($params['profile'])) {
			$stats['error'] = "Unsupported parameters were passed to the module.";
			return $ret;
		}

		if (empty($this->params) || empty($stat)) {
			if (!$this->initSchedulerImport($params['profile'])) {
				$this->report('initSchedulerImport request was failed');
				return $ret;
			}
		}

		$this->processImport();
		
		$stat['Lines Processed']    = $this->stat['lines_processed'];
		$stat['Categories Created']   = $this->stat['products_created'];		
		$stat['Categories Updated']   = $this->stat['products_updated'];
		$stat['Categories Deleted']   = $this->stat['products_deleted'];
		
		$stat['Time Passed']        = $this->timeFormat(time() - $this->stat['started_at']);
		$stat['File Size']          = $this->convertToMegabyte($this->stat['filesize']);
		
		if ($this->stat['status'] == 'in_progress') {
			$stat['Completion At'] = sprintf("%.2f%%", $this->stat['offset'] / ($this->stat['filesize']/100));
			$ret = 'not_finished';
			
		} elseif ($this->stat['status'] == 'completed') {
			$stat['Completion At'] = sprintf("%.2f%%", 100);
			$ret = 'finished';
			$this->params = null;
			$this->stat   = null;
		}

		return $ret;
	}
*/	
}

?>