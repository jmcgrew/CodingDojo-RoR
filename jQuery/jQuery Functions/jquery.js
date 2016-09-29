$(document).ready(function(){
  $("#click").click(function(){
    alert("You have clicked")
  });
  $("#add-class").click(function(){
    $("#forAddClass").addClass("Paragraphs")
  });
  $("#val").keyup(function(){
    var value = $(this).val();
    $("#forVal").text(value);
  });
  var title = $("#attr").attr("title");
    $("#attrDef").text(title);
  $("#htmlBut").click(function(){
    $("#html").html("<p>With something entirely different!</p>");
  });
  $("input.focusInput").focus(function(){
    $(this).next("span.focus").css("display", "inline").fadeOut(1000);
  });


});
