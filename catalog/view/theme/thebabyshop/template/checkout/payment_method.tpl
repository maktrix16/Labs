<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<table class="radio">
  <?php foreach ($payment_methods as $payment_method) { ?>
  <tr class="highlight">
    <td><?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
      <?php } ?></td>
    <td ><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
    <td style="width:650px;">
    <?php if(count($payment_methods)==1) { ?>
    	<img alt="" src="image/data/visa.png"> 
   	 	<img alt="" src="image/data/mastercard.png"> 
   	 	<img alt="" src="image/data/american_express.png"> 
   	 	<img alt="" src="image/data/paypal.png"> 
    <?php } else { ?>
	    <?php if($payment_method['code']=='paydollar') { ?>
	   		<img alt="" src="image/data/visa.png"> 
	   	 <img alt="" src="image/data/mastercard.png"> 
	   	 <img alt="" src="image/data/china_union_pay.png"> 
	   	<?php }else if($payment_method['code']=='pp_standard'){ ?>
	   		<img alt="" src="image/data/paypal.png"> 
			<img alt="" src="image/data/american_express.png"> 
	   	<?php }?>
    <?php }?>
   	
    </td>
  </tr>
  <?php } ?>
</table>
<br />
<?php } ?>
<?php if ($text_agree) { ?>
<div class="buttons">
  <div class="left">
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" />
    <?php } ?>
    <?php echo $text_agree; ?>
  </div>
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
  </div>
</div>
<?php } else { ?>
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
  </div>
</div>
<?php } ?>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script> 