$(function() {
  //slick slider init
  $('.js-topslider').slick({
    speed: 600,
    dots: true,
    arrows: false
  });

  //fancybox init
  $('[data-fancybox]').fancybox({
    buttons: [
      "zoom",
      "close"
    ],
  });
});
$(document).off('click', '#set_status').on('click', '#set_status', function (e) {
  var id = $(this).data('applic_id')
  $.ajax({
    url: '/хакатон/status.php?id='+id,
    type: 'get',
    success: function (data){
      location.reload();
    }
  });
});
