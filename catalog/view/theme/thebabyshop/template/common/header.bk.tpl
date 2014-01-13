<!DOCTYPE html>
<!--[if IE 7]>                  <html xmlns:fb="http://ogp.me/ns/fb#" class="ie7 no-js"  dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"     <![endif]-->
<!--[if lte IE 8]>              <html xmlns:fb="http://ogp.me/ns/fb#" class="ie8 no-js"  dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html xmlns:fb="http://ogp.me/ns/fb#" class="not-ie no-js" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">  <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/stylesheet-mobile.css" />
<?php if($this->config->get('thebabyshop_others_totop') =='1') { ?>	
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/ui.totop.css" media="screen" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/tipTip.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/flexslider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/elastic_slideshow.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/camera.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/cloud-zoom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/dcaccordion.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/customscrollbar.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/lc_dropdown.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/jquery.customscrollbar.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/jquery.dcjqaccordion.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/jquery.elastislide.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/jquery.bxSlider.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/camera.js"></script>
<script type="text/javascript" src="catalog/view/theme/thebabyshop/js/custom.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script> document.createElement('header'); document.createElement('section'); document.createElement('article'); document.createElement('aside'); document.createElement('nav'); document.createElement('footer'); </script>
<!--[if lt IE 9]> 
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script> 
<![endif]--> 
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/ie8.css" />
<![endif]-->
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/thebabyshop/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if($this->config->get('thebabyshop_status') =='1') { ?>	
<?php if($this->config->get('thebabyshop_skin') =='1') { ?>	
<style type="text/css">

<?php if($this->config->get('thebabyshop_homepage_category_wall_icon_status') == 0) { ?>
/******************************************************/
/*  GENERAL OPTIONS > Home Page
/******************************************************/

/*  Category Wall  */
.box-category-home > div.span2, .box-category-home > div.span3 {
	min-height: 200px;
}
<?php } ?>

<?php if($this->config->get('thebabyshop_product_zoom_type') ==1) { ?>
/******************************************************/
/*  GENERAL OPTIONS > Product Page
/******************************************************/

/*  Image Zoom  */
.product-info .image-additional img {width: 98px;height: 98px;}
<?php } ?>


/******************************************************/
/*  COLORS AND STYLES > General
/******************************************************/

/*  Layout  */
<?php if($this->config->get('thebabyshop_layout_style') == 1) { ?>
.wrapper {width: 980px;margin: 0 auto 25px}
@media (max-width: 767px) {
.wrapper {width: auto;margin: 0 10px 15px}
}
@media (min-width: 768px) and (max-width: 979px) {
.wrapper {width: 744px;margin: 0 auto 25px}
}
<?php } ?>

/*  Body background color and pattern  */
body {
<?php if($this->config->get('thebabyshop_body_background_color') !='') { ?>
	background-color: <?php echo $this->config->get('thebabyshop_body_background_color'); ?>;
<?php }	
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('thebabyshop_bg_image_custom') !='') { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_bg_image_custom') ?>"); ?>;
<?php } else if($this->config->get('thebabyshop_pattern_thebabyshop') !='') { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/patterns/p<?php echo $this->config->get('thebabyshop_pattern_thebabyshop'); ?>.png");
<?php } else { ?>
	background-image: none;
<?php } 
if(($this->config->get('thebabyshop_bg_image_position') !='') || ($this->config->get('thebabyshop_bg_image_repeat') !='') || ($this->config->get('thebabyshop_bg_image_attachment') !='')) { ?>
	background-position: <?php echo $this->config->get('thebabyshop_bg_image_position'); ?>!important;
	background-repeat: <?php echo $this->config->get('thebabyshop_bg_image_repeat'); ?>!important;
	background-attachment: <?php echo $this->config->get('thebabyshop_bg_image_attachment'); ?>!important;
<?php } ?>
}

/*  Headings color  */
h1, h2, h3, h4, h5, h6, .welcome, .box-category-home > div.span2 a, .box-category-home > div.span3 a, .product-info .description span.stock, .commentList li .name, .commentList li .name a {color: <?php echo $this->config->get('thebabyshop_headings_color'); ?>;}

/*  Body text color  */
body, label, .dropdown_l li a, .box-product .name a, .box-product .l_column .name a, .box-category > ul > li > a, .box-category > ul > li a.active, .box-category > ul > li ul > li > a, .box-category-home > div.span2 > div > ul > li > a, .box-category-home > div.span3 > div > ul > li > a, .box-manufacturers-home > div.span2 > div > ul > li > a, .box-manufacturers-home > div.span3 > div > ul > li > a, .product-list .name a, .product-grid .name a, .product-grid .description, .product-name h1, .product-info .description a, .product-info .wishlist-compare a, .product-info .review a, .product-info a, .product-related .name a, .htabs a, .tags a, .es-carousel .name a, .blogCategories li a, .blogModule .title, .blogModule li a, .articleHeader span a, .articleBottom #articleRelated a {color: <?php echo $this->config->get('thebabyshop_body_text_color'); ?>;}
.breadcrumb a, .category-list a, table.form > * > * > td {color: <?php echo $this->config->get('thebabyshop_body_text_color'); ?>!important;}

/*  Light text color  */
#t-header #search input, .pagination .results, .help, .box-category-home > div.span2 > div.all a, .box-category-home > div.span3 > div.all a, .product-grid .wishlist a, .product-grid .compare a, .product-list .wishlist a, .product-list .compare a, .product-list .description, .product-info .description span, .product-info .cart, .product-info .cart div > span, .product-info .cart .minimum, #content .content .reviews-left span, .breadcrumb, .product-info .review, .blogModule .info, .articleHeader span, .updateInfo, .blogModule li, #commentRespond .note, .commentList li .created {color: <?php echo $this->config->get('thebabyshop_light_text_color'); ?>;}

/*  Other links color  */
a, a:visited, a b, .pagination .links b, .product-custom-block a {color: <?php echo $this->config->get('thebabyshop_other_links_color'); ?>;}
.es-nav span:hover, .product-related .bx-wrapper div.bx-next:hover, .product-related .bx-wrapper div.bx-prev:hover, #toTopHover, .flexslider:hover .flex-next:hover, .flexslider:hover .flex-prev:hover, .camera_prevThumbs:hover, .camera_nextThumbs:hover, .camera_prev:hover, .camera_next:hover, .camera_commands:hover, .camera_thumbs_cont:hover, .camera_wrap .camera_pag .camera_pag_ul li.cameracurrent > span, .flex-control-paging li a.flex-active {background-color: <?php echo $this->config->get('thebabyshop_other_links_color'); ?>!important;}

/*  Links hover color  */
a:hover {color: <?php echo $this->config->get('thebabyshop_links_hover_color'); ?>!important;}

/*  General icons style  */rr
.product-list .wishlist, span.wishlist, .product-grid .wishlist {background: url("catalog/view/theme/thebabyshop/image/thebabyshop-wishlist-<?php echo $this->config->get('thebabyshop_general_icons_style'); ?>.png") no-repeat scroll left transparent;}
.product-list .compare, span.compare, .product-grid .compare {background: url("catalog/view/theme/thebabyshop/image/thebabyshop-compare-<?php echo $this->config->get('thebabyshop_general_icons_style'); ?>.png") no-repeat scroll left transparent;}

/*  Main Column  */
.wrapper {
<?php if(($this->config->get('thebabyshop_main_column_background_color') !='') && ($this->config->get('thebabyshop_main_column_status') ==1)) { ?>
	background-color: <?php echo $this->config->get('thebabyshop_main_column_background_color'); ?>;
<?php }	
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('thebabyshop_bg_image_mc_custom') !='') { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_bg_image_mc_custom') ?>"); ?>;
<?php } else if($this->config->get('thebabyshop_pattern_thebabyshop_mc') !='') { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/patterns/p<?php echo $this->config->get('thebabyshop_pattern_thebabyshop_mc'); ?>.png");
<?php } else { ?>
	background-image: none;
<?php } 
if(($this->config->get('thebabyshop_bg_image_mc_position') !='') || ($this->config->get('thebabyshop_bg_image_mc_repeat') !='') || ($this->config->get('thebabyshop_bg_image_mc_attachment') !='')) { ?>
	background-position: <?php echo $this->config->get('thebabyshop_bg_image_mc_position'); ?>!important;
	background-repeat: <?php echo $this->config->get('thebabyshop_bg_image_mc_repeat'); ?>!important;
	background-attachment: <?php echo $this->config->get('thebabyshop_bg_image_mc_attachment'); ?>!important;
<?php } 
if($this->config->get('thebabyshop_main_column_border_status') ==1) { ?>
	border: <?php echo $this->config->get('thebabyshop_main_column_border_size'); ?>px <?php echo $this->config->get('thebabyshop_main_column_border_style'); ?> <?php echo $this->config->get('thebabyshop_main_column_border_color'); ?>;
<?php } 
if($this->config->get('thebabyshop_main_column_radius') !='') { ?>
	-webkit-border-radius: <?php echo $this->config->get('thebabyshop_main_column_radius'); ?>px;
	-moz-border-radius: <?php echo $this->config->get('thebabyshop_main_column_radius'); ?>px;
	-khtml-border-radius: <?php echo $this->config->get('thebabyshop_main_column_radius'); ?>px;
	border-radius: <?php echo $this->config->get('thebabyshop_main_column_radius'); ?>px;
<?php } ?>
}

/*  Left/Right Column  */
#column-left, #column-right {
<?php if(($this->config->get('thebabyshop_left_right_column_background_color') !='') && ($this->config->get('thebabyshop_left_right_column_status') ==1)) { ?>	
	background-color: <?php echo $this->config->get('thebabyshop_left_right_column_background_color'); ?>!important;
<?php }	
if($this->config->get('thebabyshop_left_right_column_radius') !='') { ?>
	-webkit-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_radius'); ?>px;
	-moz-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_radius'); ?>px;
	-khtml-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_radius'); ?>px;
	border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_radius'); ?>px;
<?php }
if($this->config->get('thebabyshop_left_right_column_shadow') ==1) { ?>
	box-shadow: 0 1px 3px rgba(0,0,0,0.3); -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.3); -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.3);
<?php } ?>
}

/*  Left/Right Column Heading  */
.box .box-heading {
<?php if(($this->config->get('thebabyshop_left_right_column_head_background_color') !='') && ($this->config->get('thebabyshop_left_right_column_head_status') ==1)) { ?>	
	background-color: <?php echo $this->config->get('thebabyshop_left_right_column_head_background_color'); ?>!important;
<?php }
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('thebabyshop_left_right_column_head_custom') !='') { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_left_right_column_head_custom') ?>"); ?>;
<?php } else { ?>
	background-image: none;
<?php } 
if($this->config->get('thebabyshop_left_right_column_head_radius') !='') { ?>
	-webkit-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_head_radius'); ?>px;
	-moz-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_head_radius'); ?>px;
	-khtml-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_head_radius'); ?>px;
	border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_head_radius'); ?>px;
<?php }
if($this->config->get('thebabyshop_left_right_column_head_shadow') ==1) { ?>
	box-shadow: 0 1px 3px rgba(0,0,0,0.3); -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.3); -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.3);
