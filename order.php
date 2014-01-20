<?php
$dbname = 'tbs';

if (!mysql_connect('localhost', 'root', 'money4ME')) {
    echo 'Could not connect to mysql';
    exit;
}

$sql = "
SELECT store_order.date_added, store_order.order_id, name, model, quantity, price, store_order.comment, firstname, lastname, telephone, email, shipping_address_1, shipping_address_2, shipping_city, shipping_postcode, shipping_country
FROM store_order_product
LEFT JOIN store_order ON store_order_product.order_id = store_order.order_id
LEFT JOIN store_order_total ON store_order_product.order_id = store_order_total.order_id
LEFT JOIN store_order_history ON store_order_product.order_id = store_order_history.order_id
WHERE title =  'total'
";
$result = mysql_query($sql);

if (!$result) {
    echo "DB Error, could not list tables\n";
    echo 'MySQL Error: ' . mysql_error();
    exit;
}

while ($row = mysql_fetch_row($result)) {
    echo "Table: {$row[0]}\n";
}

mysql_free_result($result);
?>