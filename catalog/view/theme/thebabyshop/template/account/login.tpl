<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="span13"><div class="row-fluid">
  <div class="login-content">
    <div class="left">
      <h2><?php echo $text_returning_customer; ?></h2>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
          <?php echo $content_top; ?>
          <div class="page-login-now">
            <p><?php echo $text_i_am_returning_customer; ?></p>
            <b><?php echo $entry_email; ?></b><input type="text" name="email" value="<?php echo $email; ?>" />
            <br />
            <br />
            <b><?php echo $entry_password; ?></b><input type="password" name="password" value="<?php echo $password; ?>" />
            <br />
            <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
            <br />
            <input type="submit" value="<?php echo $button_login; ?>" class="button" />
            <?php if ($redirect) { ?>
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
            <?php } ?>
          </div>
        </div>
      </form>
    </div>
    <div class="right">
      <h2><?php echo $text_new_customer; ?></h2>
      <div class="content">
        <div class="page-login-now">
            <a href="<?php echo $register; ?>"><?php echo $text_register_account; ?></a>
        </div>
      </div>
    </div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script></div>
<?php echo $footer; ?>