<div class="box">
  <div class="box-heading"><h2><?php echo $heading_title; ?></h2></div>
  <div class="box-content">
    <ul class="list-global-module static-list-global-module box-filter">
    	<?php foreach ($filter_groups as $filter_group) { ?>
        <li><span id="filter-group<?php echo $filter_group['filter_group_id']; ?>"><i class="icon-share-alt" style="display:none;"></i><?php echo $filter_group['name']; ?></span>
            <ul class="list-filter static-list-global-module">
                <?php foreach ($filter_group['filter'] as $filter) { ?>
                <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                <li class="active">
                	<i class="icon-check check_icon" style="display:none;"></i>
                    <input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" class="refresh" checked="checked" />
                    <label for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
                </li>
                <?php } else { ?>
                <li>
                	<i class="icon-check-empty check_icon" style="display:none;"></i>
                    <input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" class="refresh" />
                    <label for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
                </li>
                <?php } ?>
                <?php } ?>
            </ul>
        </li>
        <?php } ?>
    </ul>
  </div>
</div>
<script type="text/javascript"><!--
$('.refresh').bind('click', function() {
	filter = [];
	
	$('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>