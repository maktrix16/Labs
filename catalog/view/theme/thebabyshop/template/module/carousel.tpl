<?php if ($layout_id == '1') { ?>
<section id="banners-<?php echo $module; ?>" class="span">
<?php } else { ?>
<section id="banners-<?php echo $module; ?>">
<?php } ?>
<div class="es-carousel-banners-wrapper">
<div id="carousel<?php echo $module; ?>" class="es-carousel-banners">
  <ul >
    <?php foreach ($banners as $banner) { ?>
    <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" width="<?php echo $banner['width']; ?>" /></a></li>
    <?php } ?>
  </ul>
</div>
</div>
</section>


<script type="text/javascript">

	$('#carousel<?php echo $module; ?>').elastislide({

		speed       : 450,	// animation speed
		easing      : '',	// animation easing effect


		// the minimum number of items to show. When we resize the window, this will make sure minItems are always shown (unless of course minItems is higher than the total number of elements)
				minItems	: 1
			});

	//Fix to adjust on windows resize
	$(window).triggerHandler('resize.elastislide');

</script>


