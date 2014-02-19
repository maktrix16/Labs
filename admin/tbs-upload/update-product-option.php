<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product Option Value Uploader</title>
<style type="text/css">
<!--

-->
</style>
<link href="tbs-upload-style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="container">
    <div class="header"><h1>TheBabyShop.com - Product Option Value Uploader</h1>
  </div>
  <div class="content">
<form enctype="multipart/form-data" action="update-product-option.php" method="POST">
  <table  border="0" cellpadding="5">
    <tr>
      <td>Enrty the DB name</td>
      <td><input type="text" name="tDB" id="tDB"></td>
    </tr>
    <tr>
      <td><input type="hidden" name="MAX_FILE_SIZE" value="5120000" />
Select CSV File to upload</td>
      <td><input name="userfile" type="file" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" value=" Upload File " /></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
    <p>&nbsp;</p>
</form>
    <hr></hr>
<?php

if ($_POST["tDB"]=='tbs')  {
    
    $uploaddir = '/var/www/html/tmp/csv/';
    $uploadfile = $uploaddir . basename($_FILES['userfile']['name']);
    
    echo "<div>"; 
    
    if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
        
        //echo "<p>File is valid, and was successfully uploaded.</p>\n";
        echo "<h3>Message</h3>";
        require_once('../config.php');
        //ENTER THE RELEVANT INFO BELOW
        $mysqlDatabaseName =$_POST["tDB"];
        $mysqlUserName =DB_USERNAME;
        $mysqlPassword =DB_PASSWORD;
        $mysqlHostName =DB_HOSTNAME;    
        $mysqlImportFilename = $uploaddir . basename($_FILES['userfile']['name']);
        $dbhandle = mysql_connect($mysqlHostName, $mysqlUserName, $mysqlPassword);
        mysql_select_db($mysqlDatabaseName);
        $row = 1;
        $tot_err =0;
	if (($handle = fopen($mysqlImportFilename, "r")) !== FALSE) {
            
        //    if ($data[0][0]!="product_option_value_id") {           }
           
            while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {
                
		$num = count($data);
                
                if (($row==1) and (($data[0]!="product_option_value_id") || ($data[1]!="ob_sku") || ($data[2]!="ob_sku_override"))) {
                    echo "<p class='upload-error'>The uploaded file is not a correct format, please check and upload again!<br />\n";
                    print_r($data);
                    echo "</p>";
                    break;
                }
                
	//	echo "$num fields in line $row : ";
        //        print_r($data);
        //        echo "<br />\n";
		
                if ($row != 1) {
                    
                    if ($data[0] <> NULL) {
                        $sql = "UPDATE store_product_option_value SET ob_sku='".$data[1]."', ob_sku_override=".$data[2]." WHERE product_option_value_id=".$data[0];
                        // $sql = "INSERT INTO store_product_to_category (product_id, category_id) VALUES (".$p_id.", ".$data[$c]." )";
                        $retval = mysql_query( $sql, $dbhandle );
                        if(! $retval ){
                            $tot_err++;
                            echo $row." - [".$data[0]."] - [".$data[1]."] - [".$data[2]."]";
                            echo " <span class='upload-error'>[ Update Error !!! ]</span><br />\n";
                        }
                    }else {
                        $tot_err++;
                        echo $row." - [".$data[0]."] - [".$data[1]."] - [".$data[2]."]";
                        echo " <span class='upload-error'>[ Data Error !!! ]</span><br />\n";
                    }
                }
                
/*		for ($c=0; $c < $num; $c++) {
                    
                     if ($c == 0) {
			$p_id = $data[$c];
                        
                    }else {
                       if ($data[$c] <> NULL ) {
                            echo $p_id .",". $data[$c] . " - ";
                           echo $row." - [".$data[0]."] - [".$data[1]."] - [".$data[2]."]";
                   //         $sql = "UPDATE store_product_option_value SET ob_sku=value, ob_override=value2 WHERE product_option_value_id=some_value";
                           // $sql = "INSERT INTO store_product_to_category (product_id, category_id) VALUES (".$p_id.", ".$data[$c]." )";
                   //         $retval = mysql_query( $sql, $dbhandle );
                   //        if(! $retval ){
                   //             echo " <span class='upload-error'>[ Update Error !!! ]</span>";
                    //        }
			echo "<br />\n";
			}
                     
                    }
		}
                echo "<br />\n";*/
                $row++;
            }    
            echo "<p class='upload-error'>Total ".$tot_err."'s update error !</p>";
        /*    file = fopen($mysqlImportFilename, 'r');
            while (($line = fgetcsv($file)) !== FALSE) {
                //$line is an array of the csv elements
                print_r($line);
                echo "<br />\n";  
            }*/
        
        fclose($handle);    
        }
        
        mysqli_close($dbhandle);
        
        
        
    }else{
        echo "";
        echo "<div><h2>Message</h2>\n<p class='upload-error'>Upload failed</p>\n<pre>\nHere is some more debugging info:<br />\n";
        print_r($_FILES);
        echo "</pre>\n</div>\n";
    }
    echo "</div>";
}else{
    echo"<p class='upload-error'>Please entry the correct DB name and select the CSV file ready to import.</p>";
}

?></div>
  <div class="footer">
    <p>&nbsp;</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
