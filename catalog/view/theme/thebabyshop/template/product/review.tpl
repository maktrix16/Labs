<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="content" style="background:none">

<div class="reviews-left">
<b><?php echo $review['author']; ?></b><span><img src="catalog/view/theme/thebabyshop/image/stars/stars<?php echo $this->config->get('thebabyshop_mid_prod_stars_color'); ?>-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" /></span>
<span>(<?php echo $review['date_added']; ?>)</span>
</div>

<div class="reviews-right">
<div class="review-arrow hidden-phone"></div>
<?php echo $review['text']; ?>
</div>
  
</div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>
