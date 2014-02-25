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
   
            while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {
                
		$num = count($data);
                
                if (($row==1) and (($data[0]!="product_option_value_id") || ($data[1]!="ob_sku") || ($data[2]!="ob_sku_override"))) {
                    echo "<p class='upload-error'>The uploaded file is not a correct format, please check and upload again!<br />\n";
                    print_r($data);
                    echo "</p>";
                    break;
                }
                
                if ($row != 1) {
                    
                    if ($data[0] <> NULL) {
                        
                        $sql = "UPDATE store_product_option_value SET ob_sku='".$data[1]."', ob_sku_override=".$data[2]." WHERE product_option_value_id=".$data[0];
                        $retval = mysql_query( $sql, $dbhandle );
                        $num_rows = mysql_num_rows($retval);
                        
                        
                        if(! $retval ){
                            $tot_err++;
                            echo $row." - [".$data[0]."] - [".$data[1]."] - [".$data[2]."]";
                            echo " <span class='upload-error'>[ ".$retval." - Update Error !!! ]</span><br />\n";
                        } //else{
                          //  if ($num_rows<>1){
                          //     echo $row." - [".$data[0]."] - [".$data[1]."] - [".$data[2]."] - <span class='upload-error'>".$retval."</span><br />\n";    
                          //  }
                       // }
                            
                        
                    }else {
                        
                        $tot_err++;
                        echo $row." - [".$data[0]."] - [".$data[1]."] - [".$data[2]."]";
                        echo " <span class='upload-error'>[ ".$retval." - Data Error !!! ]</span><br />\n";
                    }
                }
                
                $row++;
            }    
            
            echo "<p class='upload-error'>Total ".$tot_err."'s update error !</p>";
        
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
