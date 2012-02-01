$().ready(function() {
  $('.flashWrap').append('<a href="#" class="closeFlash">x</a>');
  $('.closeFlash').click(function(event) {
    $('.flash').hide();
    event.preventDefault();
  });
});
  