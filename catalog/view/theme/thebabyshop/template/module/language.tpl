<?php if (count($languages) > 1) { ?>

<form action="<?php echo $action; ?>" method="post" id="language_form">
  <div id="language" class="dropdown_l">
    <?php foreach ($languages as $language): ?><?php if ($language['code'] == $language_code): ?>
    <div class="arrow">&nbsp;</div><div class="selected_l"><?php echo $language['name']; ?></div>
    <?php endif; ?><?php endforeach; ?>
    <ul class="options_l"><?php foreach ($languages as $language): ?>
      <li>
        <a href="javascript:;" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();">
          <?php echo $language['name']; ?>
        </a>
      </li><?php endforeach; ?>
     </ul>
   </div>
   <input class="s_hidden" type="hidden" name="language_code" value="" />
   <input class="s_hidden" type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>

<?php } ?>
