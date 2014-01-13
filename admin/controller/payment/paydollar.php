<?php
class ControllerPaymentPayDollar extends Controller {
	private $error = array(); 

	public function index() {
		$this->load->language('payment/paydollar');

		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');
			
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->load->model('setting/setting');
			
			$this->model_setting_setting->editSetting('paydollar', $this->request->post);				
			
			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect(HTTPS_SERVER . 'index.php?route=extension/payment&token=' . $this->session->data['token']);
		}

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_all_zones'] = $this->language->get('text_all_zones');
		
		$this->data['entry_payserverurl'] = $this->language->get('entry_payserverurl');
		$this->data['entry_merchant'] = $this->language->get('entry_merchant');
		$this->data['entry_security'] = $this->language->get('entry_security');
		$this->data['entry_callback'] = $this->language->get('entry_callback');
		$this->data['entry_order_status'] = $this->language->get('entry_order_status');		
		$this->data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');

		$this->data['tab_general'] = $this->language->get('tab_general');

  		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

 		if (isset($this->error['payserverurl'])) {
			$this->data['error_payserverurl'] = $this->error['payserverurl'];
		} else {
			$this->data['error_payserverurl'] = '';
		}
		
 		if (isset($this->error['merchant'])) {
			$this->data['error_merchant'] = $this->error['merchant'];
		} else {
			$this->data['error_merchant'] = '';
		}

 		if (isset($this->error['security'])) {
			$this->data['error_security'] = $this->error['security'];
		} else {
			$this->data['error_security'] = '';
		}
		
  		$this->document->breadcrumbs = array();

   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=common/home&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('text_home'),
      		'separator' => FALSE
   		);

   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=extension/payment&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('text_payment'),
      		'separator' => ' :: '
   		);

   		$this->document->breadcrumbs[] = array(
       		'href'      => HTTPS_SERVER . 'index.php?route=payment/paydollar&token=' . $this->session->data['token'],
       		'text'      => $this->language->get('heading_title'),
      		'separator' => ' :: '
   		);
				
		$this->data['action'] = HTTPS_SERVER . 'index.php?route=payment/paydollar&token=' . $this->session->data['token'];
		
		$this->data['cancel'] = HTTPS_SERVER . 'index.php?route=extension/payment&token=' . $this->session->data['token'];
		
		if (isset($this->request->post['paydollar_payserverurl'])) {
			$this->data['paydollar_payserverurl'] = $this->request->post['paydollar_payserverurl'];
		} else {
			$this->data['paydollar_payserverurl'] = $this->config->get('paydollar_payserverurl');
		}
		
		if (isset($this->request->post['paydollar_merchant'])) {
			$this->data['paydollar_merchant'] = $this->request->post['paydollar_merchant'];
		} else {
			$this->data['paydollar_merchant'] = $this->config->get('paydollar_merchant');
		}

		if (isset($this->request->post['paydollar_security'])) {
			$this->data['paydollar_security'] = $this->request->post['paydollar_security'];
		} else {
			$this->data['paydollar_security'] = $this->config->get('paydollar_security');
		}
		
		$this->data['callback'] = HTTP_CATALOG . 'index.php?route=payment/paydollar/callback';
		
		if (isset($this->request->post['paydollar_order_status_id'])) {
			$this->data['paydollar_order_status_id'] = $this->request->post['paydollar_order_status_id'];
		} else {
			$this->data['paydollar_order_status_id'] = $this->config->get('paydollar_order_status_id'); 
		} 
		
		$this->load->model('localisation/order_status');
		
		$this->data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();
		
		if (isset($this->request->post['paydollar_geo_zone_id'])) {
			$this->data['paydollar_geo_zone_id'] = $this->request->post['paydollar_geo_zone_id'];
		} else {
			$this->data['paydollar_geo_zone_id'] = $this->config->get('paydollar_geo_zone_id'); 
		} 

		$this->load->model('localisation/geo_zone');
										
		$this->data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
		
		if (isset($this->request->post['paydollar_status'])) {
			$this->data['paydollar_status'] = $this->request->post['paydollar_status'];
		} else {
			$this->data['paydollar_status'] = $this->config->get('paydollar_status');
		}
		
		if (isset($this->request->post['paydollar_sort_order'])) {
			$this->data['paydollar_sort_order'] = $this->request->post['paydollar_sort_order'];
		} else {
			$this->data['paydollar_sort_order'] = $this->config->get('paydollar_sort_order');
		}
		
		$this->template = 'payment/paydollar.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		if (isset($this->request->post['paydollar_lang'])) {
			$this->data['paydollar_lang'] = $this->request->post['paydollar_lang'];
		} else {
			$this->data['paydollar_lang'] = $this->config->get('paydollar_lang'); 
		} 
		
		$this->data['paydollar_langs']= array(
			'C-Traditional Chinese',
			'E-English',
			'X-Simplified Chinese',
			'K-Korean',
			'J-Japanese',
			'T-Thai'
		);
		
		if (isset($this->request->post['paydollar_payment_type'])) {
			$this->data['paydollar_payment_type'] = $this->request->post['paydollar_payment_type'];
		} else {
			$this->data['paydollar_payment_type'] = $this->config->get('paydollar_payment_type'); 
		} 
		$this->data['paydollar_payment_types'] = array(
			'N-Normal Payment (Sales)',
			'H-Hold Payment (Authorize only)',
		);
		
		if (isset($this->request->post['paydollar_mps_mode'])) {
			$this->data['paydollar_mps_mode'] = $this->request->post['paydollar_mps_mode'];
		} else {
			$this->data['paydollar_mps_mode'] = $this->config->get('paydollar_mps_mode'); 
		} 
		$this->data['paydollar_mps_modes'] = array(
											'NIL-',
											'SCP-',
											'DCC-',
											'MCP-'
											/*'NIL-没有提供,关闭MPS（没有货币转换）',
											'SCP-开启MPS简单货币转换',
											'DCC-开启MPS动态货币转换',
											'MCP-开启MPS多货币计价'*/);
		
		if (isset($this->request->post['paydollar_paymethod'])) {
			$this->data['paydollar_paymethod'] = $this->request->post['paydollar_paymethod'];
		} else {
			$this->data['paydollar_paymethod'] = $this->config->get('paydollar_paymethod'); 
		} 
		$this->data['paydollar_paymethods'] = array('VISA','Master','Diners','JCB', 'AMEX', 'ALL',
														'PPS',
														'CC', 
														'PAYPAL',					
														'CHINAPAY',					
														'ALIPAY',					
														'TENPAY',					
														'99BILL');
		
		if (isset($this->request->post['paydollar_currency'])) {
			$this->data['paydollar_currency'] = $this->request->post['paydollar_currency'];
		} else {
			$this->data['paydollar_currency'] = $this->config->get('paydollar_currency'); 
		} 
		$this->data['paydollar_currencys'] = array(
					'344-HKD',
					'840-USD',
					'702-SGD',
					'156-CNY (RMB)',
					'392-JPY',
					'901-TWD',
					'036-AUD',
					'978-EUR',
					'826-GBP',
					'124-CAD',
		);
		
		

		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'payment/paydollar')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->request->post['paydollar_payserverurl']) {
			$this->error['payserverurl'] = $this->language->get('error_payserverurl');
		}
		
		if (!$this->request->post['paydollar_merchant']) {
			$this->error['merchant'] = $this->language->get('error_merchant');
		}
		//後臺配置paydollar的時候Security Code可以不填寫
/*
		if (!$this->request->post['paydollar_security']) {
			$this->error['security'] = $this->language->get('error_security');
		}
*/	
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}
?>