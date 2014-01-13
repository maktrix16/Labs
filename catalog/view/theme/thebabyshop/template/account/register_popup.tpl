<script type="text/javascript">
    purl = parent.document.URL;
    document.cookie = "purl="+"",-1;
</script>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>
<?php } ?>
<div id="content">
<div class="register-content">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <h2><?php echo $heading_title; ?></h2>
            <?php echo $content_top; ?>
          <table class="form">
            <tr>
              <td><?php echo $entry_firstname; ?><span class="required">*</span></td>
              <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
                <?php if ($error_firstname) { ?>
                <span class="error"><?php echo $error_firstname; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_lastname; ?><span class="required">*</span></td>
              <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
                <?php if ($error_lastname) { ?>
                <span class="error"><?php echo $error_lastname; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_email; ?><span class="required">*</span></td>
              <td><input type="text" name="email" value="<?php echo $email; ?>" />
                <?php if ($error_email) { ?>
                <span class="error"><?php echo $error_email; ?></span>
                <?php } ?></td>
            </tr>
          </table>
          <br />
        <h2><?php echo $text_your_password; ?></h2>
        <table class="form">
          <tr>
            <td><?php echo $entry_password; ?><span class="required">*</span></td>
            <td><input type="password" name="password" value="<?php echo $password; ?>" />
              <?php if ($error_password) { ?>
              <span class="error"><?php echo $error_password; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_confirm; ?><span class="required">*</span></td>
            <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" />
              <?php if ($error_confirm) { ?>
              <span class="error"><?php echo $error_confirm; ?></span>
              <?php } ?></td>
          </tr>
        </table>
        <br />
        <?php if ($text_agree) { ?>
        <p style="font-size:12px;line-height:13px;color:#AAA;"><?php echo $text_agree; ?></p>
        <?php if ($agree) { ?>
        <input type="hidden" name="agree" value="1" checked="checked" />
        <?php } else { ?>
        <input type="hidden" name="agree" value="1" checked="checked" />
        <?php } ?>
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
        <?php } else { ?>
        <div>
            <input type="submit" value="<?php echo $text_register; ?>" class="button" />
        </div>
        <?php } ?>
  </form>
</div>
</div>
<script type="text/javascript">
    purl = parent.document.URL;
    document.cookie = "purl=" + parent.document.URL +";expires=now.getTime()+300";
</script>
<script type="text/javascript"><!--
$('input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
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
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		width: 600,
		height: 330,
                opacity:0.4
	});
});
//--></script>
<script type="text/javascript">
    purl = parent.document.URL;
    document.cookie = "purl="+parent.document.URL;expires=0;
</script>