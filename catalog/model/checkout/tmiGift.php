<?php

class ModelCheckoutTMIGift extends Model {
	public function saveGiftinfo($data, $orderId) {
		$sql = sprintf("INSERT INTO `" . DB_PREFIX . "order_gift` (`gift_from`, `gift_text`, `order_id`) VALUES ('%s', '%s','%s') ON DUPLICATE KEY UPDATE `gift_from` = '%s', `gift_text` = '%s' ", $this->db->escape($data['from']), $this->db->escape($data['message']), $orderId, $this->db->escape($data['from']), $this->db->escape($data['message']));
		$this->db->query($sql);
		return $this->db->getLastId();
		
	}
	
	public function getGiftInfo($orderId) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order_gift` WHERE order_id = '" . $orderId . "'");
	
		return $query->row;
	}
	
}
?>
