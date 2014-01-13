</div></section>
<footer id="footer">

<div id="footer_promises" class="hidden-phone">
<div class="container">
<div id="footer_info_content" class="row">
  <div>
    <ul>
        <li class="free-gift">
            <a class="title">Free Gift<br> Wrap Service</a>
        </li>
        <li class="deliver-in-1-3">
            <a class="title">Free Shipping<br>Worldwide</a>
        </li>
        <li class="easy-return">
            <a class="title">Easy Return<br>Guarantee</a>
        </li>
        <li class="secured-payment-system">
            <a class="title">Secured<br>Payment System</a>
        </li>
    </ul>
  </div>
</div>
</div>
</div>

<div id="footer_connect" class="hidden-phone">
<div class="container">
<div id="footer_info_content" class="row">
  <div>
    <ul>
        <li class="newsletter">
            <h3>Sign up for exclusive deals & product news:</h3>
            <div id="mc_embed_signup">
            <form action="//thebabyshop.us7.list-manage.com/subscribe/post?u=218dc861fc32abd0e1f7140e6&amp;id=f665987786" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>

            <div class="mc-field-group">
                    <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Enter E-mail Address......">
                    <input type="submit" value="OK" name="subscribe" id="mc-embedded-subscribe" class="button">
            </div>
                    <div id="mce-responses" class="clear">
                            <div class="response" id="mce-error-response" style="display:none"></div>
                            <div class="response" id="mce-success-response" style="display:none"></div>
                    </div>
            </form>
            </div>
        </li>
    </ul>
  </div>
</div>
</div>
</div>