<?php }	
if($this->config->get('thebabyshop_left_right_column_head_status') ==0) { ?>	
	padding-top: 5px;
<?php }	
if($this->config->get('thebabyshop_left_right_column_head_custom') !='') { ?>	
	padding-top: 0;		
<?php } ?>
}
.box .box-heading h2, .boxPlain .box-heading span {color: <?php echo $this->config->get('thebabyshop_left_right_column_head_title_color'); ?>;}

/*  Left/Right Column Box  */
.box {
<?php if(($this->config->get('thebabyshop_left_right_column_box_background_color') !='') && ($this->config->get('thebabyshop_left_right_column_box_status') ==1)) { ?>	
	background-color: <?php echo $this->config->get('thebabyshop_left_right_column_box_background_color'); ?>!important;
<?php }
if($this->config->get('thebabyshop_left_right_column_box_radius') !='') { ?>
	-webkit-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_box_radius'); ?>px;
	-moz-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_box_radius'); ?>px;
	-khtml-border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_box_radius'); ?>px;
	border-radius: <?php echo $this->config->get('thebabyshop_left_right_column_box_radius'); ?>px;
<?php }
if($this->config->get('thebabyshop_left_right_column_box_shadow') ==1) { ?>
	box-shadow: 0 1px 3px rgba(0,0,0,0.3); -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.3); -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.3);
<?php } ?>
}
.box-category > ul > li + li, .box-product > .l_column + .l_column, .box-product ol li + li {
	border-top: <?php echo $this->config->get('thebabyshop_left_right_column_separator_size'); ?>px <?php echo $this->config->get('thebabyshop_left_right_column_separator_style'); ?> <?php echo $this->config->get('thebabyshop_left_right_column_separator_color'); ?>!important;	
}

/*  Content Column  */
#content, #content-blog {
<?php if(($this->config->get('thebabyshop_content_column_background_color') !='') && ($this->config->get('thebabyshop_content_column_status') ==1)) { ?>	
	background-color: <?php echo $this->config->get('thebabyshop_content_column_background_color'); ?>!important;
<?php }	
if($this->config->get('thebabyshop_content_column_radius') !='') { ?>
	-webkit-border-radius: <?php echo $this->config->get('thebabyshop_content_column_radius'); ?>px;
	-moz-border-radius: <?php echo $this->config->get('thebabyshop_content_column_radius'); ?>px;
	-khtml-border-radius: <?php echo $this->config->get('thebabyshop_content_column_radius'); ?>px;
	border-radius: <?php echo $this->config->get('thebabyshop_content_column_radius'); ?>px;
<?php }
if($this->config->get('thebabyshop_content_column_shadow') ==1) { ?>
	box-shadow: 0 1px 3px rgba(0,0,0,0.3); -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.3); -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.3);
<?php } ?>
}
.product-list > div + div, .product-list > div + div.span-first-child {
    border-top: <?php echo $this->config->get('thebabyshop_content_column_separator_size'); ?>px <?php echo $this->config->get('thebabyshop_content_column_separator_style'); ?> 
	<?php echo $this->config->get('thebabyshop_content_column_separator_color'); ?>!important;	
}
#content .l_column, #content .box .box-heading h2, .bestseller h2, .featured h2, .latest h2, .special h2, .articleCat {
    border-bottom: <?php echo $this->config->get('thebabyshop_content_column_separator_size'); ?>px <?php echo $this->config->get('thebabyshop_content_column_separator_style'); ?> 
	<?php echo $this->config->get('thebabyshop_content_column_separator_color'); ?>!important;	
}
.product-compare, .box-category-home > div.span2, .box-category-home > div.span3 {
    border-left: 1px <?php echo $this->config->get('thebabyshop_content_column_separator_style'); ?> <?php echo $this->config->get('thebabyshop_content_column_separator_color'); ?>;	
}
.product-info .image-additional img {border:1px solid #FFF;}
.product-related > div + div {border-top: 1px <?php echo $this->config->get('thebabyshop_content_column_separator_style'); ?> <?php echo $this->config->get('thebabyshop_content_column_separator_color'); ?>;}
@media screen and (max-width: 767px) {
.product-compare {border-left: none;}
}
.box-category-home > div.span-first-child {border: none;}
.box-manufacturers-home > div.span2, .box-manufacturers-home > div.span3 {
    border-top: 1px <?php echo $this->config->get('thebabyshop_content_column_separator_style'); ?> <?php echo $this->config->get('thebabyshop_content_column_separator_color'); ?>;
	border-bottom: 1px <?php echo $this->config->get('thebabyshop_content_column_separator_style'); ?> <?php echo $this->config->get('thebabyshop_content_column_separator_color'); ?>;	
	border-right: 1px <?php echo $this->config->get('thebabyshop_content_column_separator_style'); ?> <?php echo $this->config->get('thebabyshop_content_column_separator_color'); ?>;	
}
.box-manufacturers-home > div.span-first-child {
    border: 1px <?php echo $this->config->get('thebabyshop_content_column_separator_style'); ?> <?php echo $this->config->get('thebabyshop_content_column_separator_color'); ?>;
}
<?php if($this->config->get('thebabyshop_content_column_status') ==1) { ?>
#content-home .span {width: 900px;margin-left: 20px;}
.box-product > div {width: 200px!important;}
.box-product > div > div.pbox, .es-carousel ul li div.pbox {padding: 5px 4px 10px;}
.es-carousel-banners ul li {margin: 5px 19px 20px 0!important;}
@media (max-width: 767px) {
#content-home {float: left;width: 100%;}
#content-home .span {width: auto;max-width: 100%;margin-left: 10px;margin-right: 10px;clear: both;}
.es-carousel-wrapper, .es-carousel-banners {max-width: 243px;}
.es-carousel ul li {margin-right: 0!important;}
}
@media (min-width: 768px) and (max-width: 979px) {
#content-home .span {width: 705px;margin-left: 10px;}
.box-product .span3 {margin-left: 13px;}
.es-carousel ul li {margin-right: 12px!important;}
}
<?php } ?>
.camera_wrap, .flexslider {margin: <?php echo $this->config->get('thebabyshop_content_column_radius'); ?>px 0 4px !important;}
.ei-slider {margin: <?php echo $this->config->get('thebabyshop_content_column_radius'); ?>px auto 70px;}


/******************************************************/
/*  COLORS AND STYLES > Prices
/******************************************************/

.price, .total {color: <?php echo $this->config->get('thebabyshop_price_color'); ?>!important;}
.price-old, .wishlist-info tbody .price s {color: <?php echo $this->config->get('thebabyshop_price_old_color'); ?>!important;}
.price-new {color: <?php echo $this->config->get('thebabyshop_price_new_color'); ?>!important;}
.price-tax, .product-info .price .reward, .product-info .price .discount {color: <?php echo $this->config->get('thebabyshop_price_tax_color'); ?>!important;}


/******************************************************/
/*  COLORS AND STYLES > Buttons
/******************************************************/

a.button, input.button {
	background-color: <?php echo $this->config->get('thebabyshop_button_background_color'); ?>;
	border-color: <?php echo $this->config->get('thebabyshop_button_border_top_color'); ?> <?php echo $this->config->get('thebabyshop_button_border_bottom_color'); ?> <?php echo $this->config->get('thebabyshop_button_border_bottom_color'); ?> <?php echo $this->config->get('thebabyshop_button_border_top_color'); ?>;
	color: <?php echo $this->config->get('thebabyshop_button_text_color'); ?>!important;
}
a.button:hover, input.button:hover, .ei-title h4 a.button:hover {
	background-color: <?php echo $this->config->get('thebabyshop_button_background_hover_color'); ?>;
	border-color: <?php echo $this->config->get('thebabyshop_button_border_top_hover_color'); ?> <?php echo $this->config->get('thebabyshop_button_border_bottom_hover_color'); ?> <?php echo $this->config->get('thebabyshop_button_border_bottom_hover_color'); ?> <?php echo $this->config->get('thebabyshop_button_border_top_hover_color'); ?>;
    color: <?php echo $this->config->get('thebabyshop_button_text_color'); ?>!important;	
}
a.button-exclusive, input.button-exclusive {
	background-color: <?php echo $this->config->get('thebabyshop_button_exclusive_background_color'); ?>;
	border-color: <?php echo $this->config->get('thebabyshop_button_exclusive_border_top_color'); ?> <?php echo $this->config->get('thebabyshop_button_exclusive_border_bottom_color'); ?> <?php echo $this->config->get('thebabyshop_button_exclusive_border_bottom_color'); ?> <?php echo $this->config->get('thebabyshop_button_exclusive_border_top_color'); ?>;
	color: <?php echo $this->config->get('thebabyshop_button_exclusive_text_color'); ?>!important;
}
a.button-exclusive:hover, input.button-exclusive:hover {
	background-color: <?php echo $this->config->get('thebabyshop_button_exclusive_background_hover_color'); ?>;
	border-color: <?php echo $this->config->get('thebabyshop_button_exclusive_border_top_hover_color'); ?> <?php echo $this->config->get('thebabyshop_button_exclusive_border_bottom_hover_color'); ?> <?php echo $this->config->get('thebabyshop_button_exclusive_border_bottom_hover_color'); ?> <?php echo $this->config->get('thebabyshop_button_exclusive_border_top_hover_color'); ?>;
	color: <?php echo $this->config->get('thebabyshop_button_exclusive_text_color'); ?>!important;
}
<?php if($this->config->get('thebabyshop_button_border_radius') !='') { ?>
a.button, input.button, a.button-exclusive, input.button-exclusive {
    border-radius: <?php echo $this->config->get('thebabyshop_button_border_radius'); ?>px;
	-webkit-border-radius: <?php echo $this->config->get('thebabyshop_button_border_radius'); ?>px;
	-moz-border-radius: <?php echo $this->config->get('thebabyshop_button_border_radius'); ?>px;
	-khtml-border-radius: <?php echo $this->config->get('thebabyshop_button_border_radius'); ?>px;	
}
<?php }
if($this->config->get('thebabyshop_button_text_shadow') == 1) { ?>
a.button, input.button, a.button-exclusive, input.button-exclusive {
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);
}
<?php } ?>


/******************************************************/
/*  COLORS AND STYLES > Top Area
/******************************************************/

/*  Top Area background color and pattern  */
#header {
background-position: top center!important;
background-repeat: repeat-y!important;
background-attachment: scroll!important;
}

