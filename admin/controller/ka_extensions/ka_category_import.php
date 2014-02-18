<?php
/*
	Project: CSV Category Import
	Author : karapuz <support@ka-station.com>

	Version: 1 ($Revision: 16 $)

*/

require_once(DIR_SYSTEM . 'engine/ka_installer.php');

class ControllerKaExtensionsKaCategoryImport extends KaInstaller {

	protected $extension_version = '1.0.1';
	protected $min_store_version = '1.5.1.1';
	protected $max_store_version = '1.5.6.9';
	protected $tables;
	protected $xml_file = "ka_category_import.xml";

	public function getTitle() {
		$this->loadLanguage('ka_extensions/ka_category_import');
		
		$str = str_replace('{{version}}', $this->extension_version, $this->language->get('extension_title'));
		return $str;
	}

	protected function init() {

 		$this->tables = array(
 		
 			'ka_category_import' => array(
				'is_new' => true,
 				'fields' => array(
 					'category_id' => array(
 						'type' => 'int(11)',
 					),
 					'token' => array(
 						'type' => 'varchar(255)',
 					),
 					'added_at' => array(
 						'type' => 'timestamp'
 					)
 				)
 			),
 			
 			'ka_ci_profiles' => array(
 				'is_new' => true,
 				'fields' => array(
  					'profile_id' => array(
  						'type' => 'int(11)',
  					),
  					'name' => array(
  						'type' => 'varchar(128)',
  					),
  					'params' => array(
  						'type' => 'mediumtext',
  					),
  				),
				'indexes' => array(
					'PRIMARY' => array(
						'query' => "ALTER TABLE `" . DB_PREFIX . "ka_ci_profiles` ADD PRIMARY KEY (`profile_id`)",
					),
					'name' => array(
						'query' => "ALTER TABLE `" . DB_PREFIX . "ka_ci_profiles` ADD INDEX (`name`)",
					),
				),
			),
		);
		
		$this->tables['ka_category_import']['query'] = "
			CREATE TABLE `" . DB_PREFIX . "ka_category_import` (
				`category_id` int(11) NOT NULL,
				`token` varchar(255) NOT NULL,
				`added_at` timestamp NOT NULL default CURRENT_TIMESTAMP,
				PRIMARY KEY  (`category_id`,`token`)
			);
		";

		$this->tables['ka_ci_profiles']['query'] = "
			CREATE TABLE `" . DB_PREFIX . "ka_ci_profiles` (
			  `profile_id` int(11) NOT NULL auto_increment,
			  `name` varchar(128) NOT NULL,
			  `params` mediumtext NOT NULL,
			  PRIMARY KEY  (`profile_id`),
			  KEY `name` (`name`)
			);
		";
		
		return true;
	}

	public function index() {
		$this->loadLanguage('ka_extensions/ka_category_import');

		$heading_title = $this->getTitle();
		$this->document->setTitle($heading_title);
		
		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			$val = max(5, $this->request->post['ka_ci_update_interval']);
			$this->request->post['ka_ci_update_interval'] = min(25, $val);
				
			$this->model_setting_setting->editSetting('ka_category_import', $this->request->post);
			$this->addTopMessage($this->language->get('Settings have been stored sucessfully.'));
			
			$this->redirect($this->url->link('extension/ka_extensions', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title']   = $heading_title;
	
		$this->data['button_save']     = $this->language->get('button_save');
		$this->data['button_cancel']   = $this->language->get('button_cancel');
		$this->data['extension_version']  = $this->extension_version;

		$this->data['ka_ci_update_interval']           = $this->config->get('ka_ci_update_interval');
		$this->data['ka_ci_status_for_new_categories'] = $this->config->get('ka_ci_status_for_new_categories');
		$this->data['ka_ci_general_separator']         = $this->config->get('ka_ci_general_separator');
				
		$this->data['breadcrumbs'] = array();
   		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);
  		$this->data['breadcrumbs'][] = array(
	 		'text'      => $this->language->get('Ka Extensions'),
			'href'      => $this->url->link('extension/ka_extensions', 'token=' . $this->session->data['token'], 'SSL'),
   			'separator' => ' :: '
 		);
		
 		$this->data['breadcrumbs'][] = array(
	 		'text'      => $heading_title,
			'href'      => $this->url->link('ka_extensions/ka_category_import', 'token=' . $this->session->data['token'], 'SSL'),
   			'separator' => ' :: '
 		);
		
		$this->data['action'] = $this->url->link('ka_extensions/ka_category_import', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('extension/ka_extensions', 'token=' . $this->session->data['token'], 'SSL');

		$this->template = 'ka_extensions/ka_category_import.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	
	protected function validate() {
	
		if (!$this->user->hasPermission('modify', 'ka_extensions/ka_category_import')) {
			$this->addTopMessage($this->language->get('error_permission'), 'E');
			
			return false;
		}

		return true;		
	}

	
	public function install() {

		if (parent::install()) {
			$this->load->model('user/user_group');

			$this->model_user_user_group->addPermission($this->user->getId(), 'access', 'extension/ka_category_import');
			$this->model_user_user_group->addPermission($this->user->getId(), 'modify', 'extension/ka_category_import');

			$this->model_user_user_group->addPermission($this->user->getId(), 'access', 'tool/ka_category_import');
			$this->model_user_user_group->addPermission($this->user->getId(), 'modify', 'tool/ka_category_import');
			
			$this->load->model('setting/setting');
			$settings = array(
				'ka_ci_update_interval'           => 10,
				'ka_ci_status_for_new_categories' => 1,
				'ka_ci_general_separator'         => ':::',
			);
			$this->model_setting_setting->editSetting('ka_import', $settings);
						
			return true;
		}
		
		return false;
	}
	

	public function uninstall() {
		return true;
	}
}
?>