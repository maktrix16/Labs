<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<p><?php echo $text_payment_method; ?></p>
<table class="form">
  <?php foreach ($payment_methods as $payment_method) { ?>
  <tr>
    <td style="width: 1px;"><?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
   </tr>
  <tr>
  <td style="width: 1px;"></td>
   <td  style="width:650px;">
    <?php if(count($payment_methods)==1) {?>
    	<img alt="" src="image/data/visa.png"> 
   	 	<img alt="" src="image/data/mastercard.png"> 
   	 	<img alt="" src="image/data/american_express.png"> 
   	 	<img alt="" src="image/data/paypal.png"> 
    <?php } else {?>
	    <?php if($payment_method['code']=='paydollar') {?>
	   		<img alt="" src="image/data/visa.png"> 
	   	 <img alt="" src="image/data/mastercard.png"> 
	   	 <img alt="" src="image/data/china_union_pay.png"> 
	   	<?php }else if($payment_method['code']=='pp_standard'){?>
	   		<img alt="" src="image/data/paypal.png"> 
			<img alt="" src="image/data/american_express.png"> 
	   	<?php }?>
    <?php }?>
   	
    </td>
     </tr>
  
 
  <?php } ?>
</table>
<?php } ?>
<p><?php echo $comment; ?></p>
<br />
<script type="text/javascript"><!--
$('#payment-method textarea[name=\'comment\']').live('blur', function() {
	jQuery.post('index.php?route=onecheckout/payment/savecomment',$('#payment-method textarea[name=\'comment\']'));
});
//--></script> 