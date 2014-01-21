<?php echo $header; ?>
<div id="content" class="span13"><div class="row-fluid" id="page-wrap">
        
  <h1><?php echo $heading_title; ?></h1>

  <?php
    session_start();
    function getRealIp() {
       if (!empty($_SERVER['HTTP_CLIENT_IP'])) {  //check ip from share internet
         $ip=$_SERVER['HTTP_CLIENT_IP'];
       } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {  //to check ip is pass from proxy
         $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
       } else {
         $ip=$_SERVER['REMOTE_ADDR'];
       }
       return $ip;
    }
    function writeLog($where) {
    	$ip = getRealIp(); // Get the IP from superglobal
    	$host = gethostbyaddr($ip);    // Try to locate the host of the attack
    	$date = date("d M Y");
    	// create a logging message with php heredoc syntax
    	$logging = <<<LOG
    		\n
    		<< Start of Message >>
    		There was a hacking attempt on your form. \n 
    		Date of Attack: {$date}
    		IP-Adress: {$ip} \n
    		Host of Attacker: {$host}
    		Point of Attack: {$where}
    		<< End of Message >>
LOG;
// Awkward but LOG must be flush left
            // open log file
    		if($handle = fopen('hacklog.log', 'a')) {
                    fputs($handle, $logging);  // write the Data to file
                    fclose($handle);           // close the file
    		} else {  // if first method is not working, for example because of wrong file permissions, email the data
                    $to = 'kip@thebabyshop.com';  
                    $subject = 'HACK ATTEMPT';
                    $header = 'From: kip@thebabyshop.com';
                    if (mail($to, $subject, $logging, $header)) {
                        echo "Sent notice to admin.";
                    }
    		}
    }
    function verifyFormToken($form) {
        // check if a session is started and a token is transmitted, if not return an error
    	if(!isset($_SESSION[$form.'_token'])) { 
    		return false;
        }
    	// check if the form is sent with token in it
    	if(!isset($_POST['token'])) {
    		return false;
        }
    	// compare the tokens against each other if they are still the same
    	if ($_SESSION[$form.'_token'] !== $_POST['token']) {
    		return false;
        }
    	return true;
    }
    function generateFormToken($form) {
        // generate a token from an unique value, took from microtime, you can also use salt-values, other crypting methods...
    	$token = md5(uniqid(microtime(), true));  
    	// Write the generated token to the session variable to check it against the hidden field when the form is sent
    	$_SESSION[$form.'_token'] = $token; 
    	return $token;
    }
    // VERIFY LEGITIMACY OF TOKEN
    if (verifyFormToken('form1')) {
            $whitelist = array('token','value','gender','age','curText','toys','clothes','accessories','req-name','req-email');
            foreach ($_POST as $key=>$item) {
                    // Check if the value $key (fieldname from $_POST) can be found in the whitelisting array, if not, die with a short message to the hacker
            		if (!in_array($key, $whitelist)) {
            			writeLog('Unknown form fields');
            			die("Hack-Attempt detected. Please use only the fields in the form");
            		}
            }
                setcookie("WRCF-Name", $_POST['req-name'], time()+60*60*24*365);
                setcookie("WRCF-Email", $_POST['req-email'], time()+60*60*24*365);
            // PREPARE THE BODY OF THE MESSAGE
                $message = '<html><body>';
                $message .= '<table rules="all" style="border-color: #666;" cellpadding="10">';
                $message .= "<tr><td><strong>Name:</strong> </td><td>" . strip_tags($_POST['req-name']) . "</td></tr>";
                $message .= "<tr><td><strong>Email:</strong> </td><td>" . strip_tags($_POST['req-email']) . "</td></tr>";
                $message .= "<tr><td><strong>Value:</strong> </td><td>" . strip_tags($_POST['value']) . "</td></tr>";
                $message .= "<tr><td><strong>Gender:</strong> </td><td>" . strip_tags($_POST['gender']) . "</td></tr>";
                $message .= "<tr><td><strong>Age:</strong> </td><td>" . strip_tags($_POST['age']) . "</td></tr>";
                $message .= "<tr><td><strong>Products:</strong> </td><td>" . $_POST['toys'] . " " . $_POST['clothes'] . " " . $_POST['accessories'] . "</td></tr>";
                $curText = htmlentities($_POST['curText']);           
                if (($curText) != '') {
                    $message .= "<tr><td><strong>Additional Request:</strong> </td><td>" . $curText . "</td></tr>";
                }
                $message .= "</table>";
                $message .= "</body></html>";
                //  MAKE SURE THE "FROM" EMAIL ADDRESS DOESN'T HAVE ANY NASTY STUFF IN IT
                $pattern = "/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/i"; 
                if (preg_match($pattern, trim(strip_tags($_POST['req-email'])))) { 
                    $cleanedFrom = trim(strip_tags($_POST['req-email'])); 
                } else { 
                    return "The email address you entered was invalid. Please try again!"; 
                } 
                //   CHANGE THE BELOW VARIABLES TO YOUR NEEDS
                $to = 'info@thebabyshop.com';
                $subject = 'Gift Basket Reqest';
                $headers = "From: " . $cleanedFrom . "\r\n";
                $headers .= "Reply-To: ". strip_tags($_POST['req-email']) . "\r\n";
                $headers .= "MIME-Version: 1.0\r\n";
                $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
                if (mail($to, $subject, $message, $headers)) {
                  echo 'Your message has been sent.';
                } else {
                  echo 'There was a problem sending the email.';
                }
            die();
        } else {
   		if (!isset($_SESSION[$form.'_token'])) {
   		} else {
   			echo "Hack-Attempt detected. Got ya!.";
   			writeLog('Formtoken');
   	    }
   	}
