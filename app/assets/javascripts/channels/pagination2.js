// bind 'slid' function
$('#myCarousel').bind('slide', function() {
  // remove active class
  console.log("salut");
  $('.carousel-linked-nav .active').removeClass('active');
  // get index of currently active item
  var idx = $('#myCarousel .item.active').index();
  // select currently active item and add active class
  $('.carousel-linked-nav li:eq(' + idx + ')').addClass('active');

});
