<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content">
  <h1><?php echo $heading_title; ?></h1>
  <form id="formlogin" action="<?php echo $action; ?>_popup" method="post" enctype="multipart/form-data">
    <p><?php echo $text_email; ?></p>
    <h2><?php echo $text_your_email; ?></h2>
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a onclick="dialogLoading();createDialog('<?php echo $back; ?>_popup'); return false;" href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
      </div>
    </div>
  </form>
</div>

<script type="text/javascript"><!--
	jQuery('#formlogin').submit(function() {
    	var url = '<?php echo $action; ?>_popup';
    	submitDialogForm(url,'formlogin');      
    	return false;
	});
//--></script> 