?>
	<script type="text/javascript" src="/catalog/view/javascript/jquery.validate.js"></script>
	<script type="text/javascript" src="/catalog/view/javascript/jquery.form.js"></script>
	<script type="text/javascript" src="/catalog/view/javascript/websitechange1.js"></script>
        <style type="text/css">td {
            padding: 10px 10px 0 0;
        }</style>
<?php
   // generate a new token for the $_SESSION superglobal and put them in a hidden field
	$newToken = generateFormToken('form1');   
?>
    <form action="index.php?route=information/gift-basket" method="post" id="change-form">
        <input type="hidden" name="token" value="<?php echo $newToken; ?>">
        <table>
        <tr class="rowElemSelect">
            <td><label for="value">Gift Value:</label></td>
            <td><select name="value">
                <option value="HK$500">HK$500</option>
                <option value="HK$750">HK$750</option>
                <option value="HK$1000">HK$1000</option>
                <option value="HK$1500">HK$1500</option>
                <option value="HK$2000">HK$2000</option>
                <option value="HK$3000">HK$3000</option>
            </select></td>
        </tr>
        <tr class="rowElemSelect">
            <td><label for="gender">Gender:</label></td>
            <td><select name="gender">
                <option value="Boy">Boy</option>
                <option value="Girl">Girl</option>
                <option value="Unisex">Unisex</option>
            </select></td>
        </tr>
        <tr class="rowElemSelect">
            <td><label for="age">Age:</label></td>
            <td><select name="age">
                <option value="New Born">New Born</option>
                <option value="3 Months">3 Months</option>
                <option value="6 Months">6 Months</option>
                <option value="12 Months">12 Months</option>
                <option value="2 Years">2 Years</option>
                <option value="3 Years">3 Years</option>
                <option value="4 Years">4 Years</option>
                <option value="5 Years">5 Years</option>
                <option value="6 Years">6 Years</option>
            </select></td>
        </tr>
        <tr class="rowElem">
            <td><label for="category">Type of Products:</label></td>
            <td>
                <input type="checkbox" name="toys" value="Toys"/> Toys<br />
                <input type="checkbox" name="clothes" value="Clothes" /> Clothes<br />
                <input type="checkbox" name="accessories" value="Accessories" /> Accessories
            </td>
        </tr>
        <tr class="rowElem">
              <td><label for="curText">Additional Request:</label></td>
              <td><textarea cols="40" rows="8" name="curText" style="margin:0px;height:128px;width:390px;max-height:128px;max-width:390px;"></textarea></td>
        </tr>
        <tr class="rowElem">
            <td><label for="req-name">Your Name*:</label></td>
            <td><input type="text" id="req-name" name="req-name" class="required" minlength="2" value="<?php echo $_COOKIE["WRCF-Name"]; ?>" /></td>
        </tr>
        <tr class="rowElem">
            <td><label for="req-email">Your Email*:</label></td>
            <td><input type="text" name="req-email" class="required email" value="<?php echo $_COOKIE["WRCF-Email"]; ?>" /></td>
        </tr>
        <tr class="rowElem">
            <td><label> &nbsp; </label></td>
            <td><input type="submit" value="Submit" class="button"/></td>
        </tr>
        </table>
    </form>
    <?php echo $content_bottom; ?>
    </div>
</div>
<?php echo $footer; ?>