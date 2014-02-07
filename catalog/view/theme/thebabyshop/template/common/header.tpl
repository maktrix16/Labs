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
<?php 
$CSName = $_SERVER["SERVER_NAME"];
if ($CSName == "www.thebabyshop.com") {
    $pageURL = "";
    $http_s = (@$_SERVER["HTTPS"] == "on") ? "https://" : "http://";

    if ($_SERVER["SERVER_PORT"] != "80")
    {
        $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
    } 
    else {
        $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
    }
    if (($pageURL == $CSName."/") or ($pageURL == $CSName."/new-just-in/clothing") or ($pageURL == $CSName."/gifts-by-occasion/further-sale") or ($pageURL == $CSName."/girls/dress") or ($pageURL == $CSName."/little-things-for-little-ones/wall-decor") or ($pageURL == $CSName."/little-things-for-little-ones/all-766482377") or ($pageURL == $CSName."/girls/shoes-and-accessories-1783328943") or ($pageURL == $CSName."/about")) {
        //echo $http_s.$CSName.$pageURL."\n";
        ?><script type="text/javascript" src="thirdparty/crazyegg.js"></script><?php 
    }
}
?> 
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
</head>
<body class="<?php echo $title; ?>" style="float:none;margin:0">
<?php 
    if ($_SERVER['HTTP_HOST']=='stage.thebabyshop.com' OR $_SERVER['HTTP_HOST'] == 'labs.thebabyshop.com') {
        if ($_SERVER['HTTP_HOST']=='stage.thebabyshop.com') {
            $image_name = "server_label_stage.png";
        }else if ($_SERVER['HTTP_HOST']=='labs.thebabyshop.com') {
            $image_name = "server_label_labs.png";
        }
?>  
<div style="width:100px;height:100px;margin:0px;padding:0px;top:0px;right:0px;position:fixed;z-index:9999;background-image:url(image/<?php echo $image_name;?>);background-position:top left!important;background-repeat:repeat!important;"></div>
<?php } ?>
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
    //    function login_popup(){jQuery.colorbox({width:"500px",height:"290px",opacity:0.4,fixed:true,href:"index.php?route=account/login_popup"});return false;}
    //    function register_popup(){jQuery.colorbox({width:"600px",height:"420px",opacity:0.4,fixed:true,href:"index.php?route=account/register_popup"});return false;}
        function login_popup(){jQuery.colorbox({width:"600px",height:"400px",opacity:0.4,fixed:true,href:"index.php?route=account/popuplogin#tab-Login"});return false;}
        function register_popup(){jQuery.colorbox({width:"600px",height:"500px",opacity:0.4,fixed:true,href:"index.php?route=account/popuplogin#tab-Register"});return false;}
    </script>
    <a onclick="login_popup();return false;" href="login"><?php echo $text_login_s; ?></a>
    <a onclick="register_popup();return false;" href="register"><?php echo $text_register; ?></a>    
  <!--  <a id="popuplogin" href="index.php?route=account/popuplogin#tab-Login"><?php echo $text_login_s; ?></a>
    <a id="popuplogin" href="index.php?route=account/popuplogin#tab-Register"><?php echo $text_register; ?></a> -->
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
    function free_shipping_popup(){jQuery.colorbox({width:"744px", height:"466px", opacity:0.4,fixed:true,iframe: true,href:"map_en.php"});}
</script>
<a onclick="free_shipping_popup(); return false;"><?php echo $text_free_shipping_gift; ?></a>
</section>
<section id="midsection" class="container">
<div class="row">