<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } else if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
    <div class="content">
      <div id="tabs" class="htabs"><a href="#tab-general"><?php echo $tab_general; ?></a><a href="#tab-about"><?php echo $tab_about; ?></a></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
       <div id="tab-general">
        <table class="form">
          <tr>
            <td><?php echo $entry_bottom_pixels; ?></td>
            <td>
              <input type="text" name="es_bottom_pixels" value="<?php echo $es_bottom_pixels; ?>" size="4" />&nbsp;<?php echo $text_bottom_pixels; ?>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_use_fade_in; ?></td>
            <td>
              <input type="checkbox" name="es_use_fade_in" value="1" <?php echo ($es_use_fade_in) ? 'checked="checked"': ''; ?>/>&nbsp;<?php echo $text_use_fade_in; ?>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_use_back_to_top; ?></td>
            <td>
              <input type="checkbox" name="es_use_back_to_top" value="1" <?php echo ($es_use_back_to_top) ? 'checked="checked"': ''; ?>/>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_use_more; ?></td>
            <td>
              <input type="checkbox" name="es_use_more" id="es_use_more" value="1" <?php echo ($es_use_more) ? 'checked="checked"': ''; ?>/>&nbsp;<?php echo $text_use_more; ?>
            </td>
          </tr>
          <tr>
            <td colspan="2" style="padding:0;margin:0;">
              <div id="es_use_more_after"<?php echo (!$es_use_more) ? ' style="display:none;"': ''; ?>>
              <table class="form" style="margin:0;">
                <tr>
                  <td style="border:0px;"><?php echo $entry_use_more_after; ?></td>
                  <td style="border:0px;">
                    <input type="text" name="es_use_more_after" value="<?php echo $es_use_more_after; ?>" size="4" />&nbsp;<?php echo $text_use_more_after; ?>
                  </td>
                </tr>
              </table>
              </div>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_use_sticky_footer; ?></td>
            <td>
              <input type="checkbox" name="es_use_sticky_footer" value="1" <?php echo ($es_use_sticky_footer) ? 'checked="checked"': ''; ?>/>&nbsp;<?php echo $text_use_sticky_footer; ?>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_max_items_per_load; ?></td>
            <td>
              <input type="text" name="es_max_items_per_load" value="<?php echo $es_max_items_per_load; ?>" size="4" />&nbsp;<?php echo $text_max_items_per_load; ?>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="endless_scroller_status">
                <?php if ($endless_scroller_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
              <input type="hidden" name="es_installed" value="1" />
            </td>
          </tr>
        </table>
       </div>
       <div id="tab-about">
        <table class="form">
          <tr>
            <td style="min-width:200px;"><?php echo $text_ext_name; ?></td>
            <td style="min-width:400px;"><?php echo $ext_name; ?></td>
            <td rowspan="7" style="width:440px;border-bottom:0px;"><img src="view/image/es/extension_logo.png" /></td>
          </tr>
          <tr>
            <td><?php echo $text_ext_version; ?></td>
            <td><b><?php echo $ext_version; ?></b> [ <?php echo $ext_type; ?> ]</td>
          </tr>
          <tr>
            <td><?php echo $text_ext_compat; ?></td>
            <td><?php echo $ext_compatibility; ?></td>
          </tr>
          <tr>
            <td><?php echo $text_ext_url; ?></td>
            <td><a href="<?php echo $ext_url; ?>" target="_blank"><?php echo $ext_url ?></a></td>
          </tr>
          <tr>
            <td><?php echo $text_ext_support; ?></td>
            <td>
              <a href="mailto:<?php echo $ext_support; ?>?subject=<?php echo $ext_subject; ?>"><?php echo $ext_support; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;
              <a href="<?php echo $ext_support_forum; ?>"><?php echo $text_forum; ?></a>
              <a href="view/static/bull5-i_es_extension_help.htm" id="help_notice" style="float:right;"><?php echo $text_asking_help; ?></a>
            </td>
          </tr>
          <tr>
            <td><?php echo $text_ext_legal; ?></td>
            <td>Copyright &copy; 2011 Romi Agar. <a href="view/static/bull5-i_es_extension_terms.htm" id="legal_notice"><?php echo $text_terms; ?></a></td>
          </tr>
          <tr>
            <td style="border-bottom:0px;"></td>
            <td style="border-bottom:0px;"></td>
          </tr>
        </table>
       </div>
      </form>
    </div>
  </div>
</div>
<div id="legal_text" style="display:none"></div>
<div id="help_text" style="display:none"></div>
<script type="text/javascript"><!--
$('#tabs a').tabs();
$("#legal_notice").click(function(e) {
    e.preventDefault();
    $("#legal_text").load(this.href, function() {
        $(this).dialog({
            title: '<?php echo $text_terms; ?>',
            width:  800,
            height:  600,
            minWidth:  500,
            minHeight:  400,
            modal: true,
        });
    });
    return false;
});
$("#help_notice").click(function(e) {
    e.preventDefault();
    $("#help_text").load(this.href, function() {
        $(this).dialog({
            title: '<?php echo $text_help_request; ?>',
            width:  800,
            height:  600,
            minWidth:  500,
            minHeight:  400,
            modal: true,
        });
    });
    return false;
});
$(function(){
    $("#es_use_more").click( function (){
        if(this.checked){
            $("#es_use_more_after").slideDown('slow');
        } else {
            $("#es_use_more_after").slideUp('slow');
        }
    });
});
//--></script>
<?php echo $footer; ?>