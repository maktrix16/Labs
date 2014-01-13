<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="content" class="popup-login">
<h3><?php echo $heading_title; ?></h3>
<div class="row-fluid">
  <div class="login-content">
    <div class="content page-login-now">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <p><?php echo $text_email; ?></p>
              <b><?php echo $entry_email; ?></b><input type="text" name="email" value="" />
              <br /><br />
              <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
        </form>
    </div>
  </div>
  <?php echo $content_bottom; ?>
</div>
</div>