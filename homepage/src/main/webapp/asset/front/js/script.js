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

/*비밀번호 확인*/
function test() {
  var p1 = document.getElementById('password').value;
  var p2 = document.getElementById('password2').value;
  if( p1 != p2 ) {
    alert("비밀번호가 일치 하지 않습니다");
    return false;
  } else{
    alert("비밀번호가 일치합니다");
    return true;
  }

}
