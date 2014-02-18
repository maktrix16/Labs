</div>
<div id="footer"><?php echo $text_footer; ?></div>
<?php 
    if ($_SERVER['HTTP_HOST']=='stage.thebabyshop.com' OR $_SERVER['HTTP_HOST'] == 'labs.thebabyshop.com' OR $_SERVER['HTTP_HOST'] == 'labstage.thebabyshop.com') {
        $image_name = "server_label_".substr($_SERVER['HTTP_HOST'], 0, strpos($_SERVER['HTTP_HOST'], '.')).".png";
?>  
    <div style="width:50px;height:215px;margin:0px;padding:0px;bottom:200px;right:0px;position:fixed;z-index:9999;background-image:url(view/image/<?php echo $image_name;?>);background-position:top left!important;background-repeat:repeat!important;"></div>
<?php } ?>
</body></html>