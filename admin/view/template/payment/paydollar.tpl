<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="content">
<div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
      	 <tr>
          <td><span class="required">*</span> <?php echo $entry_merchant; ?></td>
          <td><input type="text" name="paydollar_merchant" value="<?php echo $paydollar_merchant; ?>" />
            <?php if ($error_merchant) { ?>
            <span class="error"><?php echo $error_merchant; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><!-- <span class="required">*</span> --> <?php echo $entry_security; ?></td>
          <td><input type="text" name="paydollar_security" value="<?php echo $paydollar_security; ?>"  size="80"/>
      <!--       <?php if ($error_security) { ?>
            <span class="error"><?php echo $error_security; ?></span>
            <?php } ?> --></td>
        </tr>
      	<tr>
          <td><span class="required">*</span> Gateway URL:</td>
          <td><input type="text" name="paydollar_payserverurl" value="<?php echo $paydollar_payserverurl; ?>" size="80"/>
            <?php if ($error_payserverurl) { ?>
            <span class="error"><?php echo $error_payserverurl; ?></span>
            <?php } ?></td>
        </tr>

        <tr>
          <td>MPS Mode:</td>
          <td>
            <select name="paydollar_mps_mode">
              <?php foreach ($paydollar_mps_modes as $temp) { ?>
              <?php if (($mps_mode=substr($temp,0,3)) == $paydollar_mps_mode) { ?>
              <option value="<?php echo $mps_mode; ?>" selected="selected"><?php echo $temp; ?></option>
              <?php } else { ?>
              <option value="<?php echo $mps_mode; ?>"><?php echo $temp; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
       
        <tr>
          <td>Payment Type:</td>
          <td>
            <select name="paydollar_payment_type">
              <?php foreach ($paydollar_payment_types as $temp) { ?>
              <?php if (($payment_type=substr($temp,0,1)) == $paydollar_payment_type) { ?>
              <option value="<?php echo $payment_type; ?>" selected="selected"><?php echo $temp; ?></option>
              <?php } else { ?>
              <option value="<?php echo $payment_type; ?>"><?php echo $temp; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
       <!--  --> 
         <tr>
          <td>Payment Method:</td>
          <td>
            <select name="paydollar_paymethod">
              <?php foreach ($paydollar_paymethods as $temp) { ?>
              <?php if ($temp == $paydollar_paymethod) { ?>
              <option value="<?php echo $temp; ?>" selected="selected"><?php echo $temp; ?></option>
              <?php } else { ?>
              <option value="<?php echo $temp; ?>"><?php echo $temp; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td>Transaction Currency:</td>
          <td>
            <select name="paydollar_currency">
              <?php foreach ($paydollar_currencys as $temp) { ?>
              <?php if (($currency_code=substr($temp,0,3)) == $paydollar_currency) { ?>
              <option value="<?php echo $currency_code; ?>" selected="selected"><?php echo $temp; ?></option>
              <?php } else { ?>
              <option value="<?php echo $currency_code	; ?>"><?php echo $temp; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>


          <td>Gateway Language:</td>
          <td>
            <select name="paydollar_lang">
              <?php foreach ($paydollar_langs as $lang) { ?>
              <?php if (($lan = substr($lang,0,1)) == $paydollar_lang) { ?>
              <option value="<?php echo $lan; ?>" selected="selected"><?php echo $lang; ?></option>
              <?php } else { ?>
              <option value="<?php echo $lan; ?>"><?php echo $lang; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
  <!--  <tr>
          <td><?php echo $entry_callback; ?></td>
          <td><textarea cols="40" rows="5"><?php echo $callback; ?></textarea></td>
        </tr>
 -->    <tr>
          <td><?php echo $entry_order_status; ?></td>
          <td><select name="paydollar_order_status_id">
              <?php foreach ($order_statuses as $order_status) { ?>
              <?php if ($order_status['order_status_id'] == $paydollar_order_status_id) { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_geo_zone; ?></td>
          <td><select name="paydollar_geo_zone_id">
              <option value="0"><?php echo $text_all_zones; ?></option>
              <?php foreach ($geo_zones as $geo_zone) { ?>
              <?php if ($geo_zone['geo_zone_id'] == $paydollar_geo_zone_id) { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_status; ?></td>
          <td><select name="paydollar_status">
              <?php if ($paydollar_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_sort_order; ?></td>
          <td><input type="text" name="paydollar_sort_order" value="<?php echo $paydollar_sort_order; ?>" size="1" /></td>
        </tr>
      </table>
    </form>
  </div>
</div>
</div>
<?php echo $footer; ?>