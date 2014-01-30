<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<div id="content" class="span13"><div class="row-fluid">
<?php echo $content_top; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>
<?php } ?>
<h3><?php echo $heading_title; ?></h3>
<div class="check-out">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div class="cart-info">
    <table>
      <thead>
        <tr>
          <td class="image"><?php echo $column_image; ?></td>
          <td class="name"><?php echo $column_name; ?></td>
          <td class="price"><?php echo $column_price; ?></td>
          <td class="quantity"><?php echo $column_quantity; ?></td>
          <td class="total"><?php echo $column_total; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if (!$product['stock']) { ?>
            <span class="stock">***</span>
            <?php } ?>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
              <?php } ?>
            </div>
            <?php if ($product['reward']) { ?>
            <small><?php echo $product['reward']; ?></small>
            <?php } ?></td>
          <td class="price"><?php echo $product['price']; ?></td>
          <td class="quantity"><input style="width:30px;" type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
            &nbsp;
            <input type="image" src="catalog/view/theme/thebabyshop/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" /></td>
          <td class="total"><?php echo $product['total']; ?>&nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/thebabyshop/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $vouchers) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $vouchers['description']; ?></td>
          <td class="price"><?php echo $vouchers['amount']; ?></td>
          <td class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" />&nbsp;<a href="<?php echo $vouchers['remove']; ?>"><img src="catalog/view/theme/thebabyshop/image/remove.png" alt="<?php echo $text_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
          <td class="total"><?php echo $vouchers['amount']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
</form>
  <div class="giftwrap-op">
    <div class="cart-module">
    </div>
  </div>
<div class="cart-total">
    <div id="coupon" class="content">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <?php echo $entry_coupon; ?>&nbsp;
          <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
          <input type="hidden" name="next" value="coupon" />
          &nbsp;
          <input type="submit" value="<?php echo $button_coupon; ?>" class="button" />
        </form>
    </div>
    <table id="total">
    <?php foreach ($totals as $total) { ?>
    <tr>
      <td colspan="5" class="right"><?php echo $total['title']; ?>:</td>
      <td class="right"><?php echo $total['text']; ?></td>
    </tr>
    <?php } ?>
    </table>
</div>
<div class="check-out buttons">
    <?php if($logged){ ?>
    <div class="right"><a href="<?php echo $checkout; ?>" class="button"><?php echo $button_checkout; ?></a></div>
    <?php }else { ?>
    <!--[if !IE]><!-->
    <script type="text/javascript">
     //   function login_popup(){jQuery.colorbox({width:"500px",height:"290px",opacity:0.4,fixed:true,href:"index.php?route=account/login_popup"});return false;}
        function login_popup(){jQuery.colorbox({width:"600px",height:"400px",opacity:0.4,fixed:true,href:"index.php?route=account/popuplogin#tab-Login"});return false;}
    </script>
    <!--><![endif]-->
    <div class="right"><a onclick="login_popup(); return false;" href="login" class="button"><?php echo $button_checkout; ?></a></div>
    <?php } ?>
    <div class="left"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_shopping; ?></a></div>
</div>
</div>
<?php echo $content_bottom; ?>
</div>
</div>


<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/thebabyshop/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/thebabyshop/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>