<!DOCTYPE html>
<!--[if IE 7]>                  <html xmlns:fb="http://ogp.me/ns/fb#" class="ie7 no-js"  dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"     <![endif]-->
<!--[if lte IE 8]>              <html xmlns:fb="http://ogp.me/ns/fb#" class="ie8 no-js"  dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html xmlns:fb="http://ogp.me/ns/fb#" class="not-ie no-js" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">  <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=980; initial-scale=1; maximum-scale=10.0; user-scalable=1;" />
<title><?php echo $header_title; ?><?php echo $title; ?></title>
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

<link href='//fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
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
<?php echo $google_analytics; ?>

			<link rel="stylesheet" href="catalog/view/javascript/jquery.cluetip.css" type="text/css" />
			<script src="catalog/view/javascript/jquery.cluetip.js" type="text/javascript"></script>
			
			<script type="text/javascript">
				$(document).ready(function() {
				$('a.title').cluetip({splitTitle: '|'});
				  $('ol.rounded a:eq(0)').cluetip({splitTitle: '|', dropShadow: false, cluetipClass: 'rounded', showtitle: false});
				  $('ol.rounded a:eq(1)').cluetip({cluetipClass: 'rounded', dropShadow: false, showtitle: false, positionBy: 'mouse'});
				  $('ol.rounded a:eq(2)').cluetip({cluetipClass: 'rounded', dropShadow: false, showtitle: false, positionBy: 'bottomTop', topOffset: 70});
				  $('ol.rounded a:eq(3)').cluetip({cluetipClass: 'rounded', dropShadow: false, sticky: true, ajaxCache: false, arrows: true});
				  $('ol.rounded a:eq(4)').cluetip({cluetipClass: 'rounded', dropShadow: false});  
				});
			</script>
			

