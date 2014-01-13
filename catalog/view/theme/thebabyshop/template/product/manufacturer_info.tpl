<?php echo $header; ?>
<nav class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</nav>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="span13"><div class="row-fluid"><?php echo $content_top; ?>
  <header id="brand"><h1><?php echo $heading_title; ?></h1></header>
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="sort"><?php echo $text_sort; ?>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <div class="product-list">
	<?php $counter = 0; foreach ($products as $product) { 
	   if (($counter+3) %3 == 0) $xclass="span-first-child";
	   else $xclass=""; ?>        
    <div class="span <?php echo $xclass; ?>">
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } else { ?>
      <div class="image">
      <a href="<?php echo $product['href']; ?>"><img src="image/no-image.jpg" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
      </div>
      <?php } ?>
      <div class="description"><?php echo $product['description']; ?></div>
      
      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/thebabyshop/image/stars/stars<?php echo $this->config->get('thebabyshop_mid_prod_stars_color'); ?>-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
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
        <!-- <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?> -->
      </div>
      <?php } ?>

      <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
      <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
      <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
    </div>
    <?php $counter++; } ?>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php }?>
  <?php echo $content_bottom; ?></div></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
	
			
			html = '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image span2">' + image + '</div>';
			}
			
			html += '<div class="span4">';
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}				
			
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';				
			
			html += '</div>';

			html += '</div>';
			
			html += '<div class="span2">';
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price span2">' + price  + '</div>';
			}				
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '</div>';				

						
			$(element).html(html);
		});		
		
		$('.display').html('<?php echo $text_display; ?>&nbsp;<img src="catalog/view/theme/thebabyshop/image/icon_list.png" alt="<?php echo $text_list; ?>" title="<?php echo $text_list; ?>" /><a onclick="display(\'grid\');">&nbsp;<img src="catalog/view/theme/thebabyshop/image/icon_grid.png" alt="<?php echo $text_grid; ?>" title="<?php echo $text_grid; ?>" /></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
            html += '<div class="pbox">';				
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			html += '<div class="description hidden-phone hidden-tablet">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating hidden-phone hidden-tablet">' + rating + '</div>';
			}	
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			

						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			$(element).html(html);
		});	
					
		$('.display').html('<?php echo $text_display; ?>&nbsp;<img src="catalog/view/theme/thebabyshop/image/icon_list.png" alt="<?php echo $text_list; ?>" title="<?php echo $text_list; ?>" onclick="display(\'list\');"/>&nbsp;<img src="catalog/view/theme/thebabyshop/image/icon_grid.png" alt="<?php echo $text_grid; ?>" title="<?php echo $text_grid; ?>"/><a onclick="display(\'list\');">');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>