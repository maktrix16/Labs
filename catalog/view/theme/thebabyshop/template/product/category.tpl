<?php echo $header; ?>
<div class="all-white">
  <?php if ($description) { ?>
  <section class="category-info">
    <header class="category-name"><h1><?php echo $heading_title; ?></h1></header>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </section>
  <?php } ?>
<?php echo $column_left; ?>
<section id="content" class="span9"><div class="row-fluid"><?php echo $content_top; ?>
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="sort">
      <span><?php echo $text_sort; ?></span>
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
  <div class="product-grid" id="el-s">
	<?php $counter = 0; foreach ($products as $product) { 
	   if (($counter+3) %3 == 0) $xclass="span-first-child";
	   else $xclass=""; ?>
    <div<?php echo ' id="p' . $product['product_id'] . '"'; ?> class="span <?php echo $xclass; ?>">
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
  </div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content">
	<?php echo $text_empty; ?>
  </div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div></section>
<script type="text/javascript"><!--
function display(view, update) {
    update = typeof update !== 'undefined' ? true : false;
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
	
			
			html = '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image span2">' + image + '</div>';
			}
			
			html += '<div class="span4">';
			html += '  <div class="brand">' + $(element).find('.brand').html() + '</div>';
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}	
			
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';	
				
			html += '</div>';

			html += '</div>';
			
			html += '<div class="span2">';
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price span2">' + price  + '</div>';
			}
                        html += '  <div class="stock_status">' + $(element).find('.stock_status').html() + '</div>';
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
			
			html += '<div class="brand">' + $(element).find('.brand').html() + '</div>';
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
                        html += '  <div class="stock_status">' + $(element).find('.stock_status').html() + '</div>';
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
	display('grid');
}
//--></script>
</div>
<?php if ($es_status) { ?><script type="text/javascript"><!--
jQuery.query={numbers:false,spaces:false};
new function(a){var b=a.separator||"&";var c=a.spaces===false?false:true;var d=a.suffix===false?"":"[]";var e=a.prefix===false?false:true;var f=e?a.hash===true?"#":"?":"";var g=a.numbers===false?false:true;jQuery.query=new function(){var a=function(a,b){return a!=undefined&&a!==null&&(!!b?a.constructor==b:true)};var d=function(a){var b,c=/\[([^[]*)\]/g,d=/^([^[]+)(\[.*\])?$/.exec(a),e=d[1],f=[];while(b=c.exec(d[2]))f.push(b[1]);return[e,f]};var e=function(b,c,d){var f,g=c.shift();if(typeof b!="object")b=null;if(g===""){if(!b)b=[];if(a(b,Array)){b.push(c.length==0?d:e(null,c.slice(0),d))}else if(a(b,Object)){var h=0;while(b[h++]!=null);b[--h]=c.length==0?d:e(b[h],c.slice(0),d)}else{b=[];b.push(c.length==0?d:e(null,c.slice(0),d))}}else if(g&&g.match(/^\s*[0-9]+\s*$/)){var i=parseInt(g,10);if(!b)b=[];b[i]=c.length==0?d:e(b[i],c.slice(0),d)}else if(g){var i=g.replace(/^\s*|\s*$/g,"");if(!b)b={};if(a(b,Array)){var j={};for(var h=0;h<b.length;++h){j[h]=b[h]}b=j}b[i]=c.length==0?d:e(b[i],c.slice(0),d)}else{return d}return b};var h=function(a){var b=this;b.keys={};b._hash="";if(a.queryObject){jQuery.each(a.get(),function(a,c){b.SET(a,c)});b._hash=a.hash()}else{b._hash=arguments[1].replace(/^[?#]/,"");var d=""+arguments[0];d=d.replace(/^[?#]/,"");d=d.replace(/[;&]$/,"");if(c)d=d.replace(/[+]/g," ");jQuery.each(d.split(/[&;]/),function(){var a=decodeURIComponent(this.split("=")[0]||"");var c=decodeURIComponent(this.split("=")[1]||"");if(!a)return;if(g){if(/^[+-]?[0-9]+\.[0-9]*$/.test(c))c=parseFloat(c);else if(/^[+-]?[0-9]+$/.test(c))c=parseInt(c,10)}c=!c&&c!==0?true:c;if(c!==false&&c!==true&&typeof c!="number")c=c;b.SET(a,c)})}return b};h.prototype={queryObject:true,has:function(b,c){var d=this.get(b);return a(d,c)},hash:function(a){if(a){return this.copy().HASH(a)}else{return this._hash}},HASH:function(a){this._hash=a;return this},GET:function(b){if(!a(b))return this.keys;var c=d(b),e=c[0],f=c[1];var g=this.keys[e];while(g!=null&&f.length!=0){g=g[f.shift()]}return typeof g=="number"?g:g||""},get:function(b){var c=this.GET(b);if(a(c,Object))return jQuery.extend(true,{},c);else if(a(c,Array))return c.slice(0);return c},SET:function(b,c){var f=!a(c)?null:c;var g=d(b),h=g[0],i=g[1];var j=this.keys[h];this.keys[h]=e(j,i.slice(0),f);return this},set:function(a,b){return this.copy().SET(a,b)},REMOVE:function(a){return this.SET(a,null).COMPACT()},remove:function(a){return this.copy().REMOVE(a)},EMPTY:function(){var a=this;jQuery.each(a.keys,function(b,c){delete a.keys[b]});return a},load:function(a){var b=a.replace(/^.*?[#](.+?)(?:\?.+)?$/,"$1");var c=a.replace(/^.*?[?](.+?)(?:#.+)?$/,"$1");return new h(a.length==c.length?"":c,a.length==b.length?"":b)},empty:function(){return this.copy().EMPTY()},copy:function(){return new h(this)},COMPACT:function(){function b(c){var d=typeof c=="object"?a(c,Array)?[]:{}:c;if(typeof c=="object"){function e(b,c,d){if(a(b,Array))b.push(d);else b[c]=d}jQuery.each(c,function(c,f){if(!a(f))return true;e(d,c,b(f))})}return d}this.keys=b(this.keys);return this},compact:function(){return this.copy().COMPACT()},toString:function(d){var e=0,g=[],h=[],i=this;var j=function(a){a=a+"";if(c)a=a.replace(/ /g,"+");return encodeURIComponent(a)};var k=function(b,c,e){if(!a(e)||e===false)return;var f=[j(c)];if(e!==true){f.push("=");if($.isArray(d)&&$.inArray(c,d)!=-1){f.push(e)}else{f.push(j(e))}}b.push(f.join(""))};var l=function(a,b){var c=function(a){return!b||b==""?[a].join(""):[b,"[",a,"]"].join("")};jQuery.each(a,function(a,b){if(typeof b=="object")l(b,c(a));else k(h,c(a),b)})};l(this.keys);if(h.length>0)g.push(f);g.push(h.join(b));if(this._hash){g.push("#");g.push(this._hash)}return g.join("")}};return new h(location.search,location.hash)}}(jQuery.query||{})
function updatePath(){if(!!(window.history&&history.pushState)){if(current_product){l=window.location;path=l.protocol+"//"+l.host+l.pathname+$.query.remove("page").toString([""]);window.history.replaceState(null,null,path)}}}
var total_products=<?php echo $total_products; ?>;var start_page=<?php echo $start_page; ?>;var current_page=<?php echo $current_page; ?>;var page_limit=<?php echo $page_limit; ?>;var text_showing="<?php echo $text_showing; ?>";var text_loading="<?php echo $text_loading; ?>";var current_product=null;$(".el-p").hide();$(".el-d").show();
function esUpdate(e){$.ajax({type:"POST",dataType:"json",url:"<?php echo $next_page_link; ?>"+(current_page+1),beforeSend:function(){end=++current_page*page_limit>total_products?total_products:current_page*page_limit;$(".el-t").html(text_loading.replace("{start}",(current_page-1)*page_limit+1).replace("{end}",end).replace("{total}",total_products));$(".el-c").fadeIn(200)},success:function(e,t,n){if(e&&e.success&&e.data){updatePath();$("#el-s").children().attr("rel","loaded").removeAttr("style");$("#el-s").append(e.data);<?php if ($use_fade_in) { ?>$("#el-s").children("[rel!=loaded]").hide().fadeInWithDelay();<?php } ?>view=$.totalStorage("display");if(view){display(view,1)}else{display("list")}}else{if(e&&e.error&&e.error_type&&e.error_type=="maintenance"){window.location.reload()}else{if(window&&window.console&&window.console.log){window.console.log("ES.error",e,t,n)}}}},error:function(e,t,n){if(t=="parsererror"){window.location.reload()}},complete:function(t,n){$(".el-c").fadeOut(200);end=current_page*page_limit>total_products?total_products:current_page*page_limit;$(".el-d").html(text_showing.replace("{start}",(start_page-1)*page_limit+1).replace("{end}",end).replace("{total}",total_products));if($.isFunction(e)){e.call()}}})}
<?php if (!$use_more) { ?>
(function(a){a.fn.endlessScroll=function(b){var c={bottomPixels:400,fireOnce:true,fireDelay:0,contentTarget:"",callback:function(){return true},resetCounter:function(){return false},ceaseFire:function(){return false},intervalFrequency:250};var b=a.extend({},c,b),d=false,e=0,f=false,g=this,h=a(".endless_scroll_inner_wrap",this),i;a(this).scroll(function(){f=true;g=this});setInterval(function(){if(f){f=false;if(b.ceaseFire.apply(g,[e])===true){return}if(g==document||g==window){if(b.contentTarget!=""&&a(b.contentTarget).length){i=a(b.contentTarget).offset().top+a(b.contentTarget).height()-a(window).height()<=a(window).scrollTop()+b.bottomPixels}else{i=a(document).height()-a(window).height()<=a(window).scrollTop()+b.bottomPixels}}else{if(h.length==0){h=a(g).wrapInner('<div class="endless_scroll_inner_wrap" />').find(".endless_scroll_inner_wrap")}i=h.length>0&&h.height()-a(g).height()<=a(g).scrollTop()+b.bottomPixels}if(i&&(b.fireOnce==false||b.fireOnce==true&&d!=true)){if(b.resetCounter.apply(g)===true){e=0}d=true;e++;if(a.isFunction(b.beforeLoad)){b.beforeLoad.apply(g,[e])}b.callback.apply(g,[e,function(){if(b.fireDelay!==false||b.fireDelay!==0){setTimeout(function(){d=false},b.fireDelay)}else{d=false}}])}}},b.intervalFrequency)}})(jQuery)
$(window).endlessScroll({contentTarget:"#el-s",bottomPixels:<?php echo $bottom_pixels; ?>,callback:function(a,b){esUpdate(b)},ceaseFire:function(a){if(current_page>=Math.ceil(total_products/page_limit)){return true}return false}});
<?php } else if ($use_more && $use_more_after == 0){ ?>
$(".el-m").click(function(){$(".el-m").fadeOut(200);esUpdate(function(){if(current_page*page_limit+1<=total_products){$(".el-m").fadeIn(200)}})});$(function(){if(start_page*page_limit<total_products){$(".el-md").show()}});
<?php } else { ?>
(function(a){a.fn.endlessScroll=function(b){var c={bottomPixels:400,fireOnce:true,fireDelay:0,contentTarget:"",callback:function(){return true},resetCounter:function(){return false},ceaseFire:function(){return false},intervalFrequency:250};var b=a.extend({},c,b),d=false,e=0,f=false,g=this,h=a(".endless_scroll_inner_wrap",this),i;a(this).scroll(function(){f=true;g=this});setInterval(function(){if(f){f=false;if(b.ceaseFire.apply(g,[e])===true){return}if(g==document||g==window){if(b.contentTarget!=""&&a(b.contentTarget).length){i=a(b.contentTarget).offset().top+a(b.contentTarget).height()-a(window).height()<=a(window).scrollTop()+b.bottomPixels}else{i=a(document).height()-a(window).height()<=a(window).scrollTop()+b.bottomPixels}}else{if(h.length==0){h=a(g).wrapInner('<div class="endless_scroll_inner_wrap" />').find(".endless_scroll_inner_wrap")}i=h.length>0&&h.height()-a(g).height()<=a(g).scrollTop()+b.bottomPixels}if(i&&(b.fireOnce==false||b.fireOnce==true&&d!=true)){if(b.resetCounter.apply(g)===true){e=0}d=true;e++;if(a.isFunction(b.beforeLoad)){b.beforeLoad.apply(g,[e])}b.callback.apply(g,[e,function(){if(b.fireDelay!==false||b.fireDelay!==0){setTimeout(function(){d=false},b.fireDelay)}else{d=false}}])}}},b.intervalFrequency)}})(jQuery)
var use_more_after=<?php echo $use_more_after; ?>;var auto_load_counter=<?php echo $auto_load_counter; ?>;$(window).endlessScroll({contentTarget:"#el-s",bottomPixels:<?php echo $bottom_pixels; ?>,callback:function(a,b){auto_load_counter++;esUpdate(function(){b.call();if(auto_load_counter>=use_more_after&&current_page*page_limit+1<=total_products){$(".el-m").fadeIn(200)}})},ceaseFire:function(a){if(current_page>=Math.ceil(total_products/page_limit)){return true}if(auto_load_counter>=use_more_after){return true}return false}});$(".el-m").click(function(){$(".el-m").fadeOut(200);esUpdate(function(){auto_load_counter=0})});$(function(){if(start_page*page_limit<total_products){$(".el-m").hide();$(".el-md").show()};if(auto_load_counter>=use_more_after&&current_page*page_limit+1<=total_products){$(".el-m").fadeIn(200)}});
<?php } ?>
$(function(){end=current_page*page_limit>total_products?total_products:current_page*page_limit;$(".el-d").html(text_showing.replace("{start}",(start_page-1)*page_limit+1).replace("{end}",end).replace("{total}",total_products));var a;$(window).scroll(function(){if(a)clearTimeout(a);a=setTimeout(function(){$.each($("#el-s").children(),function(){if($(this).offset().top>=$(window).scrollTop()){if(this.id){current_product=this.id;updatePath();return false}}return true})},500)})})
<?php if ($use_fade_in) { ?>$.fn.fadeInWithDelay=function(){var a=0;return this.each(function(){var b=this;$(this).delay(a).fadeIn(200,function(){$(this).removeAttr("style")});a+=100})};<?php } ?>
<?php if ($use_back_top) { ?>jQuery.fn.topLink=function(a){a=jQuery.extend({min:350,fadeSpeed:"fast",scrollSpeed:"slow",easing:"easeOutQuint"},a);return this.each(function(){var b=$(this);var c=false;var d=false;b.hide();$(window).scroll(function(){if($(window).scrollTop()>=a.min){if(!c&&!d){c=true;b.fadeIn(a.fadeSpeed)}}else{if(c){c=false;b.fadeOut(a.fadeSpeed)}}});b.click(function(){d=true;$("body,html").animate({scrollTop:0},a.scrollSpeed,a.easing,function(){d=false});window.location.hash="";return false})})};$("#back-to-top").topLink();<?php } ?>
<?php if ($use_sticky_footer) { ?>var showing_footer=false;$(window).scroll(function(){if($("#el-oc").length&&$("#el-s").length){if($(window).scrollTop()>$("#el-s").offset().top&&$(window).scrollTop()+$(window).height()<$("#el-oc").offset().top){if(!showing_footer){$("#el-oc-cl").fadeIn();$(".el-c",$("#el-oc-cl")).hide();showing_footer=true}}else{showing_footer=false;$("#el-oc-cl").hide()}}})<?php } ?>
//--></script><?php } ?>
<?php echo $footer; ?>