/*  Logo  */
<?php if($this->config->get('thebabyshop_logo_position') =='left') { ?>	
#t-header #logo {margin-left: 25px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='left') && ($this->config->get('thebabyshop_search_bar_position') =='left')) { ?>
#t-header #logo {padding-top: 30px;}
#t-header #search {top: 45px;left: 0;width: 210px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='left') && ($this->config->get('thebabyshop_search_bar_position') =='center')) { ?>
#t-header {min-height: 115px;}
#t-header #search {top: 45px;right: 320px;width: 210px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='left') && ($this->config->get('thebabyshop_search_bar_position') =='right')) { ?>
#t-header #search {top: 45px;right: 3px;width: 210px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='center') && ($this->config->get('thebabyshop_search_bar_position') =='left')) { ?>	
#t-header {min-height: 115px;}
#t-header #logo {padding-top: 30px;text-align: center;margin-left: 315px;}
#t-header #search {top: 45px;left: 0;width: 210px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='center') && ($this->config->get('thebabyshop_search_bar_position') =='center')) { ?>	
#t-header {min-height: 145px;}
#t-header #logo {padding-top: 25px;text-align: center;margin-left: 315px;}
#t-header #search {right: 320px;top: 100px;width: 210px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='center') && ($this->config->get('thebabyshop_search_bar_position') =='right')) { ?>	
#t-header #logo {padding-top: 45px;text-align: center;margin-left: 315px;}
#t-header #search {top: 45px;right: 3px;width: 210px;}
<?php } ?>	
@media (max-width: 767px) {
/*#t-header #logo {margin-left: inherit;}*/
/*#t-header #search {top: 5px;right: inherit;width: 210px}*/
}
@media (min-width: 768px) and (max-width: 979px) {
<?php if(($this->config->get('thebabyshop_logo_position') =='left') && ($this->config->get('thebabyshop_search_bar_position') =='left')) { ?>	
#t-header .links a + a {margin-left: 14px;padding-left: 14px}
#t-header #search {width: 210px;}
<?php } ?>	
<?php if(($this->config->get('thebabyshop_logo_position') =='left') && ($this->config->get('thebabyshop_search_bar_position') =='center')) { ?>
#t-header .links a + a {margin-left: 14px;padding-left: 14px}
#t-header #search {right: 270px;width: 210px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='left') && ($this->config->get('thebabyshop_search_bar_position') =='right')) { ?>
#t-header .links a + a {margin-left: 14px;padding-left: 14px}
#t-header #search {width: 210px;}
<?php } ?>	
<?php if(($this->config->get('thebabyshop_logo_position') =='center') && ($this->config->get('thebabyshop_search_bar_position') =='left')) { ?>		
#t-header .links a + a {margin-left: 14px;padding-left: 14px}
#t-header #logo {margin-left: 207px;}
#t-header #search {top: 45px;left: 0;width: 210px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='center') && ($this->config->get('thebabyshop_search_bar_position') =='center')) { ?>
#t-header .links a + a {margin-left: 14px;padding-left: 14px}
#t-header #logo {margin-left: 207px;}
#t-header #search {right: 234px;top: 100px;width: 210px;}
<?php } ?>
<?php if(($this->config->get('thebabyshop_logo_position') =='center') && ($this->config->get('thebabyshop_search_bar_position') =='right')) { ?>	
#t-header .links a + a {margin-left: 14px;padding-left: 14px}
#t-header #logo {margin-left: 207px;}
#t-header #search {top: 50px;right: 3px;width: 210px;}
<?php } ?>
}

/*  Search Bar  */
<?php if($this->config->get('thebabyshop_search_bar_style') ==2) { ?>
#t-header .button-search {
	right: -3px;
	top: 1px;
	background: url('catalog/view/theme/thebabyshop/image/button-search2.png') center center no-repeat;
	width: 34px;
	height: 28px;
	border-left: 1px solid #DFDFDF;
}
@media (max-width: 767px) {
/*#t-header .button-search {right: -3px;top: 8px;}*/
}
@media (min-width: 768px) and (max-width: 979px) {
/*#t-header .button-search {right: -3px;}*/
}
<?php }	?>
<?php if($this->config->get('thebabyshop_search_bar_style') ==3) { ?>
#t-header .button-search {
	right: -3px;
	top: 3px;
	background: url('catalog/view/theme/thebabyshop/image/button-search3.png') center center no-repeat <?php echo $this->config->get('thebabyshop_search_bar_style_color'); ?>;
	width: 24px;
	height: 24px;
	border-left: none;
	border-radius: 30px;
}
#t-header #search input {border-radius: 28px;}
@media (max-width: 767px) {
#t-header .button-search {right: 2px;top: 10px;}
}
@media (min-width: 768px) and (max-width: 979px) {
#t-header .button-search {right: 1px;}	
}
<?php }	?>

#t-header #search input { 
<?php if(($this->config->get('thebabyshop_search_font_size') !='') || ($this->config->get('thebabyshop_search_font_weight') !='')) { ?>
	font-size: <?php echo $this->config->get('thebabyshop_search_font_size'); ?>px;
    font-weight: <?php echo $this->config->get('thebabyshop_search_font_weight'); ?>;
<?php }	
if($this->config->get('thebabyshop_search_font_uppercase') ==1) { ?>	
	text-transform: uppercase;
<?php } ?>
}
#t-header #search input {border-color: <?php echo $this->config->get('thebabyshop_search_bar_border_color'); ?>;}

/*  Links Section  */
#t-header .links a {color: <?php echo $this->config->get('thebabyshop_top_area_ls_link_color'); ?>;border-left: 1px solid #333333;}
#t-header .links a:hover {color: <?php echo $this->config->get('thebabyshop_top_area_ls_link_color_hover'); ?>!important;text-decoration: underline;}
#t-header .links a + a {border-left: 1px solid <?php echo $this->config->get('thebabyshop_top_area_ls_link_separator_color'); ?>;}

/*  Cart Section  */
#t-header #cart .heading a span {color: <?php echo $this->config->get('thebabyshop_top_area_cart_link_color'); ?>!important;
        height: 12px;
        display: block;}
#t-header #cart.active .heading a span {color: <?php echo $this->config->get('thebabyshop_top_area_cart_link_color_hover'); ?>!important;}

/*  Language/Currency Section  */
.dropdown_l .selected_l {color: <?php echo $this->config->get('thebabyshop_top_area_lc_text_color'); ?>;}

/*  Dropdowns  */
#t-header #cart .content {
	background: <?php echo $this->config->get('thebabyshop_top_area_dropdown_background_color'); ?>;
}


/******************************************************/
/*  COLORS AND STYLES > Main Menu
/******************************************************/

/*  Main Menu Bar   */
#menu {
<?php if(($this->config->get('thebabyshop_mm_background_color') !='') && ($this->config->get('thebabyshop_mm_background_color_status') ==1)) { ?>	
	background-color: <?php echo $this->config->get('thebabyshop_mm_background_color'); ?>!important;
<?php }
if(($this->config->get('thebabyshop_mm_border_top_color') !='') && ($this->config->get('thebabyshop_mm_border_top_status') ==1)) { ?>	
    border-top: 2px <?php echo $this->config->get('thebabyshop_mm_border_top_style'); ?> <?php echo $this->config->get('thebabyshop_mm_border_top_color'); ?>!important;	
<?php }
if(($this->config->get('thebabyshop_mm_border_bottom_color') !='') && ($this->config->get('thebabyshop_mm_border_bottom_status') ==1)) { ?>	
    border-bottom: 2px <?php echo $this->config->get('thebabyshop_mm_border_bottom_style'); ?> <?php echo $this->config->get('thebabyshop_mm_border_bottom_color'); ?>!important;	
<?php }
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if(($this->config->get('thebabyshop_bg_image_mm_custom') !='') && ($this->config->get('thebabyshop_mm_background_color_status') ==1)) { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_bg_image_mm_custom') ?>"); ?>;
<?php } else if(($this->config->get('thebabyshop_pattern_thebabyshop_mm') !='') && ($this->config->get('thebabyshop_mm_background_color_status') ==1)) { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/patterns/p<?php echo $this->config->get('thebabyshop_pattern_thebabyshop_mm'); ?>.png");
<?php } else { ?>
	background-image: none;
<?php } 
if($this->config->get('thebabyshop_bg_image_mm_repeat') !='') { ?>
	background-repeat: <?php echo $this->config->get('thebabyshop_bg_image_mm_repeat'); ?>!important;
<?php } 
if($this->config->get('thebabyshop_mm_shadow') ==1) { ?>	
	box-shadow: 0 1px 3px rgba(0,0,0,0.3); -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.3); -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.3);
<?php }	
if($this->config->get('thebabyshop_mm_radius') !='') { ?>
    border-radius: <?php echo $this->config->get('thebabyshop_mm_radius'); ?>px;
	-webkit-border-radius: <?php echo $this->config->get('thebabyshop_mm_radius'); ?>px;
	-moz-border-radius: <?php echo $this->config->get('thebabyshop_mm_radius'); ?>px;
	-khtml-border-radius: <?php echo $this->config->get('thebabyshop_mm_radius'); ?>px;
<?php } ?>
}
@media (min-width: 768px) and (max-width: 979px) {
#menu {
<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if(($this->config->get('thebabyshop_bg_image_mmt_custom') !='') && ($this->config->get('thebabyshop_mm_background_color_status') ==1)) { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_bg_image_mmt_custom') ?>"); ?>;
<?php } else if(($this->config->get('thebabyshop_pattern_thebabyshop_mmt') !='') && ($this->config->get('thebabyshop_mm_background_color_status') ==1)) { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/patterns/p<?php echo $this->config->get('thebabyshop_pattern_thebabyshop_mmt'); ?>.png");
<?php } else { ?>
	background-image: none;
<?php } 
if($this->config->get('thebabyshop_bg_image_mmt_repeat') !='') { ?>
	background-repeat: <?php echo $this->config->get('thebabyshop_bg_image_mmt_repeat'); ?>!important;	
<?php } ?>
}
}
<?php if($this->config->get('thebabyshop_mm_separator_status') ==1) { ?>
#menu_oc > ul > li, #menu > ul > li > span, #menu-category-wall > ul > li, #menu_brands > ul > li, .menu_links, #menu_informations > ul > li, #menu_your_account > ul > li, #menu_custom_block > ul > li, #menu_contacts > ul > li {
	border-left: <?php echo $this->config->get('thebabyshop_mm_separator_size'); ?>px <?php echo $this->config->get('thebabyshop_mm_separator_style'); ?> <?php echo $this->config->get('thebabyshop_mm_separator_color'); ?>;
}
<?php } ?>
<?php if($this->config->get('thebabyshop_mm_margin_size') !=0) { ?> 
#menu_oc > ul > li, #menu > ul > li, #menu-category-wall > ul > li, #menu_brands > ul > li, .menu_links, #menu_informations > ul > li, #menu_your_account > ul > li, #menu_custom_block > ul > li, #menu_contacts > ul > li {
	margin-left: <?php echo $this->config->get('thebabyshop_mm_margin_size'); ?>px;
}
<?php } ?>
#menu_oc > ul > li > a, #menu-category-wall > ul > li > a, #menu > ul > li > span, #menu > ul > li > a, #menu_brands > ul > li > a, .menu_links a, #menu_informations > ul > li > a, #menu_your_account > ul > li > span, #menu_custom_block > ul > li > a, #menu_contacts > ul > li > a, #menu #homepage a, .navbar .brand {
<?php if(($this->config->get('thebabyshop_mm_font_size') !='') || ($this->config->get('thebabyshop_mm_font_weight') !='')) { ?>
	font-size: <?php echo $this->config->get('thebabyshop_mm_font_size'); ?>px!important;
    font-weight: <?php echo $this->config->get('thebabyshop_mm_font_weight'); ?>!important;
<?php }
if($this->config->get('thebabyshop_mm_font_uppercase') ==1) { ?>	
	text-transform: uppercase;
<?php } ?>
}

