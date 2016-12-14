$(document).ready(function(){
  $("#userForm").on("submit", function (submitUser) {
    submitUser.preventDefault();
    var fName = $(this).find('input[id="fName"]').val();
    var lName = $(this).find('input[id="lName"]').val();
    var email = $(this).find('input[id="email"]').val();
    var phone = $(this).find('input[id="phone"]').val();
    $("#userTable tbody").append("<tr><td>" + fName + "</td><td>" + lName + "</td><td>" + email + "</td><td>" + phone + "</td></tr>");
  });
});