<?php if($this->config->get('thebabyshop_status') =='1') { ?>
<?php if($this->config->get('thebabyshop_contacts_status')== 1 || $this->config->get('thebabyshop_twitter_block_status')== 1 || $this->config->get('thebabyshop_custom_status')== 1) { ?>
<div id="footer_cnc">
<div class="container">
<div id="footer_cnc_content" class="row">

<?php if($this->config->get('thebabyshop_contacts_status')== 1) { ?>
<div class="span<?php echo 12 / ($this->config->get('thebabyshop_contacts_status') + $this->config->get('thebabyshop_twitter_block_status') + $this->config->get('thebabyshop_custom_status')) ; ?>">
<div class="contacts">

		<?php if ($thebabyshop_contacts_title) { ?>
        <h3><?php echo $thebabyshop_contacts_title; ?></h3>
		<?php } ?>   
   
        <?php if ($thebabyshop_contact_mphone1) { ?>      
        <span class="c_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_mphone_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Mobile Phone" title="Mobile Phone"></span>     
		<?php if ($thebabyshop_contact_mphone1) { ?>  
        <span><?php echo $thebabyshop_contact_mphone1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_mphone2) { ?>  
        <span><?php echo $thebabyshop_contact_mphone2; ?></span>
		<?php } ?><br /><br /><?php } ?> 
        
        <?php if ($thebabyshop_contact_sphone1) { ?>        
        <span class="c_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_sphone_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Static Phone" title="Static Phone"></span>                     
		<?php if ($thebabyshop_contact_sphone1) { ?> 
        <span><?php echo $thebabyshop_contact_sphone1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_sphone2) { ?> 
        <span><?php echo $thebabyshop_contact_sphone1; ?></span>
		<?php } ?><br /><br /><?php } ?>   
        
        <?php if ($thebabyshop_contact_fax1) { ?>              
        <span class="c_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_fax_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Fax" title="Fax"></span>   
		<?php if ($thebabyshop_contact_fax1) { ?>  
        <span><?php echo $thebabyshop_contact_fax1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_fax2) { ?>  
        <span><?php echo $thebabyshop_contact_fax2; ?></span>
		<?php } ?><br /><br /><?php } ?>

        <?php if ($thebabyshop_contact_email1) { ?>                
        <span class="c_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_email_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="E-mail" title="E-mail"></span> 
		<?php if ($thebabyshop_contact_email1) { ?>   
        <span><?php echo $thebabyshop_contact_email1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_email2) { ?>   
        <span><?php echo $thebabyshop_contact_email2; ?></span>
		<?php } ?><br /><br /><?php } ?>

        <?php if ($thebabyshop_contact_skype1) { ?>               
        <span class="c_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Skype" title="Skype"></span>         
		<?php if ($thebabyshop_contact_skype1) { ?>    
        <span><?php echo $thebabyshop_contact_skype1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_skype2) { ?>    
        <span><?php echo $thebabyshop_contact_skype2; ?></span>
        <?php } ?><br /><br /><?php } ?>
        
        <?php if ($thebabyshop_contact_location1) { ?>               
        <span class="c_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_location_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Address" title="Address"></span>
		<?php if ($thebabyshop_contact_location1) { ?>   
        <span><?php echo $thebabyshop_contact_location1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_location2) { ?>   
        <span><?php echo $thebabyshop_contact_location2; ?></span>
        <?php } ?><br /><br /><?php } ?> 	
        
        <?php if ($thebabyshop_contact_hours) { ?>               
        <span class="c_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_hours_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Hours" title="Hours"></span>         
        <span><pre><?php echo $thebabyshop_contact_hours; ?></pre></span>
		<?php } ?>
                 		      
</div>
</div>
<?php } ?>   

<?php if($this->config->get('thebabyshop_twitter_block_status')== 1) { ?>
<?php if($this->config->get('thebabyshop_twitter_block_user') != '') { ?>
<div class="span<?php echo 12 / ($this->config->get('thebabyshop_contacts_status') + $this->config->get('thebabyshop_twitter_block_status') + $this->config->get('thebabyshop_custom_status')) ; ?>">
<div class="twitter">
		<?php if ($thebabyshop_twitter_block_title) { ?> 
        <h3><?php echo $thebabyshop_twitter_block_title; ?></h3>
		<?php } ?>           
		<?php if($this->config->get('thebabyshop_twitter_block_user') != '') { ?>
		<p><a class="twitter-timeline"  href="https://twitter.com/<?php echo $this->config->get('thebabyshop_twitter_block_user'); ?>" data-chrome="noheader nofooter noborders noscrollbar transparent" data-tweet-limit="<?php echo $this->config->get('thebabyshop_twitter_block_tweets'); ?>"  data-widget-id="<?php echo $this->config->get('thebabyshop_twitter_block_widget_id'); ?>" data-theme="<?php echo $this->config->get('thebabyshop_twitter_block_theme'); ?>" data-related="twitterapi,twitter" data-aria-polite="assertive">Tweets by <?php echo $this->config->get('thebabyshop_twitter_block_user'); ?></a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></p>
		<?php } ?>     
</div>
</div>
<?php } ?> 
<?php } ?>    

<?php if($this->config->get('thebabyshop_custom_status')== 1) { ?>
<div class="span<?php echo 12 / ($this->config->get('thebabyshop_contacts_status') + $this->config->get('thebabyshop_twitter_block_status') + $this->config->get('thebabyshop_custom_status')); ?>">
<div id="custom_column">
		<?php if ($thebabyshop_custom_title) { ?> 
        <h3><?php echo $thebabyshop_custom_title; ?></h3>
		<?php } ?>  
		<?php if ($thebabyshop_custom_content) { ?> 
        <?php echo htmlspecialchars_decode($thebabyshop_custom_content); ?>
        <?php } ?>             
</div>
</div>
<?php } ?>

</div>
</div>
</div>
<?php } ?> 
<?php } ?>     

<?php if($this->config->get('thebabyshop_information_block_status')== 1) { ?> 
<div id="footer_info" class="hidden-phone">
<div class="container">
<div id="footer_info_content" class="row">
  <div>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <div class="social-network">
      <p>Join Us</p>
      <div class="facbook_link">
          <a href="https://www.facebook.com/TheBabyShopcom" target="_blank" title="The Baby Shop Facebook">Become Our Facebook Fan</a>
      </div>
      <div class="instagram_link">
          <a href="http://instagram.com/TheBabyShopcom" target="_blank" title="Instagram With The Baby Shop">Instagram With Us</a>
      </div>
  </div>
</div>
</div>
</div>
<?php } ?> 

