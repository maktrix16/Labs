<?php 
/*
  Project: CSV Category Import
  Author : karapuz <support@ka-station.com>

  Version: 1 ($Revision: 11 $)

*/

?>

<?php echo $header; ?>

<style type="text/css">
<!--

span.important_note {
  color: red;
  font-weight: normal;
}

div.scroll {
  height: 200px;
  width: 100%;
  overflow: auto;
  border: 1px solid black;
  background-color: #ccc;
  padding: 8px;
}

span.note {
  font-weight: bold;
}

.list td a.link {
  text-decoration: underline;
  color: blue;
}

#import_status {
  color: black;
}

-->
</style>


<div id="content">

<?php echo $ka_top; ?>

  <div class="box">

    <?php if (!empty($is_wrong_db)) { ?>

      Database is not compatible with the extension. Please re-install the extension on the 'Extensions / Ka Extensions' page.
  
    <?php } elseif ($params['step'] == 1) { ?>

    <div class="heading">
      <h1><img src="view/image/backup.png" alt="" /> <?php echo $this->language->get('CSV Category Import'); ?>: STEP 1 of 3</h1>
      <div class="buttons">
        <a onclick="$('#form').submit();" class="button"><span>Next</span></a>
      </div>
    </div>
    
    <div class="content">

      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <input type="hidden" name="mode" value="" />
        <table class="form">
          <tr>
            <td colspan="3">
            This page allows you to import category data from a file in <a href="http://en.wikipedia.org/wiki/Comma-separated_values" target="_blank">CSV</a> format. <br /><br />
            
            <span class="important_note">It is recommended to create <a href="<?php echo $backup_link; ?>" target="_blank">a database backup</a> before starting the import procedure
            because the import process is irreversible.</span>
            </td>
          </tr>
          <tr>
            <td width="25%">Profile</td>
            <td>
              <?php if (!empty($profiles)) { ?>
                <?php echo $this->showSelector("profile_id", $profiles, $params['profile_id']); ?>

                <input type="button" value="Load" onclick="javascript: loadProfile();" />
                <input type="button" value="Delete" onclick="javascript: deleteProfile();" />
               <?php } else { ?>
                no profiles present
               <?php } ?>
            </td>
            <td width="50%"><span class="help">Profiles may store import parameters to simlify management of different import configurations. 
            You can save import parameters to a profile on the next step</td>
          </tr>
        </table>
        
      <div id="tabs" class="htabs">
        <a href="#tab-general">General</a>
        <a href="#tab-extra">Extra</a>
      </div>   
      
      <div id="tab-general">
        <table class="form">          
          <tr>
            <td width="25%">Update Mode</td>
            <td>
              <select name="update_mode" style="width: 300px">
                <option <?php if ($params['update_mode'] == 'add') { ?>selected="selected" <?php } ?>value="add">Add new records (safe)</option>
                <option <?php if ($params['update_mode'] == 'replace') { ?>selected="selected" <?php } ?>value="replace">Replace old records</option>
              </select>
            </td>
            <td width="50%"><span class="help">In the 'add' mode all related information is just added to the category. In the 'Replace' mode old information related to the category is deleted first. For example, the 'Replace' mode is useful for updating special prices and discounts.</span></td>
          </tr>
          <tr>
            <td width="25%">Field Delimiter</td>
            <td>
              <select name="delimiter" style="width: 300px">
                <option <?php if ($params['delimiter'] == 't') { ?>selected="selected" <?php } ?>value="t">tab</option>
                <option <?php if ($params['delimiter'] == 's') { ?>selected="selected" <?php } ?>value="s">semicolon ";"</option>
                <option <?php if ($params['delimiter'] == 'c') { ?>selected="selected" <?php } ?>value="c">comma ","</option>
              </select>
            </td>
            <td width="50%">&nbsp;</td>
          </tr>

          <tr>
            <td width="25%">File Charset</td>
            <td colspan="2">
              <input type="hidden" id="charset_option" name="charset_option" value="<?php echo $params['charset_option']; ?>" />
              <table width="600px">

                <tr id="predefined_charset_row" <?php if ($params['charset_option'] != 'predefined') { ?> style="display:none" <?php } ?>>
                  <td width="280px">
                    <?php echo $this->showSelector("charset", $charsets, $params['charset'], 'style="width:300px;"'); ?>
                  </td>
                  <td><a href="javascript: void(0);" onclick="javascript: activateCharset('custom');">make editable</a></td>
                </tr>

                <tr id="custom_charset_row" <?php if ($params['charset_option'] == 'predefined') { ?> style="display:none" <?php } ?>>
                  <td width="250px">
                    <input type="text" style="width: 290px" id="custom_charset" name="custom_charset" value="<?php echo $params['charset']; ?>" />
                  </td>
                  <td><a href="javascript: void(0);" onclick="javascript: activateCharset('predefined');">select from predefined values</a></td>
                </tr>

              </table>
              <span class="help">You have to be aware of the import file charset. Use ISO-8859-1 if your data consists of Latin characters only.</span>
            </td>
          </tr>
          <tr>
            <td width="25%">File Location</td>
            <td>
              <input type="radio" name="location" value="local" onclick="javascript: activateLocation('local');" <?php if ($params['location'] == 'local') { ?> checked="checked" <?php } ?> />Local computer
              <input type="radio" name="location" value="server" onclick="javascript: activateLocation('server');" <?php if ($params['location'] == 'server') { ?> checked="checked" <?php } ?> />Server
            </td>
            <td width="50%">&nbsp;</td>
          </tr>

          <tr id="local_location" <?php if ($params['location'] != 'local') { ?>style="display:none" <?php } ?>>
            <td width="25%">File</td>
            <td><input type="file" name="file" size="40" /> <br />
              <span class="help">Max. file size: <?php echo $max_file_size; ?></span>
            </td>
            <td width="50%"><span class="help">If your file exceeds the max. file size limit then upload the file manually to the store 'temp' directory and specify the path.</span></td>
          </tr>

          <tr id="server_location" <?php if ($params['location'] != 'server') { ?>style="display:none" <?php } ?>>
            <td width="25%">File path</td>
            <td nowrap="nowrap" colspan="2"><?php echo $store_root_dir . DIRECTORY_SEPARATOR; ?><input type="text" name="file_path" size="50" value="<?php echo $params['file_path']; ?>" />
            <br />
            <input type="checkbox" name="rename_file" value="Y" <?php if (!empty($params['rename_file'])) { ?> checked="checked" <?php } ?> />
            Rename the file after successful import
            </td>
          </tr>

          <tr>
            <td width="25%">Sub-Category Separator</td>
            <td>
              <input type="text" name="cat_separator" maxlength="8" size="8" value="<?php echo $params['cat_separator']; ?>" />
            </td>
            <td width="50%"><span class="help">It is a sub-category separator. A separator of multiple categories can be defined on the "<a href="<?php echo $settings_page;?>" target="settings_page">extension settings</a>" page.</span></td>
          </tr>

          <tr>
            <td width="25%">Path to Images Directory</td>
            <td colspan="2"><?php echo $store_images_dir . DIRECTORY_SEPARATOR; ?>
              <input type="text" name="images_dir" value="<?php echo $params['images_dir']?>" />
              <span class="help">File names must consist of Latin characters only. Files with national characters in names will not be imported.</span>
            </td>
          </tr>

          <tr>
            <td width="25%">Incoming Images Directory</td>
            <td colspan="2">
              <?php if ($params['image_urls_allowed']) { ?>
                <?php echo $store_images_dir . DIRECTORY_SEPARATOR; ?>
                <input type="text" name="incoming_images_dir" value="<?php echo $params['incoming_images_dir']?>" />
                <span class="help"><span class="note">Important:</span> Images provided as URLs will be downloaded to your server and it may dramatically decrease speed of the import. Avoid using URLs in the import as long as you can.
                </span>               
              <?php } else { ?>
                URLs are not allowed due to server configuration settings (curl library not found and allow_url_fopen=false).
              <?php } ?>
            </td>
          </tr>

          <tr>
            <td width="25%">Language</td>
            <td>
              <?php if (count($languages) > 1) { ?>
                <select name="language_id" style="width: 300px">
                  <?php foreach ($languages as $language) { ?>
                    <option value="<?php echo $language['language_id']; ?>" <?php if ($language['language_id'] == $params['language_id']) { ?>selected="selected"<?php } ?>><?php echo $language['name']; ?></option>
                  <?php } ?>
                </select>
              <?php } else { ?>
                <?php $language = reset($languages); echo $language['name']; ?>
                <input type="hidden" name="language_id" value="<?php echo $language['language_id']; ?>" />
              <?php } ?>
            </td>
            <td width="50%">&nbsp;</td>
          </tr>
          
          <tr>
            <td width="25%">Store</td>
            <td>
              <?php if (count($stores) > 1) { ?>
                <select name="store_ids[]" multiple="multiple" size="5" style="width: 300px">
                  <?php foreach($stores as $store) { ?>
                    <option <?php if (in_array($store['store_id'], $params['store_ids'])) { ?>selected="selected" <?php } ?>value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
                  <?php } ?>
                </select>
              <?php } else { ?>
                <?php $store = reset($stores); echo $store['name']; ?>
                <input type="hidden" name="store_id" value="<?php echo $store['store_id']; ?>" />
              <?php } ?>
            </td>
            <td width="50%">&nbsp;</td>
          </tr>
        </table>
      </div>
              
      <div id="tab-extra">
        <table class="form">
          <tr>
            <td width="25%">Disable categories not presented in file</td>
            <td>
              <input type="checkbox" name="disable_not_imported_categories" value="Y" <?php if (!empty($params['disable_not_imported_categories'])) { ?> checked="checked" <?php } ?> />
            </td>
            <td width="50%">&nbsp;</td>
          </tr>
          <tr>
            <td width="25%">Do not create new categories</td>
            <td>
              <input type="checkbox" name="skip_new_categories" value="Y" <?php if (!empty($params['skip_new_categories'])) { ?> checked="checked" <?php } ?> />
            </td>
            <td width="50%">&nbsp;</td>
          </tr>
        </table>
      </div>
      
      </form>
    </div>

<script type="text/javascript"><!--

$(document).ready(function() {
  $('#tabs a').tabs();
});

function activateLocation(id) {
  if (id == 'server') {
    $('#local_location').hide();
    $('#server_location').show();
  } else if (id == 'local') {
    $('#local_location').show();
    $('#server_location').hide();
  }
}


function activateCharset(id) {
  if (id == 'predefined') {
    $('#predefined_charset_row').show();
    $('#custom_charset_row').hide();
    $('#charset_option').val('predefined');

  } else if (id == 'custom') {
    $('#predefined_charset_row').hide();
    $('#custom_charset_row').show();
    $('#charset_option').val('custom');
  }
}


function loadProfile() {

  $("#form input[name='mode']").attr('value', 'load_profile');
  $("#form").submit();
}


function deleteProfile() {

  $("#form input[name='mode']").attr('value', 'delete_profile');
  $("#form").submit();
}

//--></script> 

    <?php } elseif ($params['step'] == 2) { ?>

    <div class="heading">
      <h1><img src="view/image/backup.png" alt="" /> <?php echo $this->language->get('CSV Category Import'); ?>: STEP 2 of 3</h1>
      <div class="buttons">
        <a onclick="location='<?php echo $back_action; ?>'" class="button"><span><?php echo "Back"; ?></span></a>
        <a onclick="$('#form').submit();" class="button"><span>Next</span></a>    
      </div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <input type="hidden" name="mode" value="" />

        <table style="padding-bottom: 10px">
          <tr>
            <td width="100px">Profile</td>
            <td width="150px">
              <input type="hidden" name="profile_id" value="<?php echo $params['profile_id']; ?>" />
              <input type="text" name="profile_name" value="<?php echo $params['profile_name']; ?>" style="width: 90%" />
            </td>
            <td width="50px">
              <input type="button" value="Save" onclick="javascript: saveProfile();" />
            </td>
            <td width="100px">
            </td>
            <td width="200px">
              File size: <?php echo $filesize; ?>
            </td>
          </tr>
        </table>
    
      <div id="tabs" class="htabs">
        <a href="#tab-general">General</a>
        <?php if ($filters_enabled) { ?>
          <a href="#tab-filters">Filters</a>
        <?php } ?>
      </div>
      
        <div id="tab-general">
          Match the fields with columns from your file.
          Some fields may be selected already but please verify all data before starting
          the import.<br /><br />

        <table class="list">

          <thead>
            <tr>
              <td class="left" width="25%">Field</td>
              <td>Column in File</td>
              <td width="50%">Notes</td>
            </tr>
          </thead>

          <tbody>
          <?php foreach($matches['fields'] as $fk => $fv) { ?>
            <tr>
              <td width="25%"><?php echo $fv['name'] ?>
                <?php if (!empty($fv['required'])) { ?><span class="required">*</span><?php } ?>
              </td>
              <td>
                <?php 
                  $val = (isset($fv['column'])) ? $fv['column']:0;
                  echo $this->showSelector("fields[$fv[field]]", $columns, $val);
                ?>
              </td>
              <td width="50%"><span class="help"><?php if (isset($fv['descr'])) { echo $fv['descr']; } ?></span></td>
            </tr>
          <?php } ?>
          </tbody>
        </table>
        </div>

        <?php if ($filters_enabled) { ?>
          <div id="tab-filters">
          Available filter groups are listed below. You can create new filter groups <a href="<?php echo $filter_page_url; ?>">here</a><br /><br />

          <table class="list">
            <thead>
              <tr>
                <td class="left" width="25%">Filter Group</td>
                <td>Column in File</td>
                <td width="50%">Notes</td>
              </tr>
            </thead>

            <tbody>
            <?php foreach($matches['filter_groups'] as $fk => $fv) { ?>
              <tr>
                <td width="25%"><?php echo $fv['name'] ?></td>
                <td>
                  <?php 
                    $val = (isset($fv['column'])) ? $fv['column']:0;
                    echo $this->showSelector("filter_groups[$fv[filter_group_id]]", $columns, $val); 
                  ?>
                </td>
                <td width="50%">&nbsp;</td>
              </tr>
            <?php } ?>
            </tbody>
          </table>
          </div>
        <?php } ?>
    </div>

<script type="text/javascript"><!--

$(document).ready(function() {
  $('#tabs a').tabs();
  $('#option_tabs a').tabs();
});

function saveProfile() {

  $("#form input[name='mode']").attr('value', 'save_profile');
  $("#form").submit();
}

//--></script> 

    <?php } elseif ($params['step'] == 3) { ?>

    <div class="heading">
      <h1><img src="view/image/backup.png" alt="" /> <?php echo $this->language->get('CSV Category Import'); ?>: STEP 3 of 3</h1>

      <div class="buttons" id="buttons_in_progress">
        <a onclick="javascript: ka_stop_import();" class="button"><span>Stop</span></a>
      </div>
      <div class="buttons" id="buttons_stopped" style="display: none">
        <a onclick="javascript: ka_continue_import();" class="button"><span>Continue</span></a>
      </div>
      <div class="buttons" id="buttons_completed" style="display: none">
        <a onclick="location='<?php echo $done_action; ?>'" class="button"><span>Done</span></a>
      </div>
    </div>
    <div class="content">

        <h2 id="import_status">Import is in progress</h2>
        <table class="form">
          <tr>
            <td colspan="2">The import statistics updates every <? echo $update_interval; ?> seconds. Please do not close the window.</td>
          </tr>
          <tr>
            <td width="25%">Completion at</td>
            <td id="completion_at">0%</td>
          </tr>
          <tr>
            <td width="25%">Time Passed</td>
            <td id="time_passed">0</td>
          </tr>
          <tr>
            <td width="25%">Lines Processed</td>
            <td id="lines_processed">0</td>
          </tr>
          <tr>
            <td width="25%">Categories Created</td>
            <td id="categories_created">0</td>
          </tr>
          <tr>
            <td width="25%">Categories Updated</td>
            <td id="categories_updated">0</td>
          </tr>
          <tr>
            <td width="25%">Categories Deleted</td>
            <td id="categories_deleted">0</td>
          </tr>
          <tr>
            <td colspan="2">
              <h4>Import messages:</h4>
              <div class="scroll" id="scroll">
              </div>
              <input type="checkbox" id="autoscroll" checked="checked" /> Autoscrolling
            </td>
          </tr>
        </table>
    </div>

<script type="text/javascript"><!--

var ka_page_url = '<?php echo $page_url; ?>';
var ka_timer    = null;

/*
  possible statuses
    not_started -
    in_progress -
    completed   -
    temp_error  -
    fatal_error -
*/
var ka_import_status = 'not_started';

/*
  possible ajax statuses:
    not_started -
    in_progress -
*/
var ka_ajax_status   = 'not_started';

function ka_update_interface(status) {
  $("#buttons_in_progress").hide();
  $("#buttons_completed").hide();
  $("#buttons_stopped").hide();

  if (status == 'fatal_error') {
    $("#import_status").html("Server Script Error. Please check the error logs");
    $("#buttons_completed").show();

  } else if (status == 'error') {
    $("#import_status").html("Fatal Import Error. Please see the import messages box");
    $("#buttons_completed").show();

  } else if (status == 'stopped') {
    $("#import_status").html("Import stopped");
    $("#buttons_stopped").show();

  } else if (status == 'completed') {
    $("#buttons_completed").show();
    $("#import_status").html("Import is complete!");
  
  } else if (status == 'in_progress') {
    $("#import_status").html('Import is in progress');
    $("#buttons_in_progress").show();
  }
}


function ka_stop_import() {
  ka_import_status = 'fatal_error';
  $("#import_status").html('Import has been stopped');
  ka_update_interface('stopped');
}


function ka_continue_import() {
  ka_import_status = 'in_progress';
  ka_update_interface('in_progress');
}


function ka_ajax_error(jqXHR, textStatus, errorThrown) {
  ka_import_status = 'temp_error';

  if ($.inArray(textStatus, ['abort', 'parseerror', 'error'])) {
    ka_import_status = 'fatal_error';

    if (jqXHR.status == '200') {
      ka_add_message("Server error (status=200). Details:" + jqXHR.responseText);
    } else {
      ka_add_message("Server error (status=" + jqXHR.status + ").");
    }
    ka_update_interface('stopped');
  } else {
    ka_add_message('Temporary connection problems.');
  }

  ka_ajax_status = 'not_started';
}


function ka_ajax_success(data, textStatus, jqXHR) {

  if (!data) {

    ka_import_status = 'fatal_error';
    ka_update_interface('fatal_error');

  } else {
    if (data['messages']) {
      for (i in data['messages']) {
        ka_add_message(data['messages'][i]);
      }
    }

    $("#completion_at").html(data['completion_at']);
    $("#lines_processed").html(data['lines_processed']);
    $("#categories_created").html(data['categories_created']);
    $("#categories_updated").html(data['categories_updated']);
    $("#categories_deleted").html(data['categories_deleted']);
    $("#time_passed").html(data['time_passed']);

    if (data['status'] == 'error') {
      ka_import_status = 'fatal_error';
      ka_update_interface('error');

    } else if (data['status'] == 'completed') {
      ka_import_status = 'completed';
      ka_update_interface('completed');
    }
  }

  ka_ajax_status = 'not_started';
}


function ka_add_message(msg) {
  var dt       = new Date();
  var log_time = "[" + dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds() + "] ";
  $("#scroll").append(log_time + msg + "<br />");

  if ($("#autoscroll").attr("checked")) {
    $("#scroll").scrollTop(999999);
  }
}

var ka_dots     = 0;
var status_text = '';

function ka_import_loop() {

  if ($.inArray(ka_import_status, ['fatal_error', 'completed']) >= 0) {
    return;
  }

  if ($.inArray(ka_import_status, ['in_progress']) >= 0) {

    // show animation

    if (ka_dots == 0) {
      status_text = "Import is in progress";
    } else {
      status_text = status_text + '.';
    }
    if (ka_dots++ > 5)
      ka_dots = 0;
    $("#import_status").html(status_text);
  }

  if ($.inArray(ka_ajax_status, ['not_started']) >= 0) {
    ka_ajax_status = 'in_progress';
    $.ajax({
      url: ka_page_url,
      dataType: 'json',
      cache : false,
      success: ka_ajax_success,
      error: ka_ajax_error
    });
  }
}

  
$(document).ready(function() {
  ka_import_status = 'in_progress';
  ka_timer = setInterval('ka_import_loop()', 750);
});

//--></script> 

    <?php } ?>

  </div>

  <span class="help">'CSV Category Import' extension developed by <a href="mailto:support@ka-station.com?subject=CSV Category Import">karapuz</a></span>
</div>

<?php echo $footer; ?>