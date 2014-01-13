<?php $counter = 0; foreach ($products as $product) { 
   if (($counter+3) %3 == 0) $xclass="span-first-child";
   else $xclass=""; ?>
    <div <?php echo ' id="p' . $product['product_id'] . '"'; ?> class="span <?php echo $xclass; ?>">
      <?php if ($product['thumb']) { ?>
      <div class="image">
      <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } else { ?>
      <div class="image">
      <a href="<?php echo $product['href']; ?>"><img src="image/no-image.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
      </div>
      <?php } ?>      
      <div class="description"><?php echo $product['description']; ?></div>

      <?php if ($product['rating']) { ?>
      <div class="rating">
      <img src="catalog/view/theme/thebabyshop/image/stars/stars<?php echo $this->config->get('thebabyshop_mid_prod_stars_color'); ?>-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
      </div>
      <?php } else { ?>
      <div class="rating">
      &nbsp;
      </div>      
      <?php } ?>
      <div class="brand"><?php echo $product['brand']; ?></div>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>
        <!-- <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?> -->
      </div>
      <?php } ?>
      <span class="stock_status"><?php //echo $product['stock_status'] ?></span>
      </div>
    <?php $counter++; } ?>