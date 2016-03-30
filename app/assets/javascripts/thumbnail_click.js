$(document).ready(function () {
  $('.foodImage.tint').on('click', function (e) {
    var url = $(this).find('a').attr('href');
    location.href = url;
  })
});
