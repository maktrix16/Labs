<?php 

$username = "root";
$password = "money4ME";
$hostname = "localhost"; 
$dbname = "tbs";
$file_name = "brand-PD-PZ-LE-TN-SP_filter.csv";

//connection to the database
$dbhandle = mysql_connect($hostname, $username, $password);


if (! $dbhandle) {
	echo "<p>Unable to connect to Database!</p>\n";
}else{
	mysql_select_db($dbname);
	echo "Start to upload Product Filter....<br>\n";


// Remove reocrd by Product_id from CSV
	$rowD = 1;
	echo "<p>Product ID ";
	if (($handleD = fopen($file_name, "r")) !== FALSE) {
		while (($dataD = fgetcsv($handleD, 1000, ",")) !== FALSE) {
			$numD = count($dataD);
			// echo " $numD fields in line $rowD: <br />\n";
			$rowD++;
			for ($cD=0; $cD < $numD; $cD++) {
				if ($cD == 0) {
					$p_idD = $dataD[$cD];
					echo $p_idD.", ";
					$sql = "DELETE FROM tbs.store_product_filter where product_id = '".$p_idD."' ";
					$retval = mysql_query( $sql, $dbhandle );
					if(! $retval ){
						echo " << Record remove Error !!!>>";
					}
				}
			}
		}
		fclose($handleD);
	}
	echo " are DELETED !!!</p>";

// Upload record from CSV	
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
						$sql = "INSERT INTO store_product_filter (product_id, filter_id) VALUES (".$p_id.", ".$data[$c]." )";
						$retval = mysql_query( $sql, $dbhandle );
						if(! $retval ){
							echo " << Insert Filter Error !!!>>";
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