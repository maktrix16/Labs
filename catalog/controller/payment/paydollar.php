<?php
class ControllerPaymentPayDollar extends Controller {
	protected function index() {
		$this->data ['button_confirm'] = $this->language->get ( 'button_confirm' );
		$this->data ['button_back'] = $this->language->get ( 'button_back' );
		
		$this->load->model ( 'checkout/order' );
		
		$order_info = $this->model_checkout_order->getOrder ( $this->session->data ['order_id'] );
		
		$this->load->library ( 'encryption' );
		
		$this->data ['action'] = $this->testPaydollarUrl;
		$this->data ['action'] = $this->config->get ( 'paydollar_payserverurl' );
		
		/******paydollar START*******/
		//连接到支付页面所需参数：
		$mpsMode = $this->config->get ( 'paydollar_mps_mode' );
		$this->data ['mpsMode'] = $mpsMode;
		
		$currency = $order_info ['currency_code'];
		if ($currency == "HKD") {
			$currCode = '344';
		} elseif ($currency == "USD") {
			$currCode = '840';
		} elseif ($currency == "SGD") {
			$currCode = '702';
		} elseif ($currency == "CNY") {
			$currCode = '156';
		} elseif ($currency == "JPY") {
			$currCode = '392';
		} elseif ($currency == "TWD") {
			$currCode = '901';
		} elseif ($currency == "AUD") {
			$currCode = '036';
		} elseif ($currency == "EUR") {
			$currCode = '978';
		} elseif ($currency == "GBP") {
			$currCode = '826';
		} elseif ($currency == "CAD") {
			$currCode = '124';
		}
		
		$this->data ['currCode'] = $currCode;
		
		$settingCurrCode = $this->config->get('paydollar_currency');
		
		$amount = $this->currency->format ( $order_info ['total'], $order_info ['currency_code'], '', FALSE );
		
		
		$this->data ['amount'] = $amount;
		
		
		if($mpsMode=='NIL' && $currCode!=$settingCurrCode){
			 $settingCurr=$this->_getCurrency($settingCurrCode);
			 $this->data ['currCode'] = $settingCurrCode;
			// $amount = $this->currency->convert ( $order_info ['total'], $order_info ['currency'], $settingCurr);
			 $this->data ['amount'] = $this->currency->format (  $order_info ['total'], $settingCurr, '', FALSE );
		}
		
		$lang = $this->session->data ['language'];
		if ($lang == "en") {
			$lang = "E";
		}
		//		$this->data['lang'] = $lang;
		$this->data ['lang'] = $this->config->get ( 'paydollar_lang' );
		
 
		
		$merchantId = $this->config->get ( 'paydollar_merchant' );
		$this->data ['merchantId'] = $merchantId;
		
		$orderRef = $this->session->data ['order_id'] . ' - ' . html_entity_decode ( $order_info ['payment_firstname'], ENT_QUOTES, 'UTF-8' ) . ' ' . html_entity_decode ( $order_info ['payment_lastname'], ENT_QUOTES, 'UTF-8' );
		$this->data ['orderRef'] = $orderRef;
		
		$payType = $this->paymentType;
		$this->data ['payType'] = $this->config->get ( 'paydollar_payment_type' );
		
		$this->data ['payMethod'] = $this->config->get ( 'paydollar_paymethod' );
		
		$failUrl = HTTPS_SERVER . 'index.php?route=checkout/failure';
		$this->data ['failUrl'] = $failUrl;
		
		$successUrl = HTTPS_SERVER . 'index.php?route=checkout/success';
		$this->data ['successUrl'] = $successUrl;
		
		if ($this->request->get ['route'] != 'checkout/guest_step_3') {
			$cancelUrl = HTTPS_SERVER . 'index.php?route=checkout/payment';
		} else {
			$cancelUrl = HTTPS_SERVER . 'index.php?route=checkout/guest_step_2';
		}
		$this->data ['cancelUrl'] = $cancelUrl;
		
		//连接至支付页面所需的任选参数：
		$remark = $order_info ['comment'];
		$this->data ['remark'] = $remark;
		
		$redirect = "";
		$this->data ['redirect'] = $redirect;
		
		$oriCountry = "";
		$this->data ['oriCountry'] = $oriCountry;
		
		$destCountry = "";
		$this->data ['destCountry'] = $destCountry;
		
		$this->data ['secureHashSecret'] = trim ( $this->config->get ( 'paydollar_security' ) );
		$secureHashSecret = trim ( $this->config->get ( 'paydollar_security' ) );
		if ($secureHashSecret) {
			require_once ('SHAPaydollarSecure.php');
			$paydollarSecure = new SHAPaydollarSecure ();
			$secureHash = $paydollarSecure->generatePaymentSecureHash ( $merchantId, $orderRef, $currCode, $amount, $payType, $secureHashSecret );
			$this->data ['secureHash'] = $secureHash;
		} else {
			$this->data ['secureHash'] = '';
		}
		
		$ref = $this->session->data ['order_id'] . ' - ' . html_entity_decode ( $order_info ['payment_firstname'], ENT_QUOTES, 'UTF-8' ) . ' ' . html_entity_decode ( $order_info ['payment_lastname'], ENT_QUOTES, 'UTF-8' );
		$this->data ['ref'] = $ref;
		/******paydollar END*******/
		
		if ($this->request->get ['route'] != 'checkout/guest_step_3') {
			$this->data ['back'] = HTTPS_SERVER . 'index.php?route=checkout/payment';
		} else {
			$this->data ['back'] = HTTPS_SERVER . 'index.php?route=checkout/guest_step_2';
		}
		
		$this->id = 'payment';
		
		if (file_exists ( DIR_TEMPLATE . $this->config->get ( 'config_template' ) . '/template/payment/paydollar.tpl' )) {
			$this->template = $this->config->get ( 'config_template' ) . '/template/payment/paydollar.tpl';
		} else {
			$this->template = 'default/template/payment/paydollar.tpl';
		}
		
		$this->render ();
	}
	
	
	private function _getCurrency($currCode){
		$currency = "USD";
		if ($currCode = '344') {
			$currency == "HKD";
		} elseif ($currCode = '840') {
			$currency == "USD";
		} elseif ($currCode = '702') {
			$currency == "SGD";
		} elseif ($currCode = '156') {
			$currency == "CNY";
		} elseif ($currCode = '392') {
			$currency == "JPY";
		} elseif ($currCode = '901') {
			$currency == "TWD";
		} elseif ($currCode = '036') {
			$currency == "AUD";
		} elseif ($currCode = '978') {
			$currency == "EUR";
		} elseif ($currCode = '826') {
			$currency == "GBP";
		} elseif ($currCode = '124') {
			$currency == "CAD";
		}
		
		return $currency;
	}
	
