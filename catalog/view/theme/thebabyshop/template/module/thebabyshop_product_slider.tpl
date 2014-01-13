<section id="product-slider">
                <div id="ei-slider" class="ei-slider">
                    <ul class="ei-slider-large">
                    <?php foreach ($products as $product) { ?>
						<li>
                        <?php if ($product['thumb']) { ?>
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                        <?php } ?>
                            <div class="ei-title">
                                <h2><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
                                <h3><a href="<?php echo $product['href']; ?>"><?php echo $product['description']; ?></a></h3>                                
                                <h4><a href="<?php echo $product['href']; ?>">
                                <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                                <?php } else { ?>
                                <span class="price-old" style="font-size:16px; text-decoration:line-through"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?>
                                </span>
                                <?php } ?>
                                </a><br /><br />
                                <a href="<?php echo $product['href']; ?>" class="button" style="font-size:14px;font-weight:bold"><?php echo $text_shop_now; ?></a>
                                </h4>
                            </div>
                        </li>
                    <?php } ?>    
                    </ul>
                    <ul class="ei-slider-thumbs">
                        <li class="ei-slider-element">Current</li>
                    <?php foreach ($products as $product) { ?>
						<li><a href="#"><?php echo $product['name']; ?></a></li>
                    <?php } ?> 
                    </ul>
                </div>
</section>

        <script type="text/javascript" src="catalog/view/theme/thebabyshop/js/jquery.eislideshow.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#ei-slider').eislideshow({
					animation			: 'center',
					autoplay			: true,
					slideshow_interval	: 3000,
					titlesFactor		: 0
                });
            });
        </script>
