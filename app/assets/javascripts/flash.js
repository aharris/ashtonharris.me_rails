$().ready(function() {
  $('.flash').append('<a href="#" class="closeFlash">x</a>');
  $('.closeFlash').click(function(event) {
    $(this).parent().hide();
    event.preventDefault();
  });
});
  