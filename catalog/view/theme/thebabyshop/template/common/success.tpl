<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="span13"><div class="row-fluid">
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $text_message; ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<script>(function(){ 'use strict'; 
ga('require', 'ecommerce', 'ecommerce.js');
ga('ecommerce:addTransaction', <?php echo $transaction ?> );
var items = <?php echo $items ?>;
for ( var i in items ) {
   ga('ecommerce:addItem', items[i] );
}
ga('ecommerce:send');
})();</script>
<?php echo $footer; ?>