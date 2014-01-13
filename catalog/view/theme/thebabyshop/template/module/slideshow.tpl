<?php if($this->config->get('thebabyshop_homepage_banner_slider_type') ==0) { ?>
<section id="banner-slider" class="fluid_container">
   <div class="camera_wrap camera_azure_skin" id="camera_wrap_<?php echo $module; ?>">
   <?php foreach ($banners as $banner) { ?>
       <div data-link="<?php echo $banner['link']; ?>" data-thumb="<?php echo $banner['image']; ?>" data-src="<?php echo $banner['image']; ?>"></div>
   <?php } ?>
   </div>
</section>   
      
<script>
	jQuery(function(){		
		jQuery('#camera_wrap_<?php echo $module; ?>').camera({
			thumbnails: false,
			loader: true,
                        fx: 'simpleFade',
                        height: '66%',
                        hover: true,
		});	
	});
</script>
<?php }	?>
<?php if($this->config->get('thebabyshop_homepage_banner_slider_type') ==1) { ?>
<section id="banner-slider" class="flexslider">
   <ul class="slides">
   <?php foreach ($banners as $banner) { ?>
	  <li>
      <?php if ($banner['link']) { ?>
      <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
      <?php } else { ?>
      <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
      <?php } ?>
	  </li>    
   <?php } ?>
   </ul>
</section>
      
<script type="text/javascript">
	$(window).load(function() {
	$('.flexslider').flexslider();
	});
</script>
<?php }	?>    