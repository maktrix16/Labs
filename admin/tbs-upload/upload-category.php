<?php 

$username = "root";
$password = "money4ME";
$hostname = "localhost"; 
$dbname = "tbs";
$file_name = "test-for-category_full.csv";

//connection to the database
$dbhandle = mysql_connect($hostname, $username, $password);


if (! $dbhandle) {
	echo "<p>Unable to connect to Database!</p>\n";
}else{
	mysql_select_db($dbname);
	echo "Start to upload....<br>\n";

	$row = 1;
	if (($handle = fopen($file_name, "r")) !== FALSE) {
		while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
			$num = count($data);
			echo "<p> $num fields in line $row: <br /></p>\n";
			$row++;
			for ($c=0; $c < $num; $c++) {
				if ($c == 0) {
					$p_id = $data[$c];
				}else {
					
					if ($data[$c] <> NULL ) {
						echo $p_id .",". $data[$c];
						$sql = "INSERT INTO store_product_to_category (product_id, category_id) VALUES (".$p_id.", ".$data[$c]." )";
						$retval = mysql_query( $sql, $dbhandle );
						if(! $retval ){
							echo " << Insert Error !!!>>";
						}
						echo "<br />\n";
					}
					
				}
			}
			echo "<br />\n";
		}
		fclose($handle);
	}
}

mysqli_close($dbhandle);
?>