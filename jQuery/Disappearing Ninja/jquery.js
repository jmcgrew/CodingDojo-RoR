$(document).ready(function(){
  $("img").click(function(){
    $(this).fadeOut();
  });
  $("button#show").click(function(){
    $("img").show();
  });
  $("button#hide").click(function(){
    $("img").hide();
  });
});