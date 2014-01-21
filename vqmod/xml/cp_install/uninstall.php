<html>
<?php
$secret = $_POST["secret"];
?>

<?php
if ($secret == 548){
include $_SERVER['DOCUMENT_ROOT'] . "/config.php";
mysql_connect(DB_HOSTNAME, DB_USRNAME, DB_PASSWORD);
mysql_select_db(DB_DATABASE);
$query = ("DROP TABLE " . DB_PREFIX . "product_combi");
mysql_query($query);
$query2 = ("ALTER TABLE `" . DB_PREFIX . "product` DROP `is_combi`");
mysql_query($query2);
?>
<p>Database updated. You are now unable to use the combined products mod.</p>
<?php
}
?>

<?php
if ($secret != 548){
?>
<p>Type in the uninstall code below:</br>

<form method="post" action="<?php echo $PHP_SELF;?>">
<input type="text" name="secret" />
<input type="submit" value="UNINSTALL">
</form>
</br>
Please note that this action CAN NOT BE UNDONE. Run this script only if you intend to remove the combined products modification.</br>
</br>
The products you have built from components will still exist, but all information regarding their components will be gone and the combined product modification will not work anymore.</p>
<p>Note that you should only run this script if you have already removed the combined products xml from your vqmod directory. Otherwise your opencart WILL GIVE ERRORS.

<?php
if (isset($_POST['secret'])) {
?>
<p style="color: red;">You have entered the wrong code, please try again.</p>
<?php
}
}
?>

</body>
</html>