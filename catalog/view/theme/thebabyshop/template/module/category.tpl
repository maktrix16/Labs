<div class="box">
  <div class="box-content">
    <div class="box-category">
      <ul>
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['category_id'] == $category_id) { ?>
        <li>
        <a class="active"> <span><?php echo $category['name']; ?></span>	</a>
        <?php if ($category['children']) { ?>
        <ul>
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a class="active">  <?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a >  <?php echo $child['name']; ?></a>
            <?php } ?>
             <?php if ($child['sub_children']) { ?>
        	<ul>
                    <?php foreach ($child['sub_children'] as $sub_children) { ?>
        	 	<li><a href="<?php echo $sub_children['href']; ?>">  <?php echo $sub_children['name']; ?></a></li>
                    <?php } ?>
        	</ul>   
        	 <?php } ?> 
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
        </li>
        <?php } ?>
      <?php } ?>
      </ul>
    </div>
  </div>
</div>