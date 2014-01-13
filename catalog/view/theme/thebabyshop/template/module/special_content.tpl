<section id="specials" class="special span">
<h2><?php echo $heading_title; ?></h2>
<?php if($this->config->get('thebabyshop_homepage_specials_status')== 0) { ?>
  <div class="box-content hidden-phone">
    <div class="box-product row-fluid">
	  <?php $counter = 0; foreach ($products as $product) { 
		 if (($counter+4) %4 == 0) $xclass="span-first-child";
		 else $xclass=""; ?>    
      <div class="span3  <?php echo $xclass; ?>"><div class="pbox">
        <?php if ($product['thumb']) { ?>
        <div class="image"><?php if ($product['special']) { ?><span class="sale-icon"><?php echo $text_sale; ?></span><?php } ?><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } else { ?>
        <div class="image"><?php if ($product['special']) { ?><span class="sale-icon"><?php echo $text_sale; ?></span><?php } ?>
        <a href="<?php echo $product['href']; ?>"><img src="image/no-image.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
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
        <!-- <?php if ($product['rating']) { ?>
        <div class="rating">
        <img src="catalog/view/theme/thebabyshop/image/stars/stars<?php echo $this->config->get('thebabyshop_mid_prod_stars_color'); ?>-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
        </div>
        <?php } ?> -->
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
      </div></div>
      <?php $counter++; } ?>
    </div>
  </div>

  <div class="box-content visible-phone">
    <div class="box-product row-fluid">
	  <?php $counter = 0; foreach ($products as $product) { 
		 if (($counter+2) %2 == 0) $xclass="span-first-child";
		 else $xclass=""; ?>    
      <div class="span3  <?php echo $xclass; ?>"><div class="pbox">
        <?php if ($product['thumb']) { ?>
        <div class="image"><?php if ($product['special']) { ?><span class="sale-icon"><?php echo $text_sale; ?></span><?php } ?><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } else { ?>
        <div class="image"><?php if ($product['special']) { ?><span class="sale-icon"><?php echo $text_sale; ?></span><?php } ?>
        <a href="<?php echo $product['href']; ?>"><img src="image/no-image.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
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
        <!-- <?php if ($product['rating']) { ?>
        <div class="rating">
        <img src="catalog/view/theme/thebabyshop/image/stars/stars<?php echo $this->config->get('thebabyshop_mid_prod_stars_color'); ?>-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
        </div>
        <?php } ?> -->
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
      </div></div>
      <?php $counter++; } ?>
    </div>
  </div>  
<?php } ?> 

<?php if($this->config->get('thebabyshop_homepage_specials_status')== 1) { ?>
<div id="carousel-special-<?php echo $module; ?>" class="es-carousel-wrapper">
	<div class="es-carousel">        
		<ul>
        <?php foreach ($products as $product) { ?>
		<li><div class="pbox">
        <?php if ($product['thumb']) { ?>
        <div class="image"><?php if ($product['special']) { ?><span class="sale-icon"><?php echo $text_sale; ?></span><?php } ?>
        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } else { ?>
        <div class="image"><?php if ($product['special']) { ?><span class="sale-icon"><?php echo $text_sale; ?></span><?php } ?>
        <a href="<?php echo $product['href']; ?>"><img src="image/no-image.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
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
        <!-- <?php if ($product['rating']) { ?>
        <div class="rating">
        <img src="catalog/view/theme/thebabyshop/image/stars/stars<?php echo $this->config->get('thebabyshop_mid_prod_stars_color'); ?>-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
        </div>
        <?php } ?> -->
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>

        </div></li>
        <?php } ?>
		</ul>
	</div>
</div>
<?php } ?>
</section>

<script type="text/javascript">

	$('#carousel-special-<?php echo $module; ?>').elastislide({

		speed       : 450,	// animation speed
		easing      : '',	// animation easing effect


		// the minimum number of items to show. When we resize the window, this will make sure minItems are always shown (unless of course minItems is higher than the total number of elements)
				minItems	: 1
			});

	//Fix to adjust on windows resize
	$(window).triggerHandler('resize.elastislide');

</script>