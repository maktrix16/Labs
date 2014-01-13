jQuery(
  function($) {
  $('.dropdown_l').hover(function() {
    $(this).find('.options_l').stop(true, true).show(0,'').css('display', 'block');
  });
  $('.dropdown_l').mouseleave(function() {
    $(this).find('.options_l').stop(true, true).show(0,'').css('display', 'none');
  });
  });
  