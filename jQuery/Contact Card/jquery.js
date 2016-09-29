$(document).ready(function(){
  $("#userForm").on("submit", function(submitCard) {
    submitCard.preventDefault();
    var fName = $('#userForm').find('input[id="fName"]').val();
    var lName = $('#userForm').find('input[id="lName"]').val();
    var desc = $('#userForm').find('input[id="desc"]').val();
    $("#contactCards").append("<div class='contactCard'><h2>" + fName + " " + lName + "</h2><h5>Click for Description</h5>");
  });
});
