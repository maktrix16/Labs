<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" id="checkout">
  <input type="hidden" name="merchantId" value="<?php echo $merchantId; ?>" />
  <input type="hidden" name="amount" value="<?php echo $amount; ?>" />
  <input type="hidden" name="orderRef" value="<?php echo $orderRef; ?>" />
  <input type="hidden" name="currCode" value="<?php echo $currCode; ?>" />
  <input type="hidden" name="successUrl" value="<?php echo $successUrl; ?>" />
  <input type="hidden" name="failUrl" value="<?php echo $failUrl; ?>" />
  <input type="hidden" name="cancelUrl" value="<?php echo $cancelUrl; ?>" />
  <input type="hidden" name="payType" value="<?php echo $payType; ?>" />
  <input type="hidden" name="lang" value="<?php echo $lang; ?>" />
  <input type="hidden" name="mpsMode" value="<?php echo $mpsMode; ?>" />
  <input type="hidden" name="payMethod" value="<?php echo $payMethod; ?>" />
  <input type="hidden" name="secureHash" value="<?php echo $secureHash; ?>" />
  <input type="hidden" name="remark" value="<?php echo $remark; ?>" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  <input type="hidden" name="oriCountry" value="<?php echo $oriCountry; ?>" />
  <input type="hidden" name="destCountry" value="<?php echo $destCountry; ?>" />
</form>
<div class="buttons">
  <table>
    <tr>
      <td align="left"><a onclick="location = '<?php echo str_replace('&', '&amp;', $back); ?>'" class="button"><span><?php echo $button_back; ?></span></a></td>
      <td align="right"><a onclick="$('#checkout').submit();" class="button"><span><?php echo $button_confirm; ?></span></a></td>
    </tr>
  </table>
</div>
