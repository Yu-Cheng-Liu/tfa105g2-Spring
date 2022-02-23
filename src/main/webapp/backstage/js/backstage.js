
$(document).ready(function(){
    
    $("#collapse").on("click", function(){
        
        $("#sidebar").toggleClass("active");
        $(".fa-align-left").toggleClass("fa-angle-double-right");
    })

    $(".nav-link-a").on("click", function(e){
        $(".nav-link-a").removeClass("active");
        $(this).addClass("active");
    })
})