/*  Main Menu Mobile   */
.navbar-inner {
<?php if(($this->config->get('thebabyshop_mm_background_color') !='') && ($this->config->get('thebabyshop_mm_background_color_status') ==1)) { ?>	
	background-color: <?php echo $this->config->get('thebabyshop_mm2_background_color'); ?>;
	border-color: <?php echo $this->config->get('thebabyshop_mm2_background_color'); ?>;
<?php } ?>
}

/*  Home Page Link  */
<?php if(($this->config->get('thebabyshop_mm1_background_color') !='') && ($this->config->get('thebabyshop_mm1_background_color_status') ==1)) { ?> 
#menu #homepage {
	background-color: <?php echo $this->config->get('thebabyshop_mm1_background_color'); ?>!important;
	margin-left: <?php echo $this->config->get('thebabyshop_mm_radius'); ?>px;		
}
<?php }
if(($this->config->get('thebabyshop_mm1_background_hover_color') !='') && ($this->config->get('thebabyshop_mm1_background_color_status') ==1)) { ?> 
#menu #homepage:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm1_background_hover_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm1_link_color') !='') || ($this->config->get('thebabyshop_mm1_link_hover_color') !='')) { ?> 
#menu #homepage a {
	color: <?php echo $this->config->get('thebabyshop_mm1_link_color'); ?>!important;
}	
#menu #homepage a:hover {
	color: <?php echo $this->config->get('thebabyshop_mm1_link_hover_color'); ?>!important;
}
<?php } ?>

/*  Categories Section  */
<?php if(($this->config->get('thebabyshop_mm2_background_color') !='') && ($this->config->get('thebabyshop_mm2_background_color_status') ==1)) { ?> 
#menu > ul > li, #menu-category-wall > ul > li, #menu_oc > ul > li {
	background-color: <?php echo $this->config->get('thebabyshop_mm2_background_color'); ?>!important;
}
<?php }
if(($this->config->get('thebabyshop_mm2_background_hover_color') !='') && ($this->config->get('thebabyshop_mm2_background_color_status') ==1)) { ?> 
#menu > ul > li:hover, #menu-category-wall > ul > li:hover, #menu_oc > ul > li:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm2_background_hover_color'); ?>!important;
}
#menu > ul > li > div, #menu-category-wall > ul > li > div, #menu_oc > ul > li > div {
	border-top: 2px solid <?php echo $this->config->get('thebabyshop_mm2_background_hover_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm2_link_color') !='') || ($this->config->get('thebabyshop_mm2_link_hover_color') !='')) { ?> 
#menu > ul > li > span, #menu-category-wall > ul > li > a, #menu > ul > li > a, #menu_oc > ul > li > a, .navbar .brand {
	color: <?php echo $this->config->get('thebabyshop_mm2_link_color'); ?>!important;
}	
#menu > ul > li > span:hover, #menu-category-wall > ul > li > a:hover, #menu > ul > li > a:hover, #menu_oc > ul > li > a:hover {
	color: <?php echo $this->config->get('thebabyshop_mm2_link_hover_color'); ?>!important;
}
<?php }
if($this->config->get('thebabyshop_mm2_main_category_link_color') !='') { ?> 
div.menu-category-wall-sub-name a {color: <?php echo $this->config->get('thebabyshop_mm2_main_category_link_color'); ?>!important;}	
<?php } ?>

/*  Brands Section  */
<?php if(($this->config->get('thebabyshop_mm3_background_color') !='') && ($this->config->get('thebabyshop_mm3_background_color_status') ==1)) { ?> 
#menu_brands > ul > li {
	background-color: <?php echo $this->config->get('thebabyshop_mm3_background_color'); ?>!important;
}
<?php }
if(($this->config->get('thebabyshop_mm3_background_hover_color') !='') && ($this->config->get('thebabyshop_mm3_background_color_status') ==1)) { ?> 
#menu_brands > ul > li:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm3_background_hover_color'); ?>!important;
}
#menu_brands > ul > li > div {
	border-top: 2px solid <?php echo $this->config->get('thebabyshop_mm3_background_hover_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm3_link_color') !='') || ($this->config->get('thebabyshop_mm3_link_hover_color') !='')) { ?> 
#menu_brands > ul > li > a {
	color: <?php echo $this->config->get('thebabyshop_mm3_link_color'); ?>!important;
}	
#menu_brands > ul > li > a:hover {
	color: <?php echo $this->config->get('thebabyshop_mm3_link_hover_color'); ?>!important;
}
<?php } ?>

/*  Custom Links Section  */
<?php if(($this->config->get('thebabyshop_mm4_background_color') !='') && ($this->config->get('thebabyshop_mm4_background_color_status') ==1)) { ?> 
.menu_links {
	background-color: <?php echo $this->config->get('thebabyshop_mm4_background_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm4_background_hover_color') !='') && ($this->config->get('thebabyshop_mm4_background_color_status') ==1)) { ?> 
.menu_links:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm4_background_hover_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm4_link_color') !='') || ($this->config->get('thebabyshop_mm4_link_hover_color') !='')) { ?> 
.menu_links a {
	color: <?php echo $this->config->get('thebabyshop_mm4_link_color'); ?>!important;
}	
.menu_links:hover a {
	color: <?php echo $this->config->get('thebabyshop_mm4_link_hover_color'); ?>!important;
}
<?php } ?>

/*  Information Section  */
<?php if(($this->config->get('thebabyshop_mm5_background_color') !='') && ($this->config->get('thebabyshop_mm5_background_color_status') ==1)) { ?> 
#menu_informations > ul > li {
	background-color: <?php echo $this->config->get('thebabyshop_mm5_background_color'); ?>!important;
}
<?php }
if(($this->config->get('thebabyshop_mm5_background_hover_color') !='') && ($this->config->get('thebabyshop_mm5_background_color_status') ==1)) { ?> 
#menu_informations > ul > li:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm5_background_hover_color'); ?>!important;
}
#menu_informations > ul > li > div {
	border-top: 2px solid <?php echo $this->config->get('thebabyshop_mm5_background_hover_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm5_link_color') !='') || ($this->config->get('thebabyshop_mm5_link_hover_color') !='')) { ?> 
#menu_informations > ul > li > a {
	color: <?php echo $this->config->get('thebabyshop_mm5_link_color'); ?>!important;
}	
#menu_informations > ul > li > a:hover {
	color: <?php echo $this->config->get('thebabyshop_mm5_link_hover_color'); ?>!important;
}
<?php } ?>

/*  Your Account Section  */
<?php if(($this->config->get('thebabyshop_mm6_background_color') !='') && ($this->config->get('thebabyshop_mm6_background_color_status') ==1)) { ?> 
#menu_your_account > ul > li {
	background-color: <?php echo $this->config->get('thebabyshop_mm6_background_color'); ?>!important;
}
<?php }
if(($this->config->get('thebabyshop_mm6_background_hover_color') !='') && ($this->config->get('thebabyshop_mm6_background_color_status') ==1)) { ?> 
#menu_your_account > ul > li:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm6_background_hover_color'); ?>!important;
}
#menu_your_account > ul > li > div {
	border-top: 2px solid <?php echo $this->config->get('thebabyshop_mm6_background_hover_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm6_link_color') !='') || ($this->config->get('thebabyshop_mm6_link_hover_color') !='')) { ?> 
#menu_your_account > ul > li > span {
	color: <?php echo $this->config->get('thebabyshop_mm6_link_color'); ?>!important;
}	
#menu_your_account > ul > li > span:hover {
	color: <?php echo $this->config->get('thebabyshop_mm6_link_hover_color'); ?>!important;
}
<?php } ?>

/*  Custom Block Section  */
<?php if(($this->config->get('thebabyshop_mm8_background_color') !='') && ($this->config->get('thebabyshop_mm8_background_color_status') ==1)) { ?> 
#menu_custom_block > ul > li {
	background-color: <?php echo $this->config->get('thebabyshop_mm8_background_color'); ?>;
}
<?php }
if(($this->config->get('thebabyshop_mm8_background_hover_color') !='') && ($this->config->get('thebabyshop_mm8_background_color_status') ==1)) { ?> 
#menu_custom_block > ul > li:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm8_background_hover_color'); ?>!important;
}
#menu_custom_block > ul > li > div {
	border-top: 2px solid <?php echo $this->config->get('thebabyshop_mm8_background_hover_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm8_link_color') !='') || ($this->config->get('thebabyshop_mm8_link_hover_color') !='')) { ?> 
#menu_custom_block > ul > li > a {
	color: <?php echo $this->config->get('thebabyshop_mm8_link_color'); ?>!important;
}	
#menu_custom_block > ul > li > a:hover {
	color: <?php echo $this->config->get('thebabyshop_mm8_link_hover_color'); ?>!important;
}
<?php } ?>

/*  Contact Section  */
<?php if(($this->config->get('thebabyshop_mm7_background_color') !='') && ($this->config->get('thebabyshop_mm7_background_color_status') ==1)) { ?> 
#menu_contacts > ul > li {
	background-color: <?php echo $this->config->get('thebabyshop_mm7_background_color'); ?>!important;
}
<?php }
if(($this->config->get('thebabyshop_mm7_background_hover_color') !='') && ($this->config->get('thebabyshop_mm7_background_color_status') ==1)) { ?> 
#menu_contacts > ul > li:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm7_background_hover_color'); ?>!important;
}
#menu_contacts > ul > li > div {
	border-top: 2px solid <?php echo $this->config->get('thebabyshop_mm7_background_hover_color'); ?>!important;
}	
<?php }
if(($this->config->get('thebabyshop_mm7_link_color') !='') || ($this->config->get('thebabyshop_mm7_link_hover_color') !='')) { ?> 
#menu_contacts > ul > li > a {
	color: <?php echo $this->config->get('thebabyshop_mm7_link_color'); ?>!important;
}	
#menu_contacts > ul > li > a:hover {
	color: <?php echo $this->config->get('thebabyshop_mm7_link_hover_color'); ?>!important;
}
<?php } ?>

