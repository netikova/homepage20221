$(function() {
  var nav = $("nav").offset().top;
 
  $(window).scroll(function() {
   
    var window = $(this).scrollTop();
    
    if(nav <= window) {
      $("nav").addClass("fixed");
    }else{
      $("nav").removeClass("fixed");
    }
  })
});

$(document).ready(function($) {

  $(".scroll_move").click(function(event){         

          event.preventDefault();

          $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);

  });

});