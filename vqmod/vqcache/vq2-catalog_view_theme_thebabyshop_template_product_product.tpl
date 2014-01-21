<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="span12"><div class="row-fluid"><?php echo $content_top; ?>
<script type="text/javascript">
    $(function(){
        $(".tiptip").tipTip();
    });
</script>
  <div class="product-info">
    <?php if ($thumb || $images) { ?>
    <div class="left">
      <?php if($this->config->get('thebabyshop_product_zoom_type')== 1) { ?>     
      <?php if ($thumb) { ?>
      <div class="image">
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox">
      <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
      <?php } ?>
      <?php if ($images) { ?>
      <div class="image-additional">
        <?php foreach ($images as $image) { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox"> 
        <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if($this->config->get('thebabyshop_product_zoom_type')== 0) { ?>  
      <?php if ($thumb) { ?>
      <div class="image">
      <?php if($special){ ?>
      <?php } ?>        
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom" id='zoom1' rel="adjustX: -1, adjustY:-1, tint:'#ffffff',tintOpacity:0.1,zoomWidth:560,zoomHeight:520">
	  <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a>
      </div>
      <?php } ?>
      <?php if ($images) { ?>
      <div class="image-additional">
        <a href='<?php echo $popup; ?>' title='<?php echo $heading_title; ?>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>' ">
        <img src="<?php echo $thumb; ?>" width="98" title="<?php echo $heading_title; ?>" alt = "<?php echo $heading_title; ?>"/></a>  
        <?php foreach ($images as $image) { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>' ">
        <img src="<?php echo $image['thumb']; ?>" width="98" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
        <div class="product-share">
        <div class="fb-like" data-width="400" data-show-faces="false" data-send="false"></div>
        <div class="share">
        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style ">
        <a class="addthis_button_email"></a>
        </div>
        <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script>
        <!-- AddThis Button END -->
        </div>
        </div>
        <section class="premium-badge">We guarantee that this product has passed European safety standards, and has our quality assurance at TheBabyShop.com</section>
    </div>
    <?php } ?> 
    <?php if ($thumb =='') { ?>
    <div class="left">
    <div class="image"><?php if($special){ ?><?php } ?> 
    <img src="catalog/view/theme/thebabyshop/image/no_image-308x308.png" />
    </div>
        <div class="product-share">
        <div class="fb-like" data-width="400" data-show-faces="false" data-send="false"></div>
        <div class="share">
        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style ">
        <a class="addthis_button_email"></a>
        </div>
        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js"></script>
        <!-- AddThis Button END -->
        </div>         
        </div> 
    </div>
    <?php } ?> 
    <div class="right">     
      <div class="buy">
      <header class="product-name">
      <h2><?php echo $manufacturer; ?></h2>

			
				<span itemscope itemtype="http://schema.org/Product">

				<meta itemprop="name" content="<?php echo $heading_title; ?>" >
				<meta itemprop="model" content="<?php echo $model; ?>" >
				<meta itemprop="manufacturer" content="<?php echo $manufacturer; ?>" >
				
				<?php if ($thumb) { ?>
				<meta itemprop="image" content="<?php echo $thumb; ?>" >
				<?php } ?>
				
				<?php if ($images) { foreach ($images as $image) {?>
				<meta itemprop="image" content="<?php echo $image['thumb']; ?>" >
				<?php } } ?>
				
				<span itemprop = "offers" itemscope itemtype = "http://schema.org/Offer" class="price">
				<meta itemprop="price" content="<?php echo ($special ? $special : $price); ?>" />
				<meta itemprop="priceCurrency" content="<?php echo $this->currency->getCode(); ?>" />
				<link itemprop = "availability" href = "http://schema.org/<?php echo (($quantity > 0) ? "InStock" : "OutOfStock") ?>" />
				</span>
				
				<span class="review" itemprop = "aggregateRating" itemscope itemtype = "http://schema.org/AggregateRating">
				<meta itemprop = "reviewCount" content="<?php echo $review_no; ?>">
				<meta itemprop = "ratingValue" content="<?php echo $rating; ?>">
				</span></span>
            
			
      <h1><?php echo $heading_title; ?></h1>
      </header>
      <?php if ($price) { ?>
      <div class="price">
        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
          <span><?php echo $special; ?></span>&nbsp;&nbsp;<span class="price-old"><?php echo $price; ?></span> 
        <!-- <span class="price-new"><?php echo $special; ?></span> <span class="price-old"><?php echo $price; ?></span> -->
        <?php } ?>
        <br />
        <?php if ($tax) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
        <?php if ($discounts) { ?>
        <br />
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php } ?>  
      <?php if ($review_status) { ?>
      <div class="review">
        <div><img src="catalog/view/theme/thebabyshop/image/stars/stars<?php echo $this->config->get('thebabyshop_mid_prod_stars_color'); ?>-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" /><br />
        <a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;
        <a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
      </div>
      <?php } ?>
      <?php if ($options) { ?>
      <div class="options">
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select></div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?></div>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?></div>
        </div>
       
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
            <div class="option-r"> <table class="option-image">
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <tr>
                <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label></td>
              </tr>
              <?php } ?>
            </table></div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" /></div>
        </div>
       
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea></div>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" /></div>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" /></div>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" /></div>
        </div>
       
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <div class="option-l"><?php if ($option['required']) { ?>
          <?php } ?>
          <?php echo $option['name']; ?>:</div>
          <div class="option-r"><input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" /></div>
        </div>
        
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>
      <div class="cart">
        <a onclick="addToWishList('<?php echo $product_id; ?>');" id="wishlist" class="button-exclusive"><?php echo $button_wishlist; ?></a>
        <div class="add-to-cart">
          <?php if($this->config->get('thebabyshop_product_i_c_status') ==1) { ?>   
          <input type="button" class="dec" value=" " />
          <?php } ?> 
          <input type="hidden" name="quantity" size="2" class="i-d-quantity input-mini" value="<?php echo $minimum; ?>" />
          <?php if($this->config->get('thebabyshop_product_i_c_status') ==1) { ?> 
          <input type="button" class="inc" value=" " />
          <?php } ?> 
          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
          <?php if (!$product_info['quantity']) { ?>
          <?php } else { ?>
            <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button-exclusive" />
          <?php } ?>
          </div>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
      </div>
        <section id="product-information">
            <div id="tabs" class="htabs">
              <a href="#tab-description"><?php echo $tab_description; ?></a>
              <?php if ($manufacturer_desc) { ?>
              <a href="#tab-brand"><?php echo $tab_brand_story; ?></a>
              <?php } ?>
              <?php if ($attribute_groups) { ?>
              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <a href="#tab-attribute"><?php echo $attribute_group['name']; ?></a>
              <?php } ?>
              <?php } ?>
              <?php if ($review_status) { ?>
              <a href="#tab-review"><?php echo $tab_review; ?></a>
              <?php } ?>
              <?php if($this->config->get('thebabyshop_product_custom_tab_status')== 1) { ?>
              <?php if ($thebabyshop_product_custom_tab_content) { ?>   
              <a href="#tab-custom"><?php echo $thebabyshop_product_custom_tab_title; ?></a>
              <?php } ?>
              <?php } ?>
              <?php if($this->config->get('thebabyshop_product_custom_tab_2_status')== 1) { ?>
              <?php if ($thebabyshop_product_custom_tab_2_content) { ?>   
              <a href="#tab-custom-2"><?php echo $thebabyshop_product_custom_tab_2_title; ?></a>
              <?php } ?>
              <?php } ?> 
              <?php if($this->config->get('thebabyshop_product_custom_tab_3_status')== 1) { ?>
              <?php if ($thebabyshop_product_custom_tab_3_content) { ?>   
              <a href="#tab-custom-3"><?php echo $thebabyshop_product_custom_tab_3_title; ?></a>
              <?php } ?>
              <?php } ?>    
            </div>
            <div id="tab-description" class="tab-content" style="display:block">
                <article id="<?php echo $heading_title; ?>"><?php echo $description; ?></article>
            </div>
            <?php if ($manufacturer_desc) { ?>
            <div id="tab-brand" class="tab-content">
                <?php if ($manufacturer) { ?>  
                    <?php if ($manufacturers_img) { ?>       
                    <?php if($this->config->get('thebabyshop_product_manufacturer_logo_status') ==1) { ?>   
                    <div class="product-manufacturer-logo-block">
                         <?php echo ($manufacturers_img) ? '<img src="'.$manufacturers_img.'" title="'.$manufacturers.'" />' : $manufacturers ;?>
                    </div>
                    <?php } ?> 
                    <?php } ?>
                <?php } ?>
                <?php echo $manufacturer_desc; ?>
            </div>
            <?php } ?> 
            <?php if ($attribute_groups) { ?>
            <div id="tab-attribute" class="tab-content" style="display:block">
              <ul class="attribute">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                    <li><?php echo $attribute['text']; ?></li>
                <?php } ?>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div id="tab-review" class="tab-content" style="display:block">
              <article id="review"></article>
              <h2 id="review-title"><?php echo $text_write; ?></h2>
              <b><?php echo $entry_name; ?></b><br />
              <input type="text" name="name" value="" />
              <br />
              <br />
              <b><?php echo $entry_review; ?></b>
              <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
              <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
              <br />
              <b><?php echo $entry_rating; ?></b> &nbsp;&nbsp;&nbsp;<span><?php echo $entry_bad; ?></span>&nbsp;
              <input type="radio" name="rating" value="1" />
              &nbsp;
              <input type="radio" name="rating" value="2" />
              &nbsp;
              <input type="radio" name="rating" value="3" />
              &nbsp;
              <input type="radio" name="rating" value="4" />
              &nbsp;
              <input type="radio" name="rating" value="5" />
              &nbsp; <span><?php echo $entry_good; ?></span><br />
              <br />
              <b><?php echo $entry_captcha; ?></b><br />
              <input type="text" name="captcha" value="" />
              <br /><br />
              <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
              <br />
              <div class="buttons">
                <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
              </div>
            </div>
            <?php } ?>
            <?php if($this->config->get('thebabyshop_product_custom_tab_status')== 1) { ?> 
            <?php if ($thebabyshop_product_custom_tab_content) { ?>  
            <div id="tab-custom" class="tab-content" style="display:block">
            <?php echo htmlspecialchars_decode($thebabyshop_product_custom_tab_content); ?>
            </div>
            <?php } ?>
            <?php } ?> 
            <?php if($this->config->get('thebabyshop_product_custom_tab_2_status')== 1) { ?> 
            <?php if ($thebabyshop_product_custom_tab_2_content) { ?>  
            <div id="tab-custom-2" class="tab-content" style="display:block">
            <?php echo htmlspecialchars_decode($thebabyshop_product_custom_tab_2_content); ?>
            </div>
            <?php } ?>
            <?php } ?> 
            <?php if($this->config->get('thebabyshop_product_custom_tab_3_status')== 1) { ?> 
            <?php if ($thebabyshop_product_custom_tab_3_content) { ?>  
            <div id="tab-custom-3" class="tab-content" style="display:block">
            <?php echo htmlspecialchars_decode($thebabyshop_product_custom_tab_3_content); ?>
            </div>
            <?php } ?>
            <?php } ?>
        </section>
    </div> 

<div id="right-sm">
<?php if($this->config->get('thebabyshop_product_custom_status')== 1) { ?> 
<?php if ($thebabyshop_product_custom_content) { ?>
<div class="right-sm-custom visible-desktop">
<div class="product-custom-block">
    <?php echo htmlspecialchars_decode($thebabyshop_product_custom_content); ?>      
</div> 
</div>
<?php } ?>
<?php } ?> 

<?php if ($products) { ?>
<?php if($this->config->get('thebabyshop_product_related_status')== 1) { ?>  
<?php if($this->config->get('thebabyshop_product_related_position')== 0) { ?>  
<div class="right-sm-related visible-desktop">
<div class="product-related">
<h5><?php echo $tab_related; ?></h5>   
<script type="text/javascript">
(function($){	
	$(function(){
		$('#slider1').bxSlider();
	});	
}(jQuery))
</script>
  <ul id="slider1" >
    <?php foreach ($products as $product) { ?> 
    <li>
        <?php if ($product['thumb']) { ?>
        <div class="image"><?php if ($product['special']) { ?><?php } ?>
        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } else { ?>
        <div class="image"><?php if ($product['special']) { ?><?php } ?>
        <a href="<?php echo $product['href']; ?>"><img src="image/no-image.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        </div>
        <?php } ?>
        <div class="description-r hidden-phone hidden-tablet"><?php echo $product['description']; ?></div>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
    </li>
    <?php } ?>
  </ul> 
</div>  
</div>    
<?php } ?>
<?php } ?>
<?php } ?>
</div>
</div>

  <?php if ($products) { ?>
  <?php if($this->config->get('thebabyshop_product_related_status')== 1) { ?>  
  <?php if($this->config->get('thebabyshop_product_related_position')== 1) { ?>      
    <h2><?php echo $tab_related; ?></h2>
    <div class="product-grid">   
	<?php $counter = 0; foreach ($products as $product) { 
	   if (($counter+4) %4 == 0) $xclass="span-first-child";
	   else $xclass=""; ?>        
    <div class="span-related <?php echo $xclass; ?>"><div class="pbox">
        <?php if ($product['thumb']) { ?>
        <div class="image"><?php if ($product['special']) { ?><?php } ?>                 
        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } else { ?>
        <div class="image"><?php if ($product['special']) { ?><?php } ?>
        <a href="<?php echo $product['href']; ?>"><img src="catalog/view/theme/thebabyshop/image/no_image-190x190.png" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        </div>
        <?php } ?>
        <div class="description hidden-phone hidden-tablet"><?php echo $product['description']; ?></div>
        
        <?php if ($product['rating']) { ?>
        <div class="rating hidden-phone hidden-tablet">
        <img src="catalog/view/theme/thebabyshop/image/stars/stars<?php echo $this->config->get('thebabyshop_mid_prod_stars_color'); ?>-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
        </div> 
        <?php } else { ?>
        <div class="rating hidden-phone hidden-tablet">
        &nbsp;
        </div>      
        <?php } ?>         
               
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
         <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
         </div></div>
      <?php $counter++; } ?>
    </div>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  
  <?php if ($tags) { ?>
  <div class="tags hidden-desktop"><div style="float:left; margin-right:3px"><h5><?php echo $text_tags; ?></h5></div>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <div><a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a></div>
    <?php } else { ?>
    <div><a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a></div>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script>
<script>
    (function($){
        $(window).load(function(){
            $("#tab-description").mCustomScrollbar();
        });
        $(document).ready(function(){
            $("#tab-brand").mCustomScrollbar({
                        scrollButtons:{
                            enable:true
                        }
                    });
        });
    })(jQuery);
</script>
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div id="basket" class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/thebabyshop/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);

			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/thebabyshop/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/thebabyshop/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script>
</div>
<?php echo $footer; ?>