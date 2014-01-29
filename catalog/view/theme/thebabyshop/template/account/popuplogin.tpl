<?php echo $pheader; ?>
<div > <!-- id="container" -->

<div style="width:600px;" > <!-- id="content" -->
  
  
   <div id="tabs" class="htabs">
        <a href="#tab-Login">Login</a>
        <a href="#tab-Register" class="register">Register</a>
  </div>
  <div id="tab-Login" > <!-- class="tab-content" -->
    <div id="checkout">
      
      <div class="checkout-content"></div>
    </div>
    </div>
    <div id="tab-Register" class="tab-content">
    <div id="payment-address">
     
      <div class="checkout-content"></div>
    </div>
    </div>
  </div>
    
   
    
  
<script type="text/javascript"><!--


$(document).ready(function() {
	$.ajax({
		url: 'index.php?route=account/loginx',
		dataType: 'html',
		success: function(html) {
			$('#checkout .checkout-content').html(html);
				
			$('#checkout .checkout-content').slideDown('slow');
			
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
	$.ajax({
		url: 'index.php?route=account/registerx',
		dataType: 'html',
		success: function(html) {
			$('#payment-address .checkout-content').html(html);
				
			$('#payment-address .checkout-content').slideDown('slow');
			
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});	


$('#button-account').live('click', function() {
	$.ajax({
		
		success: function(html) {
			$('.warning, .error').remove();
			
			
				
			$(".register").trigger('click');
				
			
				
			
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#button-register').live('click', function() {
	$.ajax({
		url: 'index.php?route=account/registerx/validate',
		type: 'post',
		data: $('#payment-address input[type=\'text\'], #payment-address input[type=\'password\'], #payment-address input[type=\'checkbox\']:checked, #payment-address input[type=\'radio\']:checked, #payment-address input[type=\'hidden\'], #payment-address select'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-register').attr('disabled', true);
			$('#button-register').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-register').attr('disabled', false); 
			$('.wait').remove();
		},			
		success: function(json) {
			$('.warning, .error').remove();
						
			
							
			 if (json['error']) {
				if (json['error']['warning']) {
					$('#payment-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
				}
				
				if (json['error']['firstname']) {
					$('#payment-address input[name=\'firstname\'] + br').after('<span class="error">' + json['error']['firstname'] + '</span>');
				}
				
				if (json['error']['lastname']) {
					$('#payment-address input[name=\'lastname\'] + br').after('<span class="error">' + json['error']['lastname'] + '</span>');
				}	
				
				if (json['error']['email']) {
					$('#payment-address input[name=\'email\'] + br').after('<span class="error">' + json['error']['email'] + '</span>');
				}
/*				
				if (json['error']['telephone']) {
					$('#payment-address input[name=\'telephone\'] + br').after('<span class="error">' + json['error']['telephone'] + '</span>');
				}	
					
				if (json['error']['company_id']) {
					$('#payment-address input[name=\'company_id\'] + br').after('<span class="error">' + json['error']['company_id'] + '</span>');
				}	
				
				if (json['error']['tax_id']) {
					$('#payment-address input[name=\'tax_id\'] + br').after('<span class="error">' + json['error']['tax_id'] + '</span>');
				}	
																		
				if (json['error']['address_1']) {
					$('#payment-address input[name=\'address_1\'] + br').after('<span class="error">' + json['error']['address_1'] + '</span>');
				}	
				
				if (json['error']['city']) {
					$('#payment-address input[name=\'city\'] + br').after('<span class="error">' + json['error']['city'] + '</span>');
				}	
				
				if (json['error']['postcode']) {
					$('#payment-address input[name=\'postcode\'] + br').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}	
				
				if (json['error']['country']) {
					$('#payment-address select[name=\'country_id\'] + br').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('#payment-address select[name=\'zone_id\'] + br').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
*/				
				if (json['error']['password']) {
					$('#payment-address input[name=\'password\'] + br').after('<span class="error">' + json['error']['password'] + '</span>');
				}	
				
				if (json['error']['confirm']) {
					$('#payment-address input[name=\'confirm\'] + br').after('<span class="error">' + json['error']['confirm'] + '</span>');
				}																																	
			}
			 else {
					location = json['redirect'];
				} }
		});
	});
$('#button-login').live('click', function() {
	$.ajax({
		url: 'index.php?route=account/loginx/validate',
		type: 'post',
		data: $('#login input[type=\'text\'], #login input[type=\'password\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-login').attr('disabled', true);
			$('#button-login').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-login').attr('disabled', false);
			$('.wait').remove();
		},				
		success: function(json) {
		$('.warning, .error').remove();
			if (json['error']) {
			
			if (json['error'])
				if(json['error']['email']){
					$('#login input[name=\'email\'] + br').after('<span class="error">' + json['error']['email'] + '</span>');
					}
				if(json['error']['password']){
					$('#login input[name=\'password\'] + br').after('<span class="error">' + json['error']['password'] + '</span>');
				}
				if(json['error']['warning']){
					$('#checkout .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
	
					$('.warning').fadeIn('slow');
				}
				
			} else {
				location = json['redirect'];
			}
		}
	});	
});	
$('#reset').live('click', function() {
	$.ajax({
		url: 'index.php?route=account/loginx/reset',
		type: 'post',
		data: $('#login input[type=\'text\'], #login input[type=\'password\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#reset').attr('disabled', true);
			$('#reset').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#reset').attr('disabled', false);
			$('.wait').remove();
		},				
		success: function(json) {
		$('.warning, .error').remove();
			if (json['error']) {
			
			if (json['error'])
				if(json['error']['email']){
					$('#login input[name=\'email\'] + br').after('<span class="error">' + json['error']['email'] + '</span>');
					}
				
				
				
			} else {
				alert(json['alert']);
				location = json['redirect'];
			}
		}
	});	
});	
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
</div>
