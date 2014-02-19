<?php
if( $_POST["sDB"] || $_POST["tDB"] ) {
    if( $_POST["sDB"]=="tbs" and $_POST["tDB"]=="stage_tbs" ) {
        echo "<p>Now I will export the databse from  <b>". $_POST['sDB']. "</b> to <b>". $_POST['tDB']. "</b>.</p>";
        exit();
    } else {
      echo"<p>You have entry a wrong database name, please check for Administrator.</p>";
}
}
?>
<html>
<body>
  <form action="<?php $_PHP_SELF ?>" method="POST">

  Please Enter the Source DB name: <input type="text" name="sDB" /><br />
  Please Enter the Target DB name:  <input type="text" name="tDB" />

  <input type="submit" />
  </form>
</body>
</html>