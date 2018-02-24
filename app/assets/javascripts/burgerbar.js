$(document).ready(function(){
  $("#burger").click(function(){
    $(this).toggleClass("open")
    $("#navBar").toggleClass("movePanel");
  })
})
