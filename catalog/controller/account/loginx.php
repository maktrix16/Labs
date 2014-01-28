<?php  
class ControllerAccountLoginx extends Controller { 
	public function index() {
		$this->language->load('account/login');
		
		$this->data['text_new_customer'] = $this->language->get('text_new_customer');
		$this->data['text_returning_customer'] = $this->language->get('text_returning_customer');
		$this->data['text_checkout'] = $this->language->get('text_checkout');
		$this->data['text_register'] = $this->language->get('text_register');
		
		$this->data['text_i_am_returning_customer'] = $this->language->get('text_i_am_returning_customer');
		$this->data['text_register_account'] = $this->language->get('text_register_account');
		$this->data['text_forgotten'] = $this->language->get('text_forgotten');
 
		$this->data['entry_email'] = $this->language->get('entry_email');
		$this->data['entry_password'] = $this->language->get('entry_password');
		
		$this->data['button_continue'] = $this->language->get('button_continue');
		$this->data['button_login'] = $this->language->get('button_login');		
		
		$this->data['forgotten'] = $this->url->link('account/forgotten', '', 'SSL');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/loginx.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/loginx.tpl';
		} else {
			$this->template = 'default/template/account/loginx.tpl';
		}
				
		$this->response->setOutput($this->render());
	}
	
	public function validate() {

		$this->language->load('account/login');
		$this->language->load('account/loginx');
		
		$json = array();
		if($this->request->post['email']==''){
			$json['error']['email'] =$this->language->get('error_login_blank');
		}
		else if(  !isset($this->error['email']) && !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])){
			$json['error']['email']=$this->language->get('error_login_invalid');
		}
		if($this->request->post['password']==''){
			$json['error']['password']=$this->language->get('error_password_blank');
		}
				
		if (!$json) {
			if (!$this->customer->login($this->request->post['email'], $this->request->post['password'])) {
				$json['error']['warning'] = $this->language->get('error_login');
			}
		
			$this->load->model('account/customer');
		
			$customer_info = $this->model_account_customer->getCustomerByEmail($this->request->post['email']);
			
			if ($customer_info && !$customer_info['approved']) {
				$json['error']['warning'] = $this->language->get('error_approved');
			}		
		}
		
		if (!$json) {
			unset($this->session->data['guest']);
				
			// Default Addresses
			$this->load->model('account/address');
				
			$address_info = $this->model_account_address->getAddress($this->customer->getAddressId());
									
			if ($address_info) {
				if ($this->config->get('config_tax_customer') == 'shipping') {
					$this->session->data['shipping_country_id'] = $address_info['country_id'];
					$this->session->data['shipping_zone_id'] = $address_info['zone_id'];
					$this->session->data['shipping_postcode'] = $address_info['postcode'];	
				}
				
				if ($this->config->get('config_tax_customer') == 'payment') {
					$this->session->data['payment_country_id'] = $address_info['country_id'];
					$this->session->data['payment_zone_id'] = $address_info['zone_id'];
				}
			} else {
				unset($this->session->data['shipping_country_id']);	
				unset($this->session->data['shipping_zone_id']);	
				unset($this->session->data['shipping_postcode']);
				unset($this->session->data['payment_country_id']);	
				unset($this->session->data['payment_zone_id']);	
			}					
				
			$json['redirect'] = $this->url->link('common/home', '', 'SSL');
		}
					
		$this->response->setOutput(json_encode($json));		
	}
	
public function reset() {
	$this->language->load('account/login');
		$this->language->load('account/loginx');
		$this->language->load('account/forgotten');
		$this->load->model('account/customer');
		
		$json = array();
		if($this->request->post['email']==''){
			$json['error']['email'] =$this->language->get('error_login_blank');
		}
		else if(  !isset($this->error['email']) && !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])){
			$json['error']['email']=$this->language->get('error_login_invalid');
		}
		else if (!$this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
			$json['error']['email'] = $this->language->get('error_email');
		}
		if(!$json){
			
			$this->language->load('mail/forgotten');
			
			$password = substr(sha1(uniqid(mt_rand(), true)), 0, 10);
			
			$this->model_account_customer->editPassword($this->request->post['email'], $password);
			
			$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
			
			$message  = sprintf($this->language->get('text_greeting'), $this->config->get('config_name')) . "\n\n";
			$message .= $this->language->get('text_password') . "\n\n";
			$message .= $password;

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($this->request->post['email']);
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender($this->config->get('config_name'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->send();
			
			
			$json['alert']=$this->language->get('text_success');

			$json['redirect']=$this->url->link('common/home', '', 'SSL');
		
		}

		$this->response->setOutput(json_encode($json));
	}
}
?>