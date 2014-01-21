<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
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
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

                <script type="text/javascript" src="catalog/view/javascript/login_popup.js"></script>
                <script type="text/javascript" src="catalog/view/theme/default/stylesheet/login_popup.css"></script>
            
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
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
			
</head>
<body>
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
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  
               <div id="welcome" <?php if (!$logged) { echo "class='login_popup'";}?> >
            
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>
<?php if ($categories) { ?>
<div id="menu">
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
<?php } ?>
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>
