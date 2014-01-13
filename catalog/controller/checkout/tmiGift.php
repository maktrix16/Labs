<?php
class ControllerCheckoutTMIGift extends Controller {
	private $error = array();
	/*public function index() {

	$this->language->load('checkout/tmiGift');

	$order_id = $this->request->get['order_id'];
	$this->data['heading_title'] = $this->language->get('heading_title');
	$this->data['text_gift_from'] = $this->language->get('text_gift_from');
	$this->data['text_gift_text'] = $this->language->get('text_gift_text');
	$this->data['entry_cancel'] = $this->language->get('entry_cancel');
	$this->data['button_edit'] = $this->language->get('button_edit');

	$this->data['giftInfo'] = array();
	$this->data['giftInfo']['message'] = $this->data['giftInfo']['form'] = "";

	if(isset($this->session->data['giftInfo'])){
	if(isset($this->session->data['giftInfo']['from'])){
	$this->data['giftInfo']['from'] = $this->session->data['giftInfo']['from'];
	}
	if(isset($this->session->data['giftInfo']['message'])){
	$this->data['giftInfo']['message'] = $this->session->data['giftInfo']['message'];
	}
	}else{
	$this->load->model('checkout/tmiGift');
	$this->data['giftInfo'] = $this->model_checkout_tmiGift->getGiftInfo($this->session->data['order_id']);
	}

	$this->data['editGift'] = $this->url->link('checkout/tmiGift/giftSave');

	if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/tmiGift.tpl')) {
	$this->template = $this->config->get('config_template') . '/template/checkout/tmiGift.tpl';
	} else {
	$this->template = 'default/template/checkout/tmiGift.tpl';
	}

	$this->response->setOutput($this->render());
	}*/

	public function index() {

		$this->language->load('checkout/tmiGift');

		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['text_gift_from'] = $this->language->get('text_gift_from');
		$this->data['text_gift_text'] = $this->language->get('text_gift_text');
		$this->data['button_submit'] = $this->language->get('button_submit');
		$this->data['entry_cancel'] = $this->language->get('entry_cancel');

		$this->data['giftInfo'] = array();
		//$this->data['giftInfo']['message'] = $this->data['giftInfo']['form'] = "";

		if(isset($this->request->post['from'])){
			$this->session->data['giftInfo']['from'] = $this->request->post['from'];
		}
		if(isset($this->request->post['message'])){
			$this->session->data['giftInfo']['message'] = $this->request->post['message'];
		}
		if(isset($this->session->data['order_id'])){
			if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()){
				$this->load->model('checkout/tmiGift');
				$this->model_checkout_tmiGift->saveGiftinfo($this->session->data['giftInfo'], $this->session->data['order_id']);
				$this->session->data['success'] = $this->language->get('text_success');
			}
		}elseif (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()){
			$this->session->data['success'] = $this->language->get('text_success');
		}

		if(isset($this->session->data['order_id'])){
			$this->load->model('checkout/tmiGift');
			$tmigiftInfo = $this->model_checkout_tmiGift->getGiftInfo($this->session->data['order_id']);
		}

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		if (isset($this->error['from'])) {
			$this->data['error_gift_from'] = $this->error['from'];
		} else {
			$this->data['error_gift_from'] = '';
		}

		if (isset($this->request->post['from'])) {
			$this->data['from'] = $this->request->post['from'];
		} elseif (!empty($tmigiftInfo)) {
			$this->data['from'] = $tmigiftInfo['gift_from'];
		}elseif (isset($this->session->data['giftInfo']['from'])) {
			$this->data['from'] = $this->session->data['giftInfo']['from'];
		}else {
			$this->data['from'] = '';
		}

		if (isset($this->request->post['message'])) {
			$this->data['message'] = $this->request->post['message'];
		} elseif (!empty($tmigiftInfo)) {
			$this->data['message'] = $tmigiftInfo['gift_text'];
		}elseif (isset($this->session->data['giftInfo']['message'])) {
			$this->data['message'] = $this->session->data['giftInfo']['message'];
		}else {
			$this->data['message'] = '';
		}

		$this->data['action'] = $this->url->link('checkout/tmiGift');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/tmiGiftSave.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/checkout/tmiGiftSave.tpl';
		} else {
			$this->template = 'default/template/checkout/tmiGiftSave.tpl';
		}

		$this->response->setOutput($this->render());
	}

	protected function validate() {

		if ((utf8_strlen($this->request->post['from']) < 1) || (utf8_strlen($this->request->post['from']) > 200)) {
			$this->error['from'] = $this->language->get('error_gift_from');
		}
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

}
?>