<?php if ($this->config->get('endless_scroller_status')) { ?>
<style type="text/css">
.el-oc{position:relative;}
<?php if ($this->config->get('es_use_sticky_footer')) { ?>#el-oc-cl{height:30px;background:#fff;display:none;margin: 0 auto;}.sticky-ftr{position:fixed;bottom:0;z-index:1000;width:980px;}<?php } ?>
.el-c{width:100%;height:100%;position:absolute;top:0;left:0;text-align:center;padding:5px 10px;display:none;}
.el-t{background-image:url('catalog/view/theme/thebabyshop/image/loading_circle.gif');background-position:0 50%;background-repeat:no-repeat;color:#999999;font-size:20px;padding-left:34px;text-decoration:none;}
.el-d{float:right;display:none;}
<?php if ($this->config->get('es_use_more')) { ?>.el-md{text-align:center;height:30px;width:100%;position:absolute;top:0;left:0;margin:5px 0;display:none;}
.el-m{background:-webkit-gradient(linear,left top,left bottom,color-stop(0.05,#ffffff),color-stop(1,#f6f6f6));background:-moz-linear-gradient(center top,#ffffff 5%,#f6f6f6 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff',endColorstr='#f6f6f6');background-color:#ffffff;-moz-border-radius:5px;-webkit-border-radius:5px;border-radius:5px;border:1px solid #dcdcdc;display:inline-block;color:#666666;font-family:arial;font-size:15px;font-weight:bold;padding:6px 63px;text-decoration:none;text-shadow:1px 1px 0px #ffffff;width:250px !important;}
.el-m:hover{box-shadow:0 1px 1px rgba(0,0,0,0.1);}
.el-m:active{background:-webkit-gradient(linear,left top,left bottom,color-stop(0.05,#f6f6f6),color-stop(1,#ffffff));background:-moz-linear-gradient(center top,#f6f6f6 5%,#ffffff 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f6f6f6',endColorstr='#ffffff');background-color:#f6f6f6;}<?php } ?>
<?php if ($this->config->get('es_use_back_to_top')) { ?>#back-to-top{background:none repeat scroll 0 0 rgba(214,214,214,0.95);border-radius:5px;color:#6C6C6C;display:block;font-size:36px;opacity:0.5;padding:2px 14px;position:fixed;right:12px;bottom:12px;outline:none;text-decoration:none;margin:0;display:none;}
#back-to-top:hover{opacity:0.7;}<?php } ?>
</style>
<?php } ?>
            
</head>
<body class="<?php echo $title; ?>" style="float:none;margin:0">
<?php if (isset($this->session->data['baCacheAdmin']) && $this->session->data['baCacheAdmin'] == true) { 	
?>
<style>
.panel {
	position: fixed;
	top: 50px;
	left: 0;
	display: none;
	background: #000;
	border:1px solid #111;
	-moz-border-radius-topright: 20px;
	-webkit-border-top-right-radius: 20px;
	-moz-border-radius-bottomright: 20px;
	-webkit-border-bottom-right-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-right-radius: 20px;
	width: 300px;
	height: auto;
	padding: 30px;
	color: #ccc;
	filter: alpha(opacity=85);
	opacity: .85;
	z-index: 999;
}
.panel p{
	margin: 0 0 15px 0;
	padding: 0;
	color: #ccc;
}
a.trigger{
	position: fixed;
	text-decoration: none;
	top: 30px; left: 0;
	font-size: 16px;
	color:#fff;
	padding: 10px 20px 10px 20px;
	background:#333;
	border:1px solid #444;
	-moz-border-radius-topright: 20px;
	-webkit-border-top-right-radius: 20px;
	-moz-border-radius-bottomright: 20px;
	-webkit-border-bottom-right-radius: 20px;
	border-bottom-right-radius: 20px;
	border-top-right-radius: 20px;
	-moz-border-radius-bottomleft: 0px;
	-webkit-border-bottom-left-radius: 0px;
	border-bottom-left-radius: 0px;
	
	display: block;
	z-index:1000;
}
a.trigger:hover{
	position: fixed;
	text-decoration: none;
	top: 30px; left: 0;
	font-size: 16px;
	color:#fff;
	padding: 10px 20px 10px 30px;
	background:#222
	border:1px solid #444;
	-moz-border-radius-topright: 20px;
	-webkit-border-top-right-radius: 20px;
	-moz-border-radius-bottomright: 20px;
	-webkit-border-bottom-right-radius: 20px;
	border-bottom-right-radius: 20px;
	border-top-right-radius: 20px;
	-moz-border-radius-bottomleft: 0px;
	-webkit-border-bottom-left-radius: 0px;
	border-bottom-left-radius: 0px;
	display: block;
	z-index:1000;
}
a.active.trigger {
	background:#330000 url('catalog/view/theme/default/image/remove.png') 0 13px no-repeat;
	z-index:1000;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$(".trigger").click(function(){
		$(".panel").toggle("fast");
		$(this).toggleClass("active");
		return false;
	});
});</script>

<div class="panel">
	<form action="" method="post">
	<?php echo $baCacheMsg; ?>
	<h3>Current Page Cache</h3>
	<p><?php echo $baCacheDate; ?><br /><p><input type="submit" value="Update page cache" name="baCacheDelL"></p></p>
	<p><em>Based on current currency and language. Updating a cache will affect all currency and language variaitons.</em><p>
	<h3>Site-wide Cache</h3>
	<p>Update caches older than <input type="text" size="3" name="baCacheDelT" /> <select name="baCacheDelTM"><option value="mins">Minutes</option><option value="hrs">Hours</option><option value="dys" selected="selected">Days</option><option value="wks">Weeks</option></select> <input type="submit" value="Go" name="baCacheDelS"></p>
	<p>or <input type="submit" value="Update all caches" name="baCacheDelA"></p>
	</form>
	
<div style="clear:both;"></div>
</div>
<a class="trigger" href="#">Cache Manager</a>
<?php
} ?>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=542213942517246";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

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
        function login_popup(){jQuery.colorbox({width:"500px",height:"290px",opacity:0.4,fixed:true,href:"index.php?route=account/login_popup"});return false;}
        function register_popup(){jQuery.colorbox({width:"600px",height:"420px",opacity:0.4,fixed:true,href:"index.php?route=account/register_popup"});return false;}
    </script>
    <a onclick="login_popup();return false;" href="login"><?php echo $text_login_s; ?></a>
    <a onclick="register_popup();return false;" href="register"><?php echo $text_register; ?></a>
    <?php } else { ?>
    <?php echo $text_logged_s; ?>
    <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
    <?php } ?>
    </div>
    <?php echo $cart; ?>
    <div id="search" class="span4">
    <div class="button-search"></div>
    <input type="hidden" name="description" id="description"/>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>  
</div>
  
<nav id="menu" class="row">

<?php if($this->config->get('thebabyshop_menu_categories_style')== 1) { ?>
<?php if($this->config->get('thebabyshop_menu_categories_status')== 1) { ?>

<?php if ($categories) { ?>
    <div id="menu_oc">
        <ul>
            <?php $index=0; foreach ($categories as $category) { $index++; ?>
                <li class="menu-<?php echo $index; ?>">
                    <a><?php echo $category['name']; ?></a>
                    <?php if ($category['children']) { ?>
                        <?php for ($i = 0; $i < count($category['children']);) { ?>
                        <div>
                            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                <?php for ($i = 0; $i < count($category['children']);$i++) { ?>
                                    <?php if (isset($category['children'][$i])) { ?>
                                    <?php if ($category['children'][$i]['sub_children']) { ?>
                                    <ul class="category_l">
                                        <li class="category_lv"><a class="menu-<?php echo $category['children'][$i]['category_id']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                                            <div class="div-<?php echo $category['children'][$i]['category_id']; ?>">
                                                <ul>
                                                    <?php for ($k = 0; $k < count($category['children'][$i]['sub_children']);$k++) { ?>
                                                        <li>
                                                            <?php if($category['children'][$i]['sub_children'][$k]['column']==9) { ?>
                                                                <?php if ($category['children'][$i]['sub_children'][$k]['products'] && $category['children'][$i]['sub_children'][$k]['products']['thumb']) { ?>
                                                                    <a href="<?php echo $category['children'][$i]['sub_children'][$k]['href'] ?>" ><img alt=" <?php echo $category['children'][$i]['sub_children'][$k]['products']['name']?>" src="<?php echo $category['children'][$i]['sub_children'][$k]['products']['thumb']?>" /></a>
                                                                <?php }?>
                                                                <a href="<?php echo $category['children'][$i]['sub_children'][$k]['href']; ?>"><?php echo $category['children'][$i]['sub_children'][$k]['name']; ?><span>> Shop Now</span></a>
                                                            <?php } else { ?>
                                                                <a href="<?php echo $category['children'][$i]['sub_children'][$k]['href']; ?>"><?php echo $category['children'][$i]['sub_children'][$k]['name']; ?></a>
                                                            <?php }?>
                                                        </li>
                                                    <?php } ?>
                                                </ul>
                                            </div>
                                            <?php } else { ?>
                                            <ul class="category_lvs">
                                                <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                                            <?php } ?>
                                        </li>
                                    </ul>
                                <?php } ?>
                            <?php } ?>
                            <?php } ?>
                        </div>
                    <?php } ?>
                </li>
            <?php } ?>
                <li class="menu-6">
                <a>About</a>
                    <div>
                        <ul class="category_l">
                            <li class="category_lv"><a class="menu">About</a>
                                <div class="div">
                                    <ul>
                                        <li><a href="/about">About Us</a></li>
                                        <li><a href="/press">Press</a></li>
                                        <li><a href="/gift-wrap">Free Gift-Wrap</a></li>
                                        <li><a href="/shipping">Free Shipping</a></li>
                                        <li><a href="/returns">Returns Guarantee</a></li>
                                        <li><a href="/payment">Payment &amp; Security</a></li>
                                        <li><a href="/contact-us">Contact Us</a></li>
                                        <li><a href="/faqs">FAQs</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
        </ul>
    </div>
<?php } ?>

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

<section id="leaderboard">
<script type="text/javascript">
    function free_shipping_popup(){jQuery.colorbox({width:"640px", height:"460px", opacity:0.4,fixed:true,iframe: true,href:"map_en.php"});}
</script>
<a onclick="free_shipping_popup(); return false;"><?php echo $text_free_shipping_gift; ?></a>
</section>
<section id="midsection" class="container">
<div class="row">