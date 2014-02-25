<?php

if( $_POST["sDB"] || $_POST["tDB"] ) {
    if( $_POST["sDB"]=="tbs" and $_POST["tDB"]=="stage_tbs" ) {
        //echo "<p>Now I will export the databse from  <b>". $_POST['sDB']. "</b> to <b>". $_POST['tDB']. "</b>.</p>";
            // Config
            require_once('../config.php');
            //ENTER THE RELEVANT INFO BELOW
            $mysqlDatabaseName =$_POST["sDB"];
            $mysqlDatabaseStageName = $_POST["tDB"];
            $mysqlUserName =DB_USERNAME;
            $mysqlPassword =DB_PASSWORD;
            $mysqlHostName =DB_HOSTNAME;    
            $mysqlExportPath ="";

            $timeStamp = date('Ymd-Hi');
            $CSName = $_SERVER["SERVER_NAME"];
            
            if ($CSName == "www.thebabyshop.com") {
                $DownloadName = 'live_to_stage_'.$timeStamp.'.sql';
                $mysqlExportPath ='/var/www/html/www.thebabyshop.com/admin/tbs-upload/tmp/live_to_stage_'.$timeStamp.'.sql';                
            }elseif ($CSName == "labs.thebabyshop.com") {
                $DownloadName = 'labs_to_labstage_'.$timeStamp.'.sql';
                $mysqlExportPath ='/var/www/html/www.thebabyshop.com/admin/tbs-upload/tmp/labs_to_labstage_'.$timeStamp.'.sql';                
            }
            
            echo "<p>File Name: ". $DownloadName."</p>";
            $mysqlImportFilename = $mysqlExportPath;
            //if  ($mysqlExportPath != ""){
                //DO NOT EDIT BELOW THIS LINE
                //Export the database and output the status to the page
                $command='mysqldump --opt -h' .$mysqlHostName .' -u' .$mysqlUserName .' -p' .$mysqlPassword .' ' .$mysqlDatabaseName .' > ' .$mysqlExportPath;
                exec($command,$output=array(),$worked);
                switch($worked){
                case 0:
                    echo '<p>('.$worked.') Database <b>' .$mysqlDatabaseName .'</b> successfully exported, you can click <b><a href="http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF']).'/tmp/' .$DownloadName.'">' .$DownloadName.'</b></a> to download</p>';
                    break;
                case 1:
                    echo '<p>('.$worked.') There was a warning during the export of <b>' .$mysqlDatabaseName .'</b> to <b>' .$mysqlExportPath .'</b><p>';
                    break;
                case 2:
                    echo '<p>('.$worked.') There was an error during export. Please check your values:<br/><br/><table><tr><td>MySQL Database Name:</td><td><b>' .$mysqlDatabaseName .'</b></td></tr><tr><td>MySQL User Name:</td><td><b>' .$mysqlUserName .'</b></td></tr><tr><td>MySQL Password:</td><td><b>NOTSHOWN</b></td></tr><tr><td>MySQL Host Name:</td><td><b>' .$mysqlHostName .'</b></td></tr></table></p>';
                    break;
                }

                if ($worked==0) {
                    //DO NOT EDIT BELOW THIS LINE
                    //Export the database and output the status to the page
                    $command='mysql -h' .$mysqlHostName .' -u' .$mysqlUserName .' -p' .$mysqlPassword .' ' .$mysqlDatabaseStageName .' < ' .$mysqlImportFilename;
                    exec($command,$output=array(),$StageWorked);
                    switch($StageWorked){
                        case 0:
                            echo '<p>('.$StageWorked.') Import file <b>' .$mysqlImportFilename .'</b> successfully imported to database <b>' .$mysqlDatabaseStageName .'</b></p>';
                            break;
                        case 1:
                             echo '<p>('.$StageWorked.') There was an error during import. Please make sure the import file is saved in the same folder as this script and check your values:<br/><br/><table><tr><td>MySQL Database Name:</td><td><b>' .$mysqlDatabaseStageName .'</b></td></tr><tr><td>MySQL User Name:</td><td><b>' .$mysqlUserName .'</b></td></tr><tr><td>MySQL Password:</td><td><b>NOTSHOWN</b></td></tr><tr><td>MySQL Host Name:</td><td><b>' .$mysqlHostName .'</b></td></tr><tr><td>MySQL Import Filename:</td><td><b>' .$mysqlImportFilename .'</b></td></tr></table></p>';
                            break;
                    }
                } else {
                    echo '<p>No Database to Import.</p>'; 
                    break;
                }
          //  } else {
         //       echo "<p>Database Export Error 002, please contact your System Administrator !!</p>";
         //       break;
             
          //  }
            
    } else {
      echo"<p>You have entry a wrong database name, please check for Administrator.</p>";
    }
}
?>

<?php
/*
if( $_POST["sDB"] || $_POST["tDB"] ) {
    if( $_POST["sDB"]=="tbs" and $_POST["tDB"]=="stage_tbs" ) {
        echo "<p>Now I will export the databse from  <b>". $_POST['sDB']. "</b> to <b>". $_POST['tDB']. "</b>.</p>";
        exit();
    } else {
      echo"<p>You have entry a wrong database name, please check for Administrator.</p>";
    }
}
 */
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