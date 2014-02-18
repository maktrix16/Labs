<?php
/*
  Project: CSV Category Import
  Author : karapuz <support@ka-station.com>

  Version: 1 ($Revision: 12 $)

*/?>
<?php echo $header; ?>

<div id="content">

<?php echo $ka_top; ?>

<div class="box">
  <div class="heading">
    <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

      <table id="module" class="list">
        <thead> 
          <tr>
            <td class="left">Setting</td>
            <td>Value</td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="left" width="70%">Version          
            </td>
            <td class="left" width="30%">
              <?php echo $extension_version; ?>
            </td>
          </tr>
        
          <tr>
            <td class="left">Script update interval in seconds (5-25)<span class="help">Reduce this value if you experience server connection issues during the import. Default value is 10.</span></td>
            <td class="left">
              <input type="text" name="ka_ci_update_interval" value="<?php echo $ka_ci_update_interval; ?>" />
            </td>
          </tr>
          
          <tr>
            <td class="left">Set status for new categories
              <span class="help">This option is ignored if the status field is defined in the file</span>
            </td>
            <td class="left">
              <select name="ka_ci_status_for_new_categories">
                <option value="1" <?php if ($ka_ci_status_for_new_categories == '1') { ?> selected="selected" <?php } ?>>'Enabled' for all</option>
                <option value="0" <?php if ($ka_ci_status_for_new_categories == '0') { ?> selected="selected" <?php } ?>>'Disabled' for all</option>
              </select>
            </td>
          </tr>
          
          <tr>
            <td class="left">General separator for multiple values</td>
            <td class="left">
              <input type="text" name="ka_ci_general_separator" value="<?php echo $ka_ci_general_separator; ?>" />
            </td>
          </tr>
                    
        </tbody>
      </table>
    
    </form>
  </div>
</div>

<script type="text/javascript"><!--

//--></script>

<?php echo $footer; ?>