	public function callback() {
		//		dataFeedUrl =  HTTP_SERVER . 'index.php?route=payment/pd_standard/callback
		//		http://192.168.27.6/opencart_v1.4.8b20100802/upload/index.php?route=payment/pd_standard/callback
		//		http://192.168.27.6/opencart_v1.4.8b20100802/upload/index.php?route=payment/paydollar/callback
		
		

		require_once ('SHAPaydollarSecure.php');
		
		$successcode = $this->request->post['successcode']; //0 - 成功，1 - 失败，其他 - 错误
		$src = $this->request->post['src']; //返回银行主机状态码（次），详细请参考附录A
		$prc = $this->request->post['prc']; //返回银行主机状态码（主），详细请参考附录A
		$ref = $this->request->post['Ref'];
		$payRef = $this->request->post['PayRef']; //PayDollar的支付参考号
		$amt = $this->request->post['Amt']; //交易金额
		$cur = $this->request->post['Cur']; //交易货币种类
		$payerAuth = $this->request->post['payerAuth']; //付款人认证状态
		
		$ord = $this->request->post['Ord']; //银行参考 - 订单号
		$holder = $this->request->post['Holder']; //支付账号的持有人姓名
		$remark = $this->request->post['remark']; //备注域，用来储存商家没有显示在交易网页上的附加数据
		$authId = $this->request->post['AuthId']; //核准码
		$eci = $this->request->post['eci']; //ECI值（适用于启用3D的商家）
		$sourceIp = $this->request->post['sourceIp']; //付款人的IP地址
		$ipCountry = $this->request->post['ipCountry']; //付款人的国家（如香港）		-如果付款人所在国家在高风险国家列表中，则会被标上星号（如MY*）
		
		if (isset($this->request->post['mpsAmt'])){
			$mpsAmt = $this->request->post['mpsAmt']; //MPS交易金额				备注：只适用于MPS开启。
		}else{
			$mpsAmt='';
		}
		if (isset($this->request->post['mpsCur'])){
			$mpsCur = $this->request->post['mpsCur']; //MPS交易货币				备注：只适用于MPS开启。
		}else{
			$mpsCur='';
		}
		if (isset($this->request->post['mpsForeignAmt'])){
			$mpsForeignAmt = $this->request->post['mpsForeignAmt']; //MPS对外交易金额		备注：只适用于MPS开启。
		}else{
			$mpsForeignAmt='';
		}
		if (isset($this->request->post['mpsForeignCur'])){
			$mpsForeignCur = $this->request->post['mpsForeignCur']; //MPS对外交易货币		备注：只适用于MPS开启。
		}else{
			$mpsForeignCur='';
		}
		if (isset($this->request->post['mpsRate'])){
			$mpsRate = $this->request->post['mpsRate']; //MPS汇率：（对外/基本）	例如 USD/HKD=7.77	备注：只适用于MPS开启。
		}else{
			$mpsRate='';
		}
		$cardlssuingCountry = $this->request->post['cardIssuingCountry']; //发卡国家编码（例如HK）	-如果国家在高危国家列表中存在，会有*作为显示（如MY*）	-如果发卡国家没定义，则会显示“--”	详情请参考附录A“国家编码列表”

		$payMethod = $this->request->post['payMethod']; //付款方式（例如 VISA，Master，JCB，Diners，AMEX）

		if (isset($this->request->post['secureHash'])){
			$secureHash = $this->request->post['secureHash'];
		}
		
		echo 'OK';
		
		$secureHashSecret = trim ( $this->config->get ( 'paydollar_security' ) );
		
		if (isset ( $secureHash ) && $secureHash && $secureHashSecret) {
			
			$secureHashs = explode ( ',', $secureHash );
			
			$paydollarSecure = new SHAPaydollarSecure ();
			while ( list ( $key, $value ) = each ( $secureHashs ) ) {
				$verifyResult = $paydollarSecure->verifyPaymentDatafeed ( $src, $prc, $successcode, $ref, $payRef, $cur, $amt, $payerAuth, $secureHashSecret, $value );
				echo '$secureHash=[' . $value . ']';
				if ($verifyResult) {
					echo '<br/>verifyResult= true';
					break;
				} else {
					echo '<br/>verifyResult= false';
				}
			}
			
			if (! $verifyResult) {
				echo 'Verify Fail';
				return;
			} else {
				echo 'True';
			}
		}
		
		while ( list ( $key, $value ) = each ( $this->request->post) ) {
			echo '[' . $key . ']=[' . $value . '],';
		}
		
		$Pending = 1;
		$Processing = 2;
		$Shipped = 3;
		$Canceled = 7;
		$Complete = 5;
		$Denied = 8;
		$CanceledReversal = 9;
		$Failed = 10;
		$Refunded = 11;
		$Reversed = 12;
		$Chargeback = 13;
		
		if (isset ( $successcode ) && $successcode == "0") {
			if (isset ( $ref )) {
				$order_id = substr ( $ref, 0, strpos ( $ref, '-' ) );
				$this->load->model ( 'checkout/order' );
				$order_info = $this->model_checkout_order->getOrder ( $order_id );
				if ($order_info) {
					$this->model_checkout_order->confirm ( $order_id, $this->config->get ( 'paydollar_order_status_id' ) );
				}
			}
		} else {
			$this->model_checkout_order->confirm ( $order_id, $Failed );
		}
	}
	/*	if (isset($this->request->post['ap_securitycode']) && ($this->request->post['ap_securitycode'] == $this->config->get('paydollar_security'))) {
			$this->load->model('checkout/order');
			
			$this->model_checkout_order->confirm($this->request->post['ap_itemcode'], $this->config->get('paydollar_order_status_id'));
		}
		*/
}
?>