/*  Sub-Menu  */
#menu > ul > li > div, #menu-category-wall > ul > li > div, #menu > ul > li > div > ul > li > div, #menu_oc > ul > li > div, #menu_brands > ul > li > div, #menu_informations > ul > li > div, #menu_your_account > ul > li > div, #menu_custom_block > ul > li > div, #menu_contacts > ul > li:hover > div {
	background-color: <?php echo $this->config->get('thebabyshop_mm_sub_background_color'); ?>!important;
}	
#menu, #menu_informations h1, #menu_your_account h1, #menu_custom_block h1, #menu_contacts h1, #menu_contacts h2, #menu_contacts span {
	color: <?php echo $this->config->get('thebabyshop_mm_sub_text_color'); ?>!important;
}	
#menu > ul > li ul > li > a, #menu-category-wall > ul > li ul > li > a, #menu > ul > li > div > ul > li > a, #menu > ul > li > div > ul > li ul > li > a, #menu > ul > li > div > ul > li > div > ul > li > a, #menu_oc > ul > li > div > ul > li > a, #menu_brands a, #menu_informations > ul > li ul > li > a, #menu_your_account > ul > li ul > li > a, #menu_custom_block > ul > li ul > li > a {
	color: <?php echo $this->config->get('thebabyshop_mm_sub_link_color'); ?>!important;
}	
#menu > ul > li ul > li > a:hover, div.menu-category-wall-sub-name a:hover, #menu-category-wall > ul > li ul > li > a:hover, #menu > ul > li > div > ul > li > div > ul > li > a:hover, #menu_oc > ul > li > div > ul > li > a:hover, #menu_brands a:hover, #menu_informations > ul > li ul > li > a:hover, #menu_your_account > ul > li ul > li > a:hover, #menu_custom_block > ul > li ul > li > a:hover {
	color: <?php echo $this->config->get('thebabyshop_mm_sub_link_hover_color'); ?>!important;
}	
#menu_brands > ul > li > div > div {
	border-left: 1px <?php echo $this->config->get('thebabyshop_mm_sub_separator_style'); ?> <?php echo $this->config->get('thebabyshop_mm_sub_separator_color'); ?>;
}
#menu-category-wall > ul > li > div > div.span-first-child, #menu_brands > ul > li > div > div.span-first-child {border-left: medium none;}
#menu > ul > li ul > li > a:hover, #menu > ul > li > div > ul > li ul > li > a:hover, #menu_oc > ul > li ul > li > a:hover, div.menu-category-wall-sub-name + div > ul > li:hover, #menu_informations > ul > li ul > li > a:hover, #menu_your_account > ul > li ul > li > a:hover, #menu_custom_block > ul > li ul > li > a:hover {
	background-color: <?php echo $this->config->get('thebabyshop_mm_sub_background_hover_color'); ?>!important;
}	
div.menu-category-wall-sub-name, #menu_your_account h1, #menu_informations h1, #menu_custom_block h1, #menu_contacts h1 {
	background-color: <?php echo $this->config->get('thebabyshop_mm_sub_titles_background_color'); ?>!important;
}	
<?php if($this->config->get('thebabyshop_mm_sub_box_shadow') == 1) { ?>
#menu > ul > li > div, #menu-category-wall > ul > li > div, #menu > ul > li > div > ul > li > div, #menu_oc > ul > li > div, #menu_brands > ul > li > div, #menu_informations > ul > li > div, #menu_your_account > ul > li > div, #menu_custom_block > ul > li > div, #menu_contacts > ul > li > div {
	box-shadow: 0 5px 10px rgba(0,0,0,0.3)!important; -webkit-box-shadow: 0 5px 10px rgba(0,0,0,0.3)!important; -moz-box-shadow: 0 5px 10px rgba(0,0,0,0.3)!important;
}	
<?php } ?>


/******************************************************/
/*  COLORS AND STYLES > Midsection
/******************************************************/

/*  Product Box  */
span.sale-icon {
	background-color: <?php echo $this->config->get('thebabyshop_mid_prod_box_sale_icon_color'); ?>!important;
}
/*  Product Page - Buy Section  */
.product-info .buy {
    background-color: <?php echo $this->config->get('thebabyshop_mid_prod_page_buy_section_background_color'); ?>!important;
	-webkit-border-radius: <?php echo $this->config->get('thebabyshop_mid_prod_page_buy_section_radius'); ?>px;
	-moz-border-radius: <?php echo $this->config->get('thebabyshop_mid_prod_page_buy_section_radius'); ?>px;
	-khtml-border-radius: <?php echo $this->config->get('thebabyshop_mid_prod_page_buy_section_radius'); ?>px;
	border-radius: <?php echo $this->config->get('thebabyshop_mid_prod_page_buy_section_radius'); ?>px;	
}
.product-info .description, .product-info .options, .product-info .cart, .product-info .review {
    border-top: <?php echo $this->config->get('thebabyshop_mid_prod_page_buy_section_separator_size'); ?>px <?php echo $this->config->get('thebabyshop_mid_prod_page_buy_section_separator_style'); ?> 
	<?php echo $this->config->get('thebabyshop_mid_prod_page_buy_section_separator_color'); ?>!important;	
}

/*  Product Page - Tabs  */
.htabs {border-bottom:1px solid #7AAED5;}
.htabs a {
	border-top:1px solid #7AAED5;
	border-left:1px solid #7AAED5;
	border-right:1px solid #7AAED5;
}
.htabs a.selected {background:#DDD}
.tab-content {
	border-bottom:1px solid #7AAED5;
	border-left:1px solid #7AAED5;
	border-right:1px solid #7AAED5;
        height:200px;
}

/*  Product Slider on Home Page  */
.ei-slider {
<?php if($this->config->get('thebabyshop_mid_prod_slider_background_color') !='') { ?>
	background-color: <?php echo $this->config->get('thebabyshop_mid_prod_slider_background_color'); ?>;
<?php }	
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('thebabyshop_mid_prod_slider_custom') !='') { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_mid_prod_slider_custom') ?>"); ?>;
<?php } else { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/bg_prod_slider_1.png");
<?php }
if(($this->config->get('thebabyshop_mid_prod_slider_custom_position') !='') || ($this->config->get('thebabyshop_mid_prod_slider_custom_repeat') !='')) { ?>
	background-position: <?php echo $this->config->get('thebabyshop_mid_prod_slider_custom_position'); ?>!important;
	background-repeat: <?php echo $this->config->get('thebabyshop_mid_prod_slider_custom_repeat'); ?>!important;
<?php } ?>
}
@media screen and (max-width: 767px) {
.ei-slider{background-image: none;background-color: #FFFFFF;}
}
.ei-title h2 a{color: <?php echo $this->config->get('thebabyshop_mid_prod_slider_name_color'); ?>;}
.ei-title h3 a{color: <?php echo $this->config->get('thebabyshop_mid_prod_slider_desc_color'); ?>;}
.ei-title h4 a{color: <?php echo $this->config->get('thebabyshop_mid_prod_slider_price_color'); ?>;}
.ei-title h2 a:hover, .ei-title h3 a:hover, .ei-title h4 a:hover, .ei-slider-thumbs li a:hover{color: <?php echo $this->config->get('thebabyshop_mid_prod_slider_links_color_hover'); ?>!important;}
.ei-slider-thumbs li a{background: <?php echo $this->config->get('thebabyshop_mid_prod_slider_bottom_bar_background_color') ?>; color: <?php echo $this->config->get('thebabyshop_mid_prod_slider_bottom_bar_link_color'); ?>;}
.ei-slider-thumbs li a:hover{background: <?php echo $this->config->get('thebabyshop_mid_prod_slider_bottom_bar_background_color_hover'); ?>;}
.ei-slider-thumbs li.ei-slider-element{background: <?php echo $this->config->get('thebabyshop_mid_prod_slider_bottom_bar_background_color_sm'); ?>;}

<?php if($this->config->get('thebabyshop_custom_box_status')== 1) { ?>  
/*  Custom Box  */
.custom_box_left #custom_box_icon, .custom_box_right #custom_box_icon {
    background-color: <?php echo $this->config->get('thebabyshop_custom_box_background'); ?>;
}
.custom_box_right .custom_box, .custom_box_left .custom_box {
    border: 4px solid <?php echo $this->config->get('thebabyshop_custom_box_background'); ?>;
}
<?php } ?>

/******************************************************/
/*  COLORS AND STYLES > Bottom Area
/******************************************************/

/*  Contact Us, Twitter, Custom Column  */
#footer_cnc {
<?php if($this->config->get('thebabyshop_f1_background_color') !='') { ?>
	background-color: <?php echo $this->config->get('thebabyshop_f1_background_color'); ?>;
<?php }	
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('thebabyshop_bg_image_f1_custom') !='') { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_bg_image_f1_custom') ?>"); ?>;
<?php } else if($this->config->get('thebabyshop_pattern_thebabyshop_f1') !='') { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/patterns/p<?php echo $this->config->get('thebabyshop_pattern_thebabyshop_f1'); ?>.png");
<?php } else { ?>
	background-image: none;
<?php } 
if(($this->config->get('thebabyshop_bg_image_f1_position') !='') || ($this->config->get('thebabyshop_bg_image_f1_repeat') !='')) { ?>
	background-position: <?php echo $this->config->get('thebabyshop_bg_image_f1_position'); ?>;
	background-repeat: <?php echo $this->config->get('thebabyshop_bg_image_f1_repeat'); ?>;
<?php } 
if($this->config->get('thebabyshop_f1_border_top_status') ==1) { ?>
	border-top: <?php echo $this->config->get('thebabyshop_f1_border_top_size'); ?>px <?php echo $this->config->get('thebabyshop_f1_border_top_style'); ?> <?php echo $this->config->get('thebabyshop_f1_border_top_color'); ?>;
<?php } ?>
}
#footer_cnc h3 {color: <?php echo $this->config->get('thebabyshop_f1_titles_color'); ?>!important; border-bottom: <?php echo $this->config->get('thebabyshop_f1_titles_border_bottom_size'); ?>px <?php echo $this->config->get('thebabyshop_f1_titles_border_bottom_style'); ?> <?php echo $this->config->get('thebabyshop_f1_titles_border_bottom_color'); ?>!important;}
#footer_cnc_content, #footer_cnc_content span {color: <?php echo $this->config->get('thebabyshop_f1_text_color'); ?>!important;}
#footer_cnc a {color: <?php echo $this->config->get('thebabyshop_f1_link_color'); ?>!important;}
#footer_cnc a:hover, #footer_cnc .twitter a:hover {color: <?php echo $this->config->get('thebabyshop_f1_link_hover_color'); ?>!important;}
#footer_cnc .twitter a {color: <?php echo $this->config->get('thebabyshop_f1_light_text_color'); ?>!important;}
#footer_cnc .twitter ul li {background: url("catalog/view/theme/thebabyshop/image/icons_footer/icon_twitts_<?php echo $this->config->get('thebabyshop_f1_twitts_icon_style'); ?>.png") no-repeat scroll 96% 7px transparent;}

