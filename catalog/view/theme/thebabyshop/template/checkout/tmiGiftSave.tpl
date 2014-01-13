<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<div id="giftWrapping" style="padding:10px 20px" class="content">
  <div style="height:30px;font-size:18px;">GIFT ORDER</div>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } else { ?>
  <form name="giftform" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" >
  <img style="margin-right:20px;float:left;" src="catalog/view/theme/thebabyshop/image/giftwrap.png" />
    <p style="color:#666;display:block;font-family:Lusitana, serif;font-size:13px;width:540px;width:330px;float:right;">With our compliments, add an elegant The Baby Shop gift box and personalized message to your order at no additional charge.</p>
        <div style="clear:both;"></div>
    <p style="color:#666;display:block;font-family:Lusitana, serif;font-size:13px;width:540px;margin:0;">Add a Personal Message:</p>
  <textarea name="message" rows="8" placeholder="Please enter your personal message" style="width:100%;background:none repeat scroll 0 0 #FFF;border:1px solid #ADC9E4;padding:3px;font-size:12px;" ><?php echo $message ; ?></textarea>
  <p style="font-size:12px;color:#88A0C6;margin:0;">500 Maximum characters.</p>
  <br />
  <p style="color:#666;display:block;font-family:Lusitana, serif;font-size:13px;width:540px;margin:0;"><?php echo $text_gift_from; ?></p>
  <input type="text" name="from" style="width:100%;background:none repeat scroll 0 0 #FFF;border:1px solid #ADC9E4;padding:3px;font-size:12px;" value="<?php echo $from ?>" />
  <?php if ($error_gift_from) { ?>
    <span class="error" style="color:red;font-size:12px;"><?php echo $error_gift_from; ?></span>
  <?php } ?>
  <p style="font-size:12px;color:#88A0C6;margin:0;">80 Maximum characters.</p>
  <br />
  <br />
  <div class="buttons" style="width:100%;">
    <div class="left" style="float:left;">
        <input type="button" id="tmicancel" name="cancel" class="button" value="<?php echo $entry_cancel;?>" style="background-color:#7AAED5;color:#FFF!important;border-color:#7AAED5;border-radius:0;-webkit-border-radius:0;-moz-border-radius:0;-khtml-border-radius:0;font-family:'Lusitana',serif!important;font-weight:400;text-transform:uppercase;margin:0;padding:4px 8px 3px;border:1px solid;font-size:12px;text-align:center;cursor:pointer;display:inline-block;position:relative;-webkit-transition:all .2s ease-in 0;-moz-transition:all .2s ease-in 0;-o-transition:all .2s ease-in 0;transition:all .2s ease-in 0;"/>
    </div>
    <div class="right" style="float:right;">
      <input type="submit" value="<?php echo $button_submit; ?>" id="button-register" class="button" style="background-color:#7AAED5;color:#FFF!important;border-color:#7AAED5;border-radius:0;-webkit-border-radius:0;-moz-border-radius:0;-khtml-border-radius:0;font-family:'Lusitana',serif!important;font-weight:400;text-transform:uppercase;margin:0;padding:4px 8px 3px;border:1px solid;font-size:12px;text-align:center;cursor:pointer;display:inline-block;position:relative;-webkit-transition:all .2s ease-in 0;-moz-transition:all .2s ease-in 0;-o-transition:all .2s ease-in 0;transition:all .2s ease-in 0;"/>
    </div>
  </div>
</form>
<?php }?>
</div>
<script type="text/javascript">
 $("#tmicancel").click(function(e) {
            parent.$.colorbox.close();
            <?php if ($from == null || $from == ""){?>
            window.parent.$("#isgift").attr('checked', false);
            <?php }?>
            parent.window.location.reload(); 
	 });
 </script>