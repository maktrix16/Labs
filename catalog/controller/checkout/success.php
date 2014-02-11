<?php
class ControllerCheckoutSuccess extends Controller {
	public function index() {
		if (isset($this->session->data['order_id'])) {
			$this->cart->clear();

			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['guest']);
			unset($this->session->data['comment']);
			unset($this->session->data['order_id']);
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);
		}

		$this->language->load('checkout/success');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('common/home'),
        	'text'      => $this->language->get('text_home'),
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('checkout/cart'),
        	'text'      => $this->language->get('text_basket'),
        	'separator' => $this->language->get('text_separator')
      	);

		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('checkout/checkout', '', 'SSL'),
			'text'      => $this->language->get('text_checkout'),
			'separator' => $this->language->get('text_separator')
		);

      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('checkout/success'),
        	'text'      => $this->language->get('text_success'),
        	'separator' => $this->language->get('text_separator')
      	);

		$this->data['heading_title'] = $this->language->get('heading_title');

		if ($this->customer->isLogged()) {
    		$this->data['text_message'] = sprintf($this->language->get('text_customer'), $this->url->link('account/account', '', 'SSL'), $this->url->link('account/order', '', 'SSL'), $this->url->link('account/download', '', 'SSL'), $this->url->link('information/contact'));
		} else {
    		$this->data['text_message'] = sprintf($this->language->get('text_guest'), $this->url->link('information/contact'));
		}

    	$this->data['button_continue'] = $this->language->get('button_continue');

    	$this->data['continue'] = $this->url->link('common/home');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/success.tpl';
		} else {
			$this->template = 'default/template/common/success.tpl';
		}

		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);

		// Add data for
		$query = $this->db->query("SELECT order_id, total FROM " . DB_PREFIX . "order WHERE order_id = (SELECT MAX(order_id) FROM store_order WHERE customer_id=".$this->customer->getId().")");
		foreach ($query->rows as $result) {
			$order_id = $result['order_id'];
			$total = $result['total'];
			$this->data['transaction'] = json_encode( array( 'id' => $order_id, 'affiliation' => 'The Baby Shop', 'revenue' => $total, 'shipping' => '0', 'tax' => '0' ) );

			$query2 = $this->db->query("SELECT order_product_id, name, model, quantity, price FROM " . DB_PREFIX . "order_product WHERE order_id = $order_id");
			$items = array();
			foreach ($query2->rows as $result) {
				$items[$result['order_product_id']] = array( 'id' => $order_id, 'name'=> $result['name'], 'sku' => $result['model'], 'price' => $result['price'], 'quantity' => $result['quantity'] );
			}
			$this->data['items'] = json_encode( $items );
			break;
		}

		$this->response->setOutput($this->render());
  	}
}
?>