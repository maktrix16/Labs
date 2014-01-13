<?php
class ModelSaleTMIGift extends Model {
	
	public function getGiftInfo($orderId) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order_gift` WHERE order_id = '" . $orderId . "'");
	
		return $query->row;
	}
	
}
?>
