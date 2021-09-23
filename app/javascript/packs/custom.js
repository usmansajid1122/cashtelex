$( document ).ready(function() {
  $.ajax({
  	url:"https://api.exchangerate.host/latest?base=USD",
    success:function(response){
      debugger
      var r=JSON.parse(response);
      $("#main").html(r.base);
    }
  });
});