/*  Information, Customer Service, Extras, My Account  */
#footer_info, #footer_info_phone {
<?php if($this->config->get('thebabyshop_f2_background_color') !='') { ?>
	background-color: <?php echo $this->config->get('thebabyshop_f2_background_color'); ?>;
<?php }	
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('thebabyshop_bg_image_f2_custom') !='') { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_bg_image_f2_custom') ?>"); ?>;
<?php } else if($this->config->get('thebabyshop_pattern_thebabyshop_f2') !='') { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/patterns/p<?php echo $this->config->get('thebabyshop_pattern_thebabyshop_f2'); ?>.png");
<?php } else { ?>
	background-image: none;
<?php } 
if(($this->config->get('thebabyshop_bg_image_f2_position') !='') || ($this->config->get('thebabyshop_bg_image_f2_repeat') !='')) { ?>
	background-position: <?php echo $this->config->get('thebabyshop_bg_image_f2_position'); ?>;
	background-repeat: <?php echo $this->config->get('thebabyshop_bg_image_f2_repeat'); ?>;
<?php } 
if($this->config->get('thebabyshop_f2_border_top_status') ==1) { ?>
	border-top: <?php echo $this->config->get('thebabyshop_f2_border_top_size'); ?>px <?php echo $this->config->get('thebabyshop_f2_border_top_style'); ?> <?php echo $this->config->get('thebabyshop_f2_border_top_color'); ?>;	
<?php } ?>
}
#footer_info h3 {color: <?php echo $this->config->get('thebabyshop_f2_titles_color'); ?>!important; border-bottom: <?php echo $this->config->get('thebabyshop_f2_titles_border_bottom_size'); ?>px <?php echo $this->config->get('thebabyshop_f2_titles_border_bottom_style'); ?> <?php echo $this->config->get('thebabyshop_f2_titles_border_bottom_color'); ?>!important;}
#footer_info a {color: <?php echo $this->config->get('thebabyshop_f2_link_color'); ?>!important;}
#footer_info a:hover {color: <?php echo $this->config->get('thebabyshop_f2_link_hover_color'); ?>!important;}

/*  Footer - Payment Images, Powered by, Follow Us  */
#footer_cr {
<?php if($this->config->get('thebabyshop_f4_background_color') !='') { ?>
	background-color: <?php echo $this->config->get('thebabyshop_f4_background_color'); ?>;
<?php }	
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('thebabyshop_bg_image_f4_custom') !='') { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_bg_image_f4_custom') ?>"); ?>;
<?php } else if($this->config->get('thebabyshop_pattern_thebabyshop_f4') !='') { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/patterns/p<?php echo $this->config->get('thebabyshop_pattern_thebabyshop_f4'); ?>.png");
<?php } else { ?>
	background-image: none;
<?php } 
if(($this->config->get('thebabyshop_bg_image_f4_position') !='') || ($this->config->get('thebabyshop_bg_image_f4_repeat') !='')) { ?>
	background-position: <?php echo $this->config->get('thebabyshop_bg_image_f4_position'); ?>;
	background-repeat: <?php echo $this->config->get('thebabyshop_bg_image_f4_repeat'); ?>;
<?php } ?>
}
#footer_cr {color: <?php echo $this->config->get('thebabyshop_f4_text_color'); ?>!important;padding: 10px 0 40px 0;}
#footer_cr a {color: <?php echo $this->config->get('thebabyshop_f4_link_color'); ?>!important;}
#footer_cr a:hover {color: <?php echo $this->config->get('thebabyshop_f4_link_hover_color'); ?>!important;}
#footer_cr span {color: <?php echo $this->config->get('thebabyshop_f4_light_text_color'); ?>!important;}

/*  About Us  */
#footer_about {
<?php if($this->config->get('thebabyshop_f5_background_color') !='') { ?>
	background-color: <?php echo $this->config->get('thebabyshop_f5_background_color'); ?>;
<?php }	
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('thebabyshop_bg_image_f5_custom') !='') { ?>
	background-image: url("<?php echo $path_image . $this->config->get('thebabyshop_bg_image_f5_custom') ?>"); ?>;
<?php } else if($this->config->get('thebabyshop_pattern_thebabyshop_f5') !='') { ?>
	background-image: url("catalog/view/theme/thebabyshop/image/patterns/p<?php echo $this->config->get('thebabyshop_pattern_thebabyshop_f5'); ?>.png");
<?php } else { ?>
	background-image: none;
<?php } 
if(($this->config->get('thebabyshop_bg_image_f5_position') !='') || ($this->config->get('thebabyshop_bg_image_f5_repeat') !='')) { ?>
	background-position: <?php echo $this->config->get('thebabyshop_bg_image_f5_position'); ?>;
	background-repeat: <?php echo $this->config->get('thebabyshop_bg_image_f5_repeat'); ?>;
<?php } 
if($this->config->get('thebabyshop_f5_border_top_status') ==1) { ?>
	border-top: <?php echo $this->config->get('thebabyshop_f5_border_top_size'); ?>px <?php echo $this->config->get('thebabyshop_f5_border_top_style'); ?> <?php echo $this->config->get('thebabyshop_f5_border_top_color'); ?>;	
<?php } ?>
}
#footer_about {color: <?php echo $this->config->get('thebabyshop_f5_text_color'); ?>!important;}
#footer_about a {color: <?php echo $this->config->get('thebabyshop_f5_link_color'); ?>!important;}
#footer_about a:hover {color: <?php echo $this->config->get('thebabyshop_f5_link_hover_color'); ?>!important;}


/******************************************************/
/*  FONTS
/******************************************************/

<?php if ($this->config->get('thebabyshop_body_font') =='') { ?>
body, p, .ei-title h3 a, .cart-info thead .price, .cart-info tbody .price, #menu h1 { 
    font-family: 'Open Sans',Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_body_font') !='') {
$fontgoogle = $this->config->get('thebabyshop_body_font');
$fontop = str_replace("+", " ", $fontgoogle); ?>
body, p, .ei-title h3 a, .cart-info thead .price, .cart-info tbody .price, #menu h1 { 
    font-family: <?php echo $fontop ?>,Arial,Helvetica,sans-serif!important; 
}
<?php } 
if ($this->config->get('thebabyshop_title_font') =='') { ?>
h1, h2, h3, h4, h5, h6, .welcome, .boxPlain .box-heading span { 
    font-family: Oswald,Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_title_font_weight') !='') { ?>
h1, h2, h3, h4, h5, h6, .welcome, .boxPlain .box-heading span { 
    font-weight: <?php echo $this->config->get('thebabyshop_title_font_weight'); ?>; 
}
<?php }
if ($this->config->get('thebabyshop_title_font_uppercase') ==1) { ?>
h1, h2, h3, h4, h5, h6, .welcome, .boxPlain .box-heading span { 
    text-transform: uppercase;
}
<?php }
if ($this->config->get('thebabyshop_title_font') !='') {
$fontgoogle = $this->config->get('thebabyshop_title_font');
$fontop = str_replace("+", " ", $fontgoogle); ?>
h1, h2, h3, h4, h5, h6, .welcome, .boxPlain .box-heading span { 
    font-family: <?php echo $fontop ?>,Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_price_font') =='') { ?>
.price, .ei-title h4 a { 
    font-family: Droid Sans,Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_price_font') !='') {
$fontgoogle = $this->config->get('thebabyshop_price_font');
$fontop = str_replace("+", " ", $fontgoogle); ?>
.price, .ei-title h4 a { 
    font-family: <?php echo $fontop ?>,Arial,Helvetica,sans-serif!important; 
}
<?php } 
if ($this->config->get('thebabyshop_price_font_weight') !='') { ?>
.box-product .price, .box-product .price-new, .product-list .price, .product-grid .price, .product-info .price, .es-carousel .price { 
    font-weight: <?php echo $this->config->get('thebabyshop_price_font_weight'); ?>; 
}
<?php }
if ($this->config->get('thebabyshop_button_font') =='') { ?>
a.button, input.button, a.button-exclusive, input.button-exclusive { 
    font-family: "Lucida Sans Unicode",Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_button_font') !='') {
$fontgoogle = $this->config->get('thebabyshop_button_font');
$fontop = str_replace("+", " ", $fontgoogle); ?>
a.button, input.button, a.button-exclusive, input.button-exclusive { 
    font-family: <?php echo $fontop ?>,Arial,Helvetica,sans-serif!important; 
}
<?php } 
if ($this->config->get('thebabyshop_button_font_weight') !='') { ?>
a.button, input.button, a.button-exclusive, input.button-exclusive { 
    font-weight: <?php echo $this->config->get('thebabyshop_button_font_weight'); ?>; 
}
<?php }
if ($this->config->get('thebabyshop_button_font_uppercase') ==1) { ?>
a.button, input.button, a.button-exclusive, input.button-exclusive { 
    text-transform: uppercase;
}
<?php }
if ($this->config->get('thebabyshop_search_font') =='') { ?>
#t-header #search input { 
    font-family: Georgia,Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_search_font') !='') {
$fontgoogle = $this->config->get('thebabyshop_search_font');
$fontop = str_replace("+", " ", $fontgoogle); ?>
#t-header #search input { 
    font-family: <?php echo $fontop ?>,Arial,Helvetica,sans-serif!important; 
}
<?php } 
if ($this->config->get('thebabyshop_main_menu_font') =='') { ?>
#menu_oc > ul > li > a, #menu-category-wall > ul > li > a, #menu > ul > li > span, #menu > ul > li > a, #menu_brands > ul > li > a, .menu_links a, #menu_informations > ul > li > a, #menu_your_account > ul > li > span, #menu_custom_block > ul > li > a, #menu_contacts > ul > li > a, #menu #homepage a, .navbar .brand { 
    font-family: Oswald,Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_main_menu_font') !='') {
$fontgoogle = $this->config->get('thebabyshop_main_menu_font');
$fontop = str_replace("+", " ", $fontgoogle); ?>
#menu_oc > ul > li > a, #menu-category-wall > ul > li > a, #menu > ul > li > span, #menu > ul > li > a, #menu_brands > ul > li > a, .menu_links a, #menu_informations > ul > li > a, #menu_your_account > ul > li > span, #menu_custom_block > ul > li > a, #menu_contacts > ul > li > a, #menu #homepage a, .navbar .brand { 
    font-family: <?php echo $fontop ?>,Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_cart_font') =='') { ?>
#t-header #cart .heading a span { 
    font-family: PT Sans Narrow,Arial,Helvetica,sans-serif!important; 
}
<?php }
if ($this->config->get('thebabyshop_cart_font') !='') {
$fontgoogle = $this->config->get('thebabyshop_cart_font');
$fontop = str_replace("+", " ", $fontgoogle); ?>
#t-header #cart .heading a span { 
    font-family: <?php echo $fontop ?>,Arial,Helvetica,sans-serif!important; 
}
<?php }
if($this->config->get('thebabyshop_cart_font_weight') !='') { ?>
#t-header #cart .heading a span { 
    font-weight: <?php echo $this->config->get('thebabyshop_cart_font_weight'); ?>!important;
}
<?php }
if ($this->config->get('thebabyshop_cart_font_uppercase') ==1) { ?>
#t-header #cart .heading a span { 
    text-transform: uppercase;
}
<?php }
if ($this->config->get('thebabyshop_product_name_font_weight') !='') { ?>
.box-product .name a, .es-carousel .name a, .product-grid .name a, .product-list .name a, .box-product .l_column .name a  { 
    //font-weight: <?php //echo $this->config->get('thebabyshop_product_name_font_weight'); ?>; 
}
<?php } ?>

