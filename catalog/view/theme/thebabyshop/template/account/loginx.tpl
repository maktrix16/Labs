<!--
<div class="left">
  <h2><?php echo $text_new_customer; ?></h2>
  
  <br />
  <p><?php echo $text_register_account; ?></p>
  <input type="button" value="<?php echo $button_continue; ?>" id="button-account" class="button" />
  <br />
  <br />
</div>
-->
<div id="login" style="width:100%;" > <!--  class="right" class="popup-login" -->
  <h2><?php echo $heading_title; //$text_returning_customer; ?></h2>
  <?php //echo $text_i_am_returning_customer; ?>
  
  <div style="height:25px; alignment-adjust: middle;">
      <div style="float:left; width:100px; margin-right: 10px; text-align: left;"><?php echo $entry_email; ?><div>
      <div style="float:left; width:400px; margin-right: 10px; text-align: left;"><input type="text" name="email" value="" /></div>
  </div>
<div style="clear:both";></div>
   <div style="height:25px; alignment-adjust: middle;">
      <div style="float:left; width:100px; margin-right: 10px; text-align: left;"><?php echo $entry_password; ?></div>
      <div style="float:left; width:400px; margin-right: 10px; text-align: left;"><input type="password" name="password" value="" /></div>
  </div>
   

  <input type="button" value="<?php echo $button_login; ?>" id="button-login" class="button" />  <input type="button" value="Reset Password" id="reset" class="button"/><br />
  <br />
  <a href='#tab-Register'><?php echo $text_register_account; ?></a>
   
  <br />
  <input type="button" value="<?php echo $button_continue; ?>" id="button-account" class="button" />
</div>