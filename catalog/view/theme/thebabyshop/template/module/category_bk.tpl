<script type="text/javascript">
$(document).ready(function() {
	$('#accordion-1').dcAccordion({
		disableLink: false,	
		menuClose: false,
		autoClose: true,
		autoExpand: true,		
		saveState: false,
	});
});
</script>
<div class="box">
  <div class="box-heading"><h2><?php echo $heading_title; ?></h2></div>
  <div class="box-content">
    <div class="box-category">
      <ul class="accordion"  id="accordion-1">
        <?php foreach ($categories as $category) { ?>
        <li>
          <?php if ($category['category_id'] == $category_id) { ?>
          <a class="active"><?php echo $category['name']; ?></a><div class="dcjq-icon">&nbsp;&nbsp;&nbsp;</div>
          <?php } else if($category['children']) { ?>
          <a><?php echo $category['name']; ?></a><div class="dcjq-icon">&nbsp;&nbsp;&nbsp;</div>
          <?php } else { ?>
          <a><?php echo $category['name']; ?></a>
          <?php } ?>
          <?php if ($category['children']) { ?>
          <ul>
            <?php foreach ($category['children'] as $child) { ?>
            <li class="accordion"  id="accordion-1">
              <?php if ($child['category_id'] == $child_id) { ?>
              <a class="active"><?php echo $child['name']; ?></a><div class="dcjq-icon">&nbsp;&nbsp;&nbsp;</div>
              <?php if ($child['sub_children']) { ?>
        	<ul>
                    <?php foreach ($child['sub_children'] as $sub_children) { ?>
                    <li><a href="<?php echo $sub_children['href']; ?>">  <?php echo $sub_children['name']; ?></a></li>
                    <?php } ?>
        	</ul>   
             <?php } ?> 
              <?php } else { ?>
              <a><?php echo $child['name']; ?></a><div class="dcjq-icon">&nbsp;&nbsp;&nbsp;</div>
              <?php if ($child['sub_children']) { ?>
        	<ul>
        	 	<?php foreach ($child['sub_children'] as $sub_children) { ?>
        	 	<li><a href="<?php echo $sub_children['href']; ?>"><?php echo $sub_children['name']; ?></a></li>
        	  	<?php } ?>
        	</ul>   
             <?php } ?>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>