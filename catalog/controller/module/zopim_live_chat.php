<?php  
/*
Version 0.3.0
*/
class ControllerModuleZopimLiveChat extends Controller {
	protected function index() {
		$this->language->load('module/zopim_live_chat');

      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$this->data['code'] = str_replace('http', 'https', html_entity_decode($this->config->get('zopim_live_chat_code')));
		} else {
			$this->data['code'] = html_entity_decode($this->config->get('zopim_live_chat_code'));
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/zopim_live_chat.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/zopim_live_chat.tpl';
		} else {
			$this->template = 'default/template/module/zopim_live_chat.tpl';
		}
		
		$this->render();
	}
}
?>