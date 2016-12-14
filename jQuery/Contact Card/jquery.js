$(document).ready(function(){
  $("#userForm").on("submit", function(submitCard) {
    submitCard.preventDefault();
    var fName = $(this).find('input[id="fName"]').val();
    var lName = $(this).find('input[id="lName"]').val();
    var desc = $(this).find('input[id="desc"]').val();
    $("#contactCards").append("<div class='contactCard'><h2>" + fName + " " + lName + "</h2><div align='center'><button>Click for Description</button></div>");
    $("button").click(function(){
      $(this).replaceWith("<p>" + desc + "</p>");
    });
  });

});