<?php if($this->config->get('thebabyshop_custom_css') !='') { ?>
/******************************************************/
/*  CUSTOM CSS
/******************************************************/

<?php echo htmlspecialchars_decode( $this->config->get('thebabyshop_custom_css'), ENT_QUOTES ); ?>
<?php } ?>

</style>
<?php } ?>
<?php } ?>

<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
<?php
if($this->config->get('thebabyshop_body_font')!='' || $this->config->get('thebabyshop_title_font')!='' || $this->config->get('thebabyshop_price_font')!='' || $this->config->get('thebabyshop_button_font')!='' || $this->config->get('thebabyshop_search_font')!='' || $this->config->get('thebabyshop_main_menu_font')!='') {
    $opfonts = array('Lucida Sans Unicode','Arial','Helvetica'); 
		if (in_array($this->config->get('thebabyshop_body_font'),$opfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('thebabyshop_body_font') ?>' rel='stylesheet' type='text/css'>
        <?php }
		if (in_array($this->config->get('thebabyshop_title_font'),$opfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('thebabyshop_title_font') ?>' rel='stylesheet' type='text/css'>        
        <?php }
		if (in_array($this->config->get('thebabyshop_price_font'),$opfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('thebabyshop_price_font') ?>' rel='stylesheet' type='text/css'>        
        <?php }
		if (in_array($this->config->get('thebabyshop_button_font'),$opfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('thebabyshop_button_font') ?>' rel='stylesheet' type='text/css'>        
        <?php } 
		if (in_array($this->config->get('thebabyshop_search_font'),$opfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('thebabyshop_search_font') ?>' rel='stylesheet' type='text/css'>        
        <?php }   
		if (in_array($this->config->get('thebabyshop_cart_font'),$opfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('thebabyshop_cart_font') ?>' rel='stylesheet' type='text/css'>        
        <?php }         
		if (in_array($this->config->get('thebabyshop_main_menu_font'),$opfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('thebabyshop_main_menu_font') ?>' rel='stylesheet' type='text/css'>        
        <?php }                                       
   }  
?>
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $title; ?>" style="float:none;margin:0">
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=542213942517246";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<?php if($this->config->get('thebabyshop_facebook_likebox_status')== 1) { ?>  
<?php if($this->config->get('thebabyshop_facebook_likebox_id') != '') { ?>
<div class="facebook_<?php echo $this->config->get('thebabyshop_facebook_likebox_position'); ?> hidden-phone">
<div id="facebook_icon"></div>
<div class="facebook_box">
  <script src="//connect.facebook.net/en_US/all.js#xfbml=1"></script>
  <fb:fan profile_id="<?php echo $this->config->get('thebabyshop_facebook_likebox_id'); ?>" stream="0" connections="20" logobar="0" width="285" height="389"></fb:fan>  
  <script type="text/javascript">    
  $(function(){in
        $(".facebook_right").hover(function(){            
        $(".facebook_right").stop(true, false).animate({right: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $(".facebook_right").stop(true, false).animate({right: "-293" }, 800, 'easeInQuint' );        
        },1000);    
  });
  $(function(){        
        $(".facebook_left").hover(function(){            
        $(".facebook_left").stop(true, false).animate({left: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $(".facebook_left").stop(true, false).animate({left: "-293" }, 800, 'easeInQuint' );        
        },1000);    
  });  
  </script>
</div>
</div>
<?php } ?>
<?php } ?>

<?php if($this->config->get('thebabyshop_custom_box_status')== 1) { ?>  
<?php if ($thebabyshop_custom_box_content) { ?>
<div class="custom_box_<?php echo $this->config->get('thebabyshop_custom_box_position'); ?> hidden-phone">
<div id="custom_box_icon"></div>
<div class="custom_box">
<?php echo htmlspecialchars_decode($thebabyshop_custom_box_content); ?> 
  <script type="text/javascript">    
  $(function(){        
        $(".custom_box_right").hover(function(){            
        $(".custom_box_right").stop(true, false).animate({right: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $(".custom_box_right").stop(true, false).animate({right: "-245" }, 800, 'easeInQuint' );      
        },1000);    
  });
  $(function(){        
        $(".custom_box_left").hover(function(){            
        $(".custom_box_left").stop(true, false).animate({left: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $(".custom_box_left").stop(true, false).animate({left: "-245" }, 800, 'easeInQuint' );        
        },1000);    
  });  
  </script>
</div>
</div>
<?php } ?>
<?php } ?>

<div class="wrapper">
<header id="header">
<div class="container">
<div id="t-header" class="row">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <div id="lc_dropdown"><?php echo $language; ?><?php echo $currency; ?></div>
    <div class="links"> 
    <?php if (!$logged) { ?>
    <script type="text/javascript">
    function login_popup(){jQuery.colorbox({width:"500px", height:"390px", opacity:0.4,fixed:true, href:"index.php?route=account/login_popup"});}
    </script>
    <a onclick="login_popup(); return false;"><?php echo $text_login_s; ?></a>
    <a onclick="login_popup(); return false;"><?php echo $text_wishlist; ?></a>
    <?php } else { ?>
    <?php echo $text_logged_s; ?>
    <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
    <?php } ?>
    <?php echo $cart; ?>
    </div>    
    <div id="search" class="span4">
    <div class="button-search"></div>
    <input type="hidden"  name="description" id="description" checked="checked" />
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>  
</div>

 <div class="navbar visible-phone">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar brand" data-toggle="collapse" data-target=".nav-collapse">
        MENU <img src="catalog/view/theme/thebabyshop/image/dropdown.png" title="MENU" alt="MENU" />
        </a>
        <div class="nav-collapse">
          <ul class="nav">
            <li class="dropdown">
            <div id="homepage"><a href="<?php echo $home; ?>"><img src="catalog/view/theme/thebabyshop/image/homepage.png" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
              <ul class="dropdown-menu">
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php if ($category['children']) { ?>
                  <div>
                   <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul>
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  </div>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  
<nav id="menu" class="row hidden-phone">

<?php if(($this->config->get('thebabyshop_menu_homepage_status')== 1) && ($this->config->get('thebabyshop_menu_homepage_style')== 1)) { ?>
<div id="homepage"><a href="<?php echo $home; ?>"><img src="catalog/view/theme/thebabyshop/image/homepage.png" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
<?php }
if(($this->config->get('thebabyshop_menu_homepage_status')== 1) && ($this->config->get('thebabyshop_menu_homepage_style')== 2)) { ?>
<div id="homepage"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></div>
<?php } ?> 

<?php if($this->config->get('thebabyshop_menu_categories_style')== 1) { ?>
<?php if($this->config->get('thebabyshop_menu_categories_status')== 1) { ?>
<?php if ($categories) { ?>
<div id="menu_oc">
    <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php $counter++; } ?>
    </ul>
</div>
<?php } ?>
<?php } ?>
<?php } ?>

<?php if($this->config->get('thebabyshop_menu_categories_style')== 2) { ?>
<?php if($this->config->get('thebabyshop_menu_categories_status')== 1) { ?>
  <ul>
    <li><span><?php echo $text_menu_categories; ?></span>  
      <div>    
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
      </div>  
    </li>
  </ul> 
<?php } ?>  
<?php } ?> 

<?php if($this->config->get('thebabyshop_menu_categories_style')== 3) { ?>
<?php if($this->config->get('thebabyshop_menu_categories_status')== 1) { ?>
<div id="menu-category-wall">
  <ul>
    <li><a><?php echo $text_menu_categories; ?></a>   
    <div class="span10">
    <?php $counter = 0; foreach ($categories as $category) { 
	if (($counter+5) %5 == 0) $xclass="span-first-child";
	else $xclass=""; ?>
    <div class="span2 <?php echo $xclass; ?>">
    <?php if($this->config->get('thebabyshop_mm2_main_category_icon_status')== 1) { ?>       
    <div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" title="<?php echo $category['name']; ?>" alt="<?php echo $category['name']; ?>" /></a></div>
    <?php } ?>
      <div class="menu-category-wall-sub-name"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </div>
    <?php $counter++; } ?>
    </div> 
    </li>
  </ul>
</div>   
<?php } ?>  
<?php } ?> 

<?php if ($this->config->get('thebabyshop_menu_brands_status') == "1"): ?>
<div id="menu_brands">        
  <ul>
    <li><a><?php echo $text_menu_brands; ?></a> 
      <?php if($this->config->get('thebabyshop_menu_brands_per_row')== 4) { ?>   
      <div class="span8">
      <?php } ?> 
      <?php if($this->config->get('thebabyshop_menu_brands_per_row')== 6) { ?>   
      <div class="span6">
      <?php } ?> 
      <?php if($this->config->get('thebabyshop_menu_brands_per_row')== 8) { ?>   
      <div class="span8">
      <?php } ?>  
          <?php if ($manufacturers) { ?>           
          <?php $counter = 0; foreach ($manufacturers as $manufacturer) { 
	      if (($counter+$this->config->get('thebabyshop_menu_brands_per_row')) %$this->config->get('thebabyshop_menu_brands_per_row') == 0) $xclass="span-first-child"; 
          else $xclass=""; ?>
          <?php if($this->config->get('thebabyshop_menu_brands_per_row')== 4) { ?>   
          <div class="span2 <?php echo $xclass; ?>">
          <?php } ?> 
          <?php if($this->config->get('thebabyshop_menu_brands_per_row')== 6) { ?>   
          <div class="span1 <?php echo $xclass; ?>">
          <?php } ?> 
          <?php if($this->config->get('thebabyshop_menu_brands_per_row')== 8) { ?>   
          <div class="span1 <?php echo $xclass; ?>">
          <?php } ?>     
          <?php if($this->config->get('thebabyshop_menu_brands_style')== "1") { ?>           
          <div class="image"><a href="<?php echo $manufacturer['href']; ?>"><img src="<?php echo $manufacturer['image']; ?>" title="<?php echo $manufacturer['name']; ?>" alt="<?php echo $manufacturer['name']; ?>" /></a></div>
          <?php } ?>
          <?php if($this->config->get('thebabyshop_menu_brands_style')== "2") { ?>           
          <div class="name"><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></div>
          <?php } ?>
          <?php if($this->config->get('thebabyshop_menu_brands_style')== "3") { ?>           
          <div class="image"><a href="<?php echo $manufacturer['href']; ?>"><img src="<?php echo $manufacturer['image']; ?>" title="<?php echo $manufacturer['name']; ?>" alt="<?php echo $manufacturer['name']; ?>" /></a></div>
          <div class="name"><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></div>
          <?php } ?>                    
          </div>
          <?php $counter++; } ?>
          <?php } ?>
      </div>  
    </li>
  </ul>
</div>
<?php endif; ?> 

<?php if ($this->config->get('thebabyshop_menu_link_1_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_1_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_1_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_1_target'); ?>">
        <span><?php echo $thebabyshop_menu_link_1; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?>    
<?php if ($this->config->get('thebabyshop_menu_link_2_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_2_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_2_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_2_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_2; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?>  
<?php if ($this->config->get('thebabyshop_menu_link_3_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_3_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_3_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_3_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_3; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?>   
<?php if ($this->config->get('thebabyshop_menu_link_4_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_4_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_4_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_4_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_4; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?> 
<?php if ($this->config->get('thebabyshop_menu_link_5_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_5_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_5_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_5_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_5; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?>  
<?php if ($this->config->get('thebabyshop_menu_link_6_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_6_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_6_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_6_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_6; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?> 
<?php if ($this->config->get('thebabyshop_menu_link_7_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_7_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_7_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_7_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_7; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?>  
<?php if ($this->config->get('thebabyshop_menu_link_8_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_8_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_8_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_8_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_8; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?>
<?php if ($this->config->get('thebabyshop_menu_link_9_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_9_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_9_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_9_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_9; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?>  
<?php if ($this->config->get('thebabyshop_menu_link_10_status') == "1"): ?>
<?php if($this->config->get('thebabyshop_menu_link_10_url') != ''): ?>
    <div class="menu_links">
		<a href="<?php echo $this->config->get('thebabyshop_menu_link_10_url'); ?>" target="<?php echo $this->config->get('thebabyshop_menu_link_10_target'); ?>">
		<span><?php echo $thebabyshop_menu_link_10; ?></span>
        </a>
    </div>
<?php endif; ?>
<?php endif; ?>                 

<?php if($this->config->get('thebabyshop_menu_information_pages_status')== 1) { ?>
<div id="menu_informations">       
  <ul>
    <li><a><?php echo $text_information; ?></a>
      <div> 
        <ul>
          <li>            
            <div class="span3">
	          <h1><?php echo $text_information; ?></h1>   
              <ul>
                <?php foreach ($informations as $information) { ?>
                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php } ?>
              </ul>
            </div>      
          </li>
        </ul>  
        <ul>
          <li>
            <div class="span3">
              <h1><?php echo $text_service; ?></h1>
              <ul>
                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
              </ul>
            </div>
          </li>
        </ul> 
        <ul>
          <li>
            <div class="span3">
              <h1><?php echo $text_extra; ?></h1>
              <ul>
                <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
              </ul>
            </div>
          </li>
        </ul>       
      </div>  
    </li>
  </ul>
</div>    
<?php } ?>         

<?php if($this->config->get('thebabyshop_menu_your_account_status')== 1) { ?>
<div id="menu_your_account">        
  <ul>
    <li><span><?php echo $text_account; ?></span> 
      <div>    
        <ul>
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>  
    </li>
  </ul>
</div>
<?php } ?>

<?php if($this->config->get('thebabyshop_menu_custom_block_status')== 1) { ?>
<?php if ($thebabyshop_menu_custom_block_content_1) { ?>
<div id="menu_custom_block">        
  <ul>
    <li><a><?php echo $thebabyshop_menu_custom_block_title_1; ?></a> 
      <div>  
        <ul>
          <li> 
          <div>
          <?php echo htmlspecialchars_decode($thebabyshop_menu_custom_block_content_1); ?>
          </div>    
          </li>
        </ul>         
      </div>  
    </li>
  </ul>
</div>    
<?php } ?>                 
<?php } ?> 
<?php if($this->config->get('thebabyshop_menu_custom_block_2_status')== 1) { ?>
<?php if ($thebabyshop_menu_custom_block_content_2) { ?>
<div id="menu_custom_block">        
  <ul>
    <li><a><?php echo $thebabyshop_menu_custom_block_title_2; ?></a> 
      <div>  
        <ul>
          <li> 
          <div>
          <?php echo htmlspecialchars_decode($thebabyshop_menu_custom_block_content_2); ?> 
          </div>    
          </li>
        </ul>         
      </div>  
    </li>
  </ul>
</div>    
<?php } ?>                 
<?php } ?>
<?php if($this->config->get('thebabyshop_menu_custom_block_3_status')== 1) { ?>
<?php if ($thebabyshop_menu_custom_block_content_3) { ?>
<div id="menu_custom_block">        
  <ul>
    <li><a><?php echo $thebabyshop_menu_custom_block_title_3; ?></a> 
      <div>  
        <ul>
          <li> 
          <div>
          <?php echo htmlspecialchars_decode($thebabyshop_menu_custom_block_content_3); ?>
          </div>    
          </li>
        </ul>         
      </div>  
    </li>
  </ul>
</div>    
<?php } ?>                 
<?php } ?>    

<?php if($this->config->get('thebabyshop_menu_contacts_status')== 1) { ?>
<div id="menu_contacts">        
  <ul>
    <li><a href="<?php echo $contact; ?>"><?php echo $text_menu_contact_us; ?></a> 
      <div>  
      <?php if(($thebabyshop_contact_mphone1 != '') || ($thebabyshop_contact_mphone2 != '') || ($thebabyshop_contact_sphone1 != '') || ($thebabyshop_contact_sphone2 != '') || ($thebabyshop_contact_fax1 != '') || ($thebabyshop_contact_fax2 != '') || ($thebabyshop_contact_email1 != '') || ($thebabyshop_contact_email2 != '') || ($thebabyshop_contact_skype1 != '') || ($thebabyshop_contact_skype2 != '')) { ?>
        <ul>
          <li>               
     <div class="span3">
     <div class="contacts">
		<h1><?php echo $text_menu_contacts; ?></h1>
               
        <?php if(($thebabyshop_contact_mphone1 != '') || ($thebabyshop_contact_mphone2 != '')) { ?>       
        <span class="mm_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_mphone_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Mobile Phone" title="Mobile Phone"></span>   
        <?php if ($thebabyshop_contact_mphone1 != '') { ?>  
        <span><?php echo $thebabyshop_contact_mphone1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_mphone2 != '') { ?>  
        <span><?php echo $thebabyshop_contact_mphone2; ?></span>
		<?php } ?><br /><br /><?php } ?> 
        
        <?php if(($thebabyshop_contact_sphone1 != '') || ($thebabyshop_contact_sphone2 != '')) { ?>               
        <span class="mm_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_sphone_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Static Phone" title="Static Phone"></span>                     
		<?php if ($thebabyshop_contact_sphone1 != '') { ?> 
        <span><?php echo $thebabyshop_contact_sphone1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_sphone2 != '') { ?> 
        <span><?php echo $thebabyshop_contact_sphone2; ?></span>
		<?php } ?><br /><br /><?php } ?>   
        
        <?php if(($thebabyshop_contact_fax1 != '') || ($thebabyshop_contact_fax2 != '')) { ?>              
        <span class="mm_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_fax_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Fax" title="Fax"></span>   
		<?php if ($thebabyshop_contact_fax1 != '') { ?> 
        <span><?php echo $thebabyshop_contact_fax1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_fax2 != '') { ?> 
        <span><?php echo $thebabyshop_contact_fax2; ?></span>
		<?php } ?><br /><br /><?php } ?>

        <?php if(($thebabyshop_contact_email1 != '') || ($thebabyshop_contact_email2 != '')) { ?>               
        <span class="mm_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_email_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="E-mail" title="E-mail"></span>
		<?php if ($thebabyshop_contact_email1 != '') { ?> 
        <span><?php echo $thebabyshop_contact_email1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_email2 != '') { ?> 
        <span><?php echo $thebabyshop_contact_email2; ?></span>
		<?php } ?><br /><br /><?php } ?>

        <?php if(($thebabyshop_contact_skype1 != '') || ($thebabyshop_contact_skype2 != '')) { ?>               
        <span class="mm_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_skype_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Skype" title="Skype"></span>
		<?php if ($thebabyshop_contact_skype1 != '') { ?> 
        <span><?php echo $thebabyshop_contact_skype1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_skype2 != '') { ?> 
        <span><?php echo $thebabyshop_contact_skype2; ?></span>
        <?php } ?><br /><br /><?php } ?>  
        
        <?php if(($thebabyshop_contact_location1 == '') && ($thebabyshop_contact_location2 == '') && ($thebabyshop_contact_hours == '')) { ?> 
        <a href="<?php echo $contact; ?>" class="button" style="margin-bottom:20px"><?php echo $text_menu_contact_form; ?></a>       
        <?php } ?>  		      
     </div>
     </div>      
          </li>
        </ul>  
     <?php } ?> 
     <?php if(($thebabyshop_contact_location1 != '') || ($thebabyshop_contact_location2 != '') || ($thebabyshop_contact_hours != '')) { ?>      
        <ul>
          <li>
     <div class="span3">
        <?php if(($thebabyshop_contact_location1 != '') || ($thebabyshop_contact_location2 != '')) { ?>   
        <h1><?php echo $text_menu_contact_address; ?></h1>              
        <span class="mm_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_location_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Address" title="Address"></span>
        <?php if ($thebabyshop_contact_location1 != '') { ?> 
        <span><?php echo $thebabyshop_contact_location1; ?></span><br /> 
		<?php } ?>
		<?php if ($thebabyshop_contact_location2 != '') { ?> 
        <span><?php echo $thebabyshop_contact_location2; ?></span>
        <?php } ?><br /><br /><br /><?php } ?> 
        <?php if($thebabyshop_contact_hours != '') { ?>	        
        <h1><?php echo $text_menu_contact_hours; ?></h1>               
        <span class="mm_icon"><img src="catalog/view/theme/thebabyshop/image/icons_footer/icon_contact_hours_<?php echo $this->config->get('thebabyshop_f1_contact_icon_style'); ?>.png" alt="Business Hours" title="Business Hours"></span>         
        <span><pre><?php echo $thebabyshop_contact_hours; ?></pre></span><br /> 
		<?php } ?><br />  	    
        <a href="<?php echo $contact; ?>" class="button" style="margin-bottom:20px"><?php echo $text_menu_contact_form; ?></a> 
     </div>
          </li>
        </ul> 
      <?php } ?>         
      </div>  
    </li>
  </ul>
</div>    
<?php } ?>                          

</nav>
</div> 

<div id="notification"></div>
</header>

<section id="leaderboard" class="container">
<script type="text/javascript">
    function free_shipping_popup(){jQuery.colorbox({width:"600px", height:"330px", opacity:0.4,fixed:true, href:"shipping-and-returns"});}
</script>
<a onclick="free_shipping_popup(); return false;"><img src="image/free_shipping.png" style="width: 100%;"></a>
</section>
<section id="midsection" class="container">
<div class="row">