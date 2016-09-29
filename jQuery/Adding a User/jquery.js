$(document).ready(function(){
  $("#userForm").on("submit", function (submitUser) {
    submitUser.preventDefault();
    var fName = $('#userForm').find('input[id="fName"]').val();
    var lName = $('#userForm').find('input[id="lName"]').val();
    var email = $('#userForm').find('input[id="email"]').val();
    var phone = $('#userForm').find('input[id="phone"]').val();
    $("#userTable tbody").siblings().append("<tr><td>" + fName + "</td><td>" + lName + "</td><td>" + email + "</td><td>" + phone + "</td></tr>");
  });
});
