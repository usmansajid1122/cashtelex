$(document).ready(function () {
  var val1 = 0;

  $(".menu-hamburger")
    .children("img")
    .click(function () {
      if (val1 == 0) {
        $(this).attr("src", "images/cross.png");
        $(".sidebar-menu").slideToggle();

        val1 = 1;
      } else {
        $(".sidebar-menu").slideToggle();
        $(this).attr("src", "images/hamburger.png");
        val1 = 0;
      }
    });

    if (document.getElementById('flash_notice')) {
      setTimeout(function(){
        document.getElementById('flash_notice').remove();
      }, 1500);
    }
});

function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $("#imagePreview").css(
        "background-image",
        "url(" + e.target.result + ")"
      );
      $("#imagePreview").hide();
      $("#imagePreview").fadeIn(650);
    };
    reader.readAsDataURL(input.files[0]);
  }
}
$("#imageUpload").change(function () {
  readURL(this);
});
