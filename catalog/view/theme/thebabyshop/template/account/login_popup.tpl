<script type="text/javascript">
    purl = parent.document.URL;
    document.cookie = "purl="+"",-1;
</script>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="content" class="popup-login">
  <h3 style="margin:0;font-weight:400;text-transform:uppercase;font-family:'Lusitana',serif!important;font-size:18px;"><?php echo $heading_title; ?></h3>
  <div class="login-content" style="overflow:auto;">
        <?php echo $content_top; ?>
    <div class="login-now" style="background:#D3D9F7;margin:0 0 10px;padding:30px 15px;">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
          <p style="margin: 0 0 25px;font-size: 13px;"><?php echo $text_i_am_returning_customer; ?></p>
          <span style="float:left;"><?php echo $entry_email; ?></span>
          <input type="text" name="email" value="<?php echo $email; ?>" style="position: absolute;  left: 190px;"/>
          <br />
          <br />
          <span style="float:left;"><?php echo $entry_password; ?></span>
          <input type="password" name="password" value="<?php echo $password; ?>" style="position: absolute;  left: 190px;"/>
          <br />
          <br />
          <script type="text/javascript">
          function forgotten_popup(){jQuery.colorbox({width:"600px", height:"210px", opacity:0.4,fixed:true, href:"index.php?route=account/forgotten_popup"});}
          </script>
          <a onclick="forgotten_popup(); return false;" style="margin:0 0 0 155px;text-decoration:underline;"><?php echo $text_forgotten; ?></a><br />
          <input type="submit" value="<?php echo $button_login; ?>" class="button" style="margin:0 0 0 160px;background-color: #7AAED5;  color: #FFF!important;  border-color: #7AAED5;border-radius: 0;  -webkit-border-radius: 0;  -moz-border-radius: 0;  -khtml-border-radius: 0;  font-family: 'Lusitana',serif!important;  font-weight: 400;  text-transform: uppercase;position: absolute;  left: 190px;padding: 4px 8px 3px;font-size: 12px;  text-align: center;  cursor: pointer;-webkit-transition: all .2s ease-in 0;  -moz-transition: all .2s ease-in 0;  -o-transition: all .2s ease-in 0;  transition: all .2s ease-in 0;width: auto;  height: auto;border: none!important;"/>
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </div>
      </form>
    </div>
    <script type="text/javascript">
    function register_popup(){jQuery.colorbox({width:"600px", height:"420px", opacity:0.4,fixed:true, href:"index.php?route=account/register_popup"});}
    </script>
    <a onclick="register_popup(); return false;" style="font-size:15px;"><?php echo $text_register_account; ?></a></div>
  </div>
<script type="text/javascript">
    purl = parent.document.URL;
    document.cookie = "purl="+parent.document.URL;expires=0;
</script>
<script type="text/javascript"><!--
jQuery('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
jQuery('#formlogin').submit(function() {
    var url = '<?php echo $action; ?>_popup';
    submitDialogForm(url,'formlogin');      
    return false;
});
//--></script>