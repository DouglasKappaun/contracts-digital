
$(function() {
$("#moverAdmin").click(function(){
 // if(marginLeft.is("500px")){
    $("#imgAdmin").animate({ 
      marginLeft: "300px",
      marginTop: "-80px"
    }, 1000);
  //}
  })
    $("#moverUser").click(function(){
      $("#imgUser").animate({ 
        marginLeft: "-300px",
        marginTop: "-80px"
        }, 1000);
    })
});

 $(function() {
    $("#moverUser").click(function() {
        $("#imgAdmin").toggle("explode")
    })
    $("#moverAdmin").click(function() {
        $("#imgUser").toggle("explode")
    })
});
