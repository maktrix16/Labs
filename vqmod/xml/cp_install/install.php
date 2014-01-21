<html>
<body>
<?php
include $_SERVER['DOCUMENT_ROOT'] . "/config.php";
mysql_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD);
mysql_select_db(DB_DATABASE);
$query = ("CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "product_combi(product_id INT, component_id INT, component_quantity INT) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci");
mysql_query($query);
$query2 = ("ALTER TABLE `" . DB_PREFIX . "product` ADD `is_combi` INT");
mysql_query($query2);
$query3 = ("ALTER TABLE `" . DB_PREFIX . "product_combi` ADD PRIMARY KEY (`product_id`, `component_id`)");
mysql_query($query3);
echo "Database updated. Your Opencart installation is now ready to create combined products.";
?>
</body>
</html>