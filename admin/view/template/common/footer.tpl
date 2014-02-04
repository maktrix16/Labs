</div>
<div id="footer"><?php echo $text_footer; ?></div>
<?php 
    if ($_SERVER['HTTP_HOST']=='stage.thebabyshop.com' OR $_SERVER['HTTP_HOST'] == 'labs.thebabyshop.com') {
        if ($_SERVER['HTTP_HOST']=='stage.thebabyshop.com') {
            $image_name = "server_label_stage_b.png";
        }else if ($_SERVER['HTTP_HOST']=='labs.thebabyshop.com') {
            $image_name = "server_label_labs_b.png";
        }
?>  
    <div style="width:100px;height:100px;margin:0px;padding:0px;bottom:0px;left:0px;position:fixed;z-index:9999;background-image:url(view/image/<?php echo $image_name;?>);background-position:top left!important;background-repeat:repeat!important;"></div>
<?php } ?>
</body></html>