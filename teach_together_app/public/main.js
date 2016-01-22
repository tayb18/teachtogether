$(document).ready(function(){  
  $(window).scroll(
    {
        previousTop: 0
    }, 
    function () {
    // get current distance from top of viewport
    var currentTop = $(window).scrollTop();
    // define the header height here
    var headerHeight = 100;
    // if user has scrolled past header, initiate the scroll up/scroll down hide show effect
    if( $(window).scrollTop() > headerHeight ) {
      if (currentTop < this.previousTop) {
        $(".sidebar em").text("Up"); /* optional for demo */
        $(".header").show();
        $(".line").show("slow");
    } else {
        $(".sidebar em").text("Down");
        $(".header").hide("slow");
        $(".line").hide("slow");
    }
    }
    this.previousTop = currentTop;
  });
});
 