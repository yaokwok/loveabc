// Flex Slider
//=======================================
$(document).ready(function() {
  $('.slider-area').flexslider({
    animation: "slide",
    animationSpeed: 300,
    smoothHeight: true,
    slideshow: false,
  });
});

// Tool Tip
//=======================================
$("[rel=alternate]").tooltip()
$(".icons").tooltip()

// Drop Down Menu
//=======================================
$('.dropdown-toggle').dropdown()

// Features Hover Bubble
//=======================================
$(document).ready(function() {
   $(".features").hover(
   	function () {
   		   $(this).addClass("features-active");
   	
   	}
   );
   $(".features").hover(
   	function () {
   			$('.features').removeClass("features-active");
   		   $(this).addClass("features-active");
   	
   	}
   );
});

// Tabs 
//=======================================
$('#myTab a').click(function (e) {
	e.preventDefault();
	$(this).tab('show');
})

$('#tabs a').click(function (e) {
	e.preventDefault();
	$(this).tab('show');
})

// Contact Form
//=======================================
$('#submit').click(function() {
	
	var name = $("#name").val();
	var email = $("#email").val();
	var message = $("#message").val();
	
	var dataString = 'name='+ name + '&email=' + email + '&message=' + message;  
	//alert (dataString);return false;  
	$.ajax({  
	  type: "POST",  
	  url: "contact.php",  
	  data: dataString,  
	  success:  function (html) { 
	  	if (html == "invalid_email ") {
	  		$('.contact-alerts').empty();
	  		$('.contact-alerts').append('<div id="email-error" class="alert alert-error">This email is invalid!</div>');
	  	} else if (html == "success ") {
	 		$('.contact-alerts').empty();
			$('.contact-alerts').append('<div id="email-success" class="alert alert-success">Your email has been sent!</div>');
	  	} else if (html == "error ") {
	  		$('.contact-alerts').empty();
	  		$('.contact-alerts').append('<div id="email-error" class="alert alert-error">Please fill out all the fields!</div>');
	  	}

	  }  
	});  
});

// Style Switcher
//=======================================
$(document).ready(function() {
	$('#navigation > li ').toggle(function() {
		$('span,#panel',$(this)).stop().animate({'marginLeft':'145px'},200);
	},function(){
		$('span,#panel',$(this)).stop().animate({'marginLeft':'0px'},200);
	});
});
 
// Vertical Align Function
//=======================================
 (function ($) {
 $.fn.vAlign = function() {
 	return this.each(function(i){
 	var ah = $(this).height();
 	var ph = $(this).parent().height();
 	var mh = Math.ceil((ph-ah) / 2);
 	$(this).css('margin-top', mh);
 	});
 };
 })(jQuery);

 $('.vcenter').vAlign();
 
 $(window).resize(function(){
 	$('.vcenter').vAlign();
});
 
// TinyNav, Dropkick
//=======================================

$(document).ready(function() {
$(function () {
	$(".navbar .nav").tinyNav();
});
  
});
   
// Nav-active Arrow
//=======================================
$('.nav-active').prepend('<i class="nav-active-arrow"></i>');
   

// Fancy Box
//=======================================   
$(document).ready(function() {
	$(".fancybox").fancybox({
	helpers : {
	    overlay : {
	        locked : false
	    }
	},

	padding: ['5px', '5px', '5px', '5px']
	});
});
