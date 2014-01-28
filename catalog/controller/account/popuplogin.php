<?php  
class ControllerAccountPopuplogin extends Controller { 
	public function index() {					
		
		$this->language->load('account/loginx');
		
		$this->document->addScript('catalog/view/javascript/jquery/tabs.js');
		$this->document->addScript('catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/colorbox/colorbox.css');	
	    		
		$this->data['text_login_option'] = $this->language->get('text_login_option');
		$this->data['text_register_option'] = $this->language->get('text_register_option');			
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/popuplogin.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/popuplogin.tpl';
		} else {
			$this->template = 'default/template/account/popuplogin.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/pheader'	
		);
				
		$this->response->setOutput($this->render());
  	}
	
	
}
?>