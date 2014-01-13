<?php echo $header; ?>
<div class="all-white">
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="span13"><div class="row-fluid"><?php echo $content_top; ?>
  <h2><?php echo $text_address_book; ?></h2>
  <?php foreach ($addresses as $result) { ?>
  <div class="content">
    <table style="width: 100%;">
      <tr>
        <td><?php echo $result['address']; ?></td>
        <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="button"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a></td>
      </tr>
    </table>
  </div>
  <?php } ?>
  <div class="buttons">
    
    <div class="right"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_new_address; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div></div>
<?php echo $footer; ?>