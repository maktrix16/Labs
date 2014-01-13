function createDialog(url) {
		// Called directly, without assignment to an element:
		$.colorbox({
			href:url,
			initialWidth:300,
			initialHeight:100,
			width:650,
			height:550,
			overlayClose: false,
			onOpen:function(){ 
				$('#cboxLoadingOverlay').html('');
				$('#cboxLoadingGraphic').html('');
			},
			onLoad:function(){
				$('#colorbox').addClass('login_popup');
				$('#cboxClose').hide();
			},
			onClosed:function(){ 
				$('#cboxLoadingOverlay').html('');
				$('#cboxLoadingGraphic').html('');
			},
			onComplete:function(){ 
				$('.colorbox').colorbox({
    				rel:'colorbox',
					opacity: 0.5,
					width:'auto',
					height:'auto',
					current:false,
					overlayClose: false,
					title:function(){
						$('#cboxLoadingOverlay').html('');
						$('#cboxLoadingGraphic').html('');
						
					},
					onClosed:function(){ 
						$('#cboxLoadingOverlay').html('');
						$('#cboxLoadingGraphic').html('');
					},
					onComplete:function(){ 
						$('#cboxLoadingOverlay').html('');
						$('#cboxLoadingGraphic').html('');

					}
				});
				$('#cboxClose').show();
			}
		});
        return false;
}

function dialogLoading () {
    // Called directly with HTML
	$.colorbox({html:'<div id="loadingdialog" style="display:block; min-width:300px;min-height:100px;"><span class="ajaxloading"><style>#cboxLoadingOverlay {display:block !important;} #cboxClose {display:none !important;} </style></span></div>',initialWidth:650,initialHeight:550,width:650,height:550,
	overlayClose: false,
	title:function(){
		$('#cboxLoadingOverlay').html('<style>#cboxLoadingOverlay {display:block !important;}</style>');
		$('#cboxLoadingGraphic').html('<style>#cboxLoadingGraphic {display:block !important;}</style>');					
	},
	onClosed:function(){ 
		$('#cboxLoadingOverlay').html('');
		$('#cboxLoadingGraphic').html('');
	},
	onComplete:function(){ 
		$('#cboxLoadingOverlay').html('<style>#cboxLoadingOverlay {display:none !important;}</style>');
		$('#cboxLoadingGraphic').html('<style>#cboxLoadingGraphic {display:none !important;}</style>');

	}
	});      
        
}

function submitDialogForm(url,formID) {
		// Called directly, without assignment to an element:
		$.ajax({
        type: "POST",
        url: url,
        data: jQuery("#" + formID).serialize(), // serializes the form's elements.
        success: function(data)
        {
           // show response from the php script.
           $.colorbox({
			html:data,
			initialWidth:300,
			initialHeight:100,
			width:650,
			height:550,
			overlayClose: false,
			title:function(){
				$('#cboxLoadingOverlay').html('<style>#cboxLoadingOverlay {display:none !important;}</style>');
				$('#cboxLoadingGraphic').html('<style>#cboxLoadingGraphic {display:none !important;}</style>');
						
			},
			onOpen:function(){ 
			    $('#cboxLoadedContent').hide();
			    $('#cboxClose').hide();
				$('#cboxLoadingOverlay').html('');
				$('#cboxLoadingGraphic').html('');
			},
			onLoad:function(){
				$('#colorbox').addClass('login_popup');
				jQuery('#cboxLoadingOverlay').show();
				$('#cboxClose').hide();
			},
			onClosed:function(){ 
				$('#cboxLoadingOverlay').html('');
				$('#cboxLoadingGraphic').html('');
			},
			onComplete:function(){ 
			    $('#cboxLoadedContent').hide();

				if(jQuery('#colorbox .warning').text() == ""){
					jQuery('#cboxLoadingOverlay').show();
					window.location = "index.php?route=account/account";
				}else{
				    jQuery('#cboxLoadingOverlay').hide();
					jQuery('#cboxLoadedContent').show();
					jQuery('#login input').keydown(function(e) {
						if (e.keyCode == 13) {
						$('#login').submit();
						}
					});
					jQuery("#" + formID).submit(function() {
    					submitDialogForm(url,formID);      
    					return false;
					});	
					
					if(jQuery('select[name=\'country_id\']')) {
					jQuery('select[name=\'country_id\']').bind('change', function() {
						$.ajax({
						url: 'index.php?route=account/register/country&country_id=' + this.value,
						dataType: 'json',
						beforeSend: function() {
							$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
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
					}
					$('#cboxClose').show();	
				}
						
			}
			});

        }
    	});

	
		return false;
}


jQuery(function(){
	jQuery('.login_popup a').live('click',function(){
		var href = jQuery(this).attr('href') + '_popup';
		createDialog(href);
		return false;
	});
});