<?php if($this->config->get('thebabyshop_information_block_status')== 2) { ?> 
<div id="footer_info_phone" class="row visible-phone">
<div class="container">
<div id="footer_info_phone_content">
  <div class="span3 subnav">
    <ul class="nav nav-pills">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><?php echo $text_information; ?></a>
        <ul class="dropdown-menu">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul> 
      </li>
    </ul>    
  </div>
  <div class="span3 subnav">
    <ul class="nav nav-pills">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><?php echo $text_service; ?></a>
        <ul class="dropdown-menu">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul> 
      </li>
    </ul>    
  </div>  
  <div class="span3 subnav">
    <ul class="nav nav-pills">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><?php echo $text_extra; ?></a>
        <ul class="dropdown-menu">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul> 
      </li>
    </ul>    
  </div>
  <div class="span3 subnav">
    <ul class="nav nav-pills">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><?php echo $text_account; ?></a>
        <ul class="dropdown-menu">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul> 
      </li>
    </ul>    
  </div>          
</div>
</div>
</div>
<?php } ?> 

<?php if($this->config->get('thebabyshop_status')== 1) { ?>
<?php if($this->config->get('thebabyshop_payment_block_status')== 1 || $this->config->get('thebabyshop_powered_status')== 1 || $this->config->get('thebabyshop_follow_us_status')== 1) { ?>
<div id="footer_cr">
<div class="container">
<div id="footer_cr_content" class="row">
<?php if($this->config->get('thebabyshop_payment_block_status')== 1) { ?>
<div class="span<?php echo 12 / ($this->config->get('thebabyshop_payment_block_status') + $this->config->get('thebabyshop_powered_status') + $this->config->get('thebabyshop_follow_us_status')) ; ?>">  
<div id="payment_logos">
        <?php if ($this->config->get('thebabyshop_payment_block_custom_status') == "1"): ?>
        <?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	        $path_image = $this->config->get('config_ssl') . 'image/';
        } else {
        	$path_image = $this->config->get('config_url') . 'image/';
        }
        if ($this->config->get('thebabyshop_payment_block_custom') != ''){ ?>   
        <?php if($this->config->get('thebabyshop_payment_block_custom_url') != ''): ?> 
		<a href="<?php echo $this->config->get('thebabyshop_payment_block_custom_url'); ?>" target="_blank">
			<img src="<?php echo $path_image . $this->config->get('thebabyshop_payment_block_custom') ?>" alt="Payment" title="Payment"></a>
        <?php else: ?>         
			<img src="<?php echo $path_image . $this->config->get('thebabyshop_payment_block_custom') ?>" alt="Payment" title="Payment">
        <?php endif; ?>
		<?php } ?>
		<?php endif; ?>           
 
        <?php if ($this->config->get('thebabyshop_payment_paypal') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_paypal_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_paypal_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_paypal.png" alt="PayPal" title="PayPal"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_paypal.png" alt="PayPal" title="PayPal">
        <?php endif; ?>
		<?php endif; ?>  
        
        <?php if ($this->config->get('thebabyshop_payment_visa') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_visa_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_visa_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_visa.png" alt="Visa" title="Visa"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_visa.png" alt="Visa" title="Visa">
        <?php endif; ?>
		<?php endif; ?>   
        
        <?php if ($this->config->get('thebabyshop_payment_mastercard') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_mastercard_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_mastercard_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_mastercard.png" alt="MasterCard" title="MasterCard"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_mastercard.png" alt="MasterCard" title="MasterCard">
        <?php endif; ?>
		<?php endif; ?> 
       
        <?php if ($this->config->get('thebabyshop_payment_maestro') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_maestro_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_maestro_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_maestro.png" alt="Maestro" title="Maestro"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_maestro.png" alt="Maestro" title="Maestro">
        <?php endif; ?>
		<?php endif; ?>
       
        <?php if ($this->config->get('thebabyshop_payment_discover') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_discover_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_discover_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_discover.png" alt="Discover" title="Discover"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_discover.png" alt="Discover" title="Discover">
        <?php endif; ?>
		<?php endif; ?>                   
        
        <?php if ($this->config->get('thebabyshop_payment_moneybookers') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_moneybookers_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_moneybookers_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_moneybookers.png" alt="Moneybookers" title="Moneybookers"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_moneybookers.png" alt="Moneybookers" title="Moneybookers">
        <?php endif; ?>
		<?php endif; ?>   
        
        <?php if ($this->config->get('thebabyshop_payment_american_express') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_american_express_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_american_express_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_american_express.png" alt="American Express" title="American Express"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_american_express.png" alt="American Express" title="American Express">
        <?php endif; ?>
		<?php endif; ?> 
                   
        <?php if ($this->config->get('thebabyshop_payment_cirrus') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_cirrus_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_cirrus_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_cirrus.png" alt="Cirrus" title="Cirrus"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_cirrus.png" alt="Cirrus" title="Cirrus">
        <?php endif; ?>
		<?php endif; ?>   
        
        <?php if ($this->config->get('thebabyshop_payment_delta') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_delta_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_delta_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_delta.png" alt="Delta" title="Delta"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_delta.png" alt="Delta" title="Delta">
        <?php endif; ?>
		<?php endif; ?>   
        
        <?php if ($this->config->get('thebabyshop_payment_google') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_google_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_google_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_google.png" alt="Google Checkout" title="Google Checkout"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_google.png" alt="Google Checkout" title="Google Checkout">
        <?php endif; ?>
		<?php endif; ?>
        
        <?php if ($this->config->get('thebabyshop_payment_2co') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_2co_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_2co_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_2co.png" alt="2CheckOut" title="2CheckOut"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_2co.png" alt="2CheckOut" title="2CheckOut">
        <?php endif; ?>
		<?php endif; ?> 
        
        <?php if ($this->config->get('thebabyshop_payment_sage') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_sage_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_sage_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_sage.png" alt="Sage" title="Sage"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_sage.png" alt="Sage" title="Sage">
        <?php endif; ?>
		<?php endif; ?>   
        
        <?php if ($this->config->get('thebabyshop_payment_solo') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_solo_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_solo_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_solo.png" alt="Solo" title="Solo"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_solo.png" alt="Solo" title="Solo">
        <?php endif; ?>
		<?php endif; ?> 
        
        <?php if ($this->config->get('thebabyshop_payment_switch') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_switch_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_switch_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_switch.png" alt="Switch" title="Switch"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_switch.png" alt="Switch" title="Switch">
        <?php endif; ?>
		<?php endif; ?>
        
        <?php if ($this->config->get('thebabyshop_payment_western_union') == "1"): ?>
        <?php if($this->config->get('thebabyshop_payment_western_union_url') != ''): ?>
			<a href="<?php echo $this->config->get('thebabyshop_payment_western_union_url'); ?>" target="_blank">
			<img src="catalog/view/theme/thebabyshop/image/payment/payment_image_western_union.png" alt="Western Union" title="Western Union"></a>
        <?php else: ?>
            <img src="catalog/view/theme/thebabyshop/image/payment/payment_image_western_union.png" alt="Western Union" title="Western Union">
        <?php endif; ?>
		<?php endif; ?>             
</div>
</div>
<?php } ?>

<?php if($this->config->get('thebabyshop_powered_status')== 1) { ?> 
<?php if ($thebabyshop_powered_content) { ?>
<div class="span<?php echo 12 / ($this->config->get('thebabyshop_payment_block_status') + $this->config->get('thebabyshop_powered_status') + $this->config->get('thebabyshop_follow_us_status')) ; ?>">  
<div id="powered_content">
		<?php if ($thebabyshop_powered_content) { ?> 
        <?php echo htmlspecialchars_decode($thebabyshop_powered_content); ?>
        <?php } ?>                    
</div>
</div>
<?php } ?>
<?php } ?>
<script type="text/javascript">
    $(function(){
        $(".tiptip").tipTip();
    });
</script>
<?php if($this->config->get('thebabyshop_follow_us_status')== 1) { ?>      
<?php if($this->config->get('thebabyshop_facebook') != '' || $this->config->get('thebabyshop_twitter') != '' || $this->config->get('thebabyshop_googleplus') != '' || $this->config->get('thebabyshop_rss') != '') { ?>
<div class="span<?php echo 12 / ($this->config->get('thebabyshop_payment_block_status') + $this->config->get('thebabyshop_powered_status') + $this->config->get('thebabyshop_follow_us_status')) ; ?>">      
<div id="follow_us">  
	<?php if($this->config->get('thebabyshop_facebook') != '') { ?>
		<a href="https://facebook.com/<?php echo $this->config->get('thebabyshop_facebook'); ?>" class="tiptip" title="Facebook" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/f_logo.png" alt="Facebook" title="Facebook"></a>
	<?php } ?>
	<?php if($this->config->get('thebabyshop_twitter') != '') { ?>
		<a href="https://twitter.com/#!/<?php echo $this->config->get('thebabyshop_twitter'); ?>" class="tiptip" title="Twitter" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/t_logo.png" alt="Twitter" title="Twitter"></a>
	<?php } ?>
	<?php if($this->config->get('thebabyshop_googleplus') != '') { ?>
		<a href="https://plus.google.com/u/0/<?php echo $this->config->get('thebabyshop_googleplus'); ?>" class="tiptip" title="Google+" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/g_logo.png" alt="Google+" title="Google+"></a>
	<?php } ?>
	<?php if($this->config->get('thebabyshop_rss') != '') { ?>
		<a href="<?php echo $this->config->get('thebabyshop_rss'); ?>" class="tiptip" title="RSS" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/r_logo.png" alt="RSS" title="RSS"></a>
    <?php } ?>
	<?php if($this->config->get('thebabyshop_pinterest') != '') { ?>
		<a href="https://pinterest.com/<?php echo $this->config->get('thebabyshop_pinterest'); ?>/" class="tiptip" title="Pinterest" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/p_logo.png" alt="Pinterest" title="Pinterest"></a>
    <?php } ?>
	<?php if($this->config->get('thebabyshop_vimeo') != '') { ?>
		<a href="https://www.vimeo.com/<?php echo $this->config->get('thebabyshop_vimeo'); ?>" class="tiptip" title="Vimeo" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/v_logo.png" alt="Vimeo" title="Vimeo"></a>
    <?php } ?> 
	<?php if($this->config->get('thebabyshop_flickr') != '') { ?>
		<a href="https://www.flickr.com/photos/<?php echo $this->config->get('thebabyshop_flickr'); ?>" class="tiptip" title="Flickr" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/fl_logo.png" alt="Flickr" title="Flickr"></a>
    <?php } ?>  
	<?php if($this->config->get('thebabyshop_linkedin') != '') { ?>
		<a href="https://www.linkedin.com/in/<?php echo $this->config->get('thebabyshop_linkedin'); ?>" class="tiptip" title="LinkedIn" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/l_logo.png" alt="LinkedIn" title="LinkedIn"></a>
    <?php } ?>
	<?php if($this->config->get('thebabyshop_youtube') != '') { ?>
		<a href="https://youtube.com/user/<?php echo $this->config->get('thebabyshop_youtube'); ?>/" class="tiptip" title="YouTube" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/y_logo.png" alt="YouTube" title="YouTube"></a>
    <?php } ?>
	<?php if($this->config->get('thebabyshop_dribbble') != '') { ?>
		<a href="https://www.dribbble.com/<?php echo $this->config->get('thebabyshop_dribbble'); ?>" class="tiptip" title="Dribbble" target="_blank">
		<img src="catalog/view/theme/thebabyshop/image/follow_us/d_logo.png" alt="Dribbble" title="Dribbble"></a>
    <?php } ?>           
</div> 
</div>     
<?php } ?>   
<?php } ?>          
 
</div>
</div>
</div>
<?php } ?>

<?php if($this->config->get('thebabyshop_about_status')== 1) { ?> 
<?php if ($thebabyshop_about_content) { ?>
<div id="footer_about">
<div id="footer_about_content" class="row">
		<?php echo htmlspecialchars_decode($thebabyshop_about_content); ?>
</div>
</div>
<?php } ?>
<?php } ?>

<?php } ?>
</footer>
</div>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/cloud-zoom.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/jquery.tipTip.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/bootstrap-dropdown.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/bootstrap-collapse.js"></script>
<?php if($this->config->get('thebabyshop_others_totop') =='1') { ?>	
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/jquery.ui.totop.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
		var defaults = {
	  		containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
	 	};
		*/	
		$().UItoTop({ easingType: 'easeOutQuart' });	
	});
</script>
<?php if($this->config->get('thebabyshop_custom_js') !='') { ?>
<?php echo htmlspecialchars_decode( $this->config->get('thebabyshop_custom_js'), ENT_QUOTES ); ?>
<?php } ?>
<?php } ?>
</noscript>
<div style="display:none;">
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 993256659;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/993256659/?value=0&amp;guid=ON&amp;script=0"/>
</div>
</div>
</body></html>