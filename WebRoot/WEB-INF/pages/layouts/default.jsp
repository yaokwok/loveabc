<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title><sitemesh:title /></title>
<sitemesh:head />	
<meta charset="utf-8">
<meta name="keywords" content="loveabc,爱英语，英语学习，英语网" />
<meta name="description" content="loveabc,爱英语，英语学习，英语网" />
<meta name="author" content="yaokwok">
<!-- Google Fonts
		================================================== -->
		<!-- Le Styles
		================================================== -->
		<!-- These are the awesome CSS files -->
		<link href="${ctxCss}/bootstrap.css" rel="stylesheet" type='text/css'>
		<link href="${ctxCss}/flexslider.css" rel="stylesheet" type='text/css'>
		<link href="${ctxCss}/style.css" rel="stylesheet" type='text/css'>
		<link href="${ctxCss}/responsive.css" rel="stylesheet" type='text/css'>
		<link href="${ctxCss}/style_switcher.css" rel="stylesheet" type='text/css'>
		<link href="${ctxCss}/dropkick.css" rel="stylesheet" type='text/css'>
		<link href="${ctxCss}/jquery.fancybox.css" rel="stylesheet" type='text/css'>
		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
		  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<!-- Fav and touch icons -->
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="../assets/ico/favicon.png">
</head>

<body>
<ul id="navigation">
		<li><span></span>
  			<div id="panel">
  	    		<div class="colour-container">
  	    			<a class="style_green"></a>
			  	     <a class="style_blue"></a>
			  	     <a class="style_red"></a>
			  	     <a class="style_turquoise"></a>
			  	     <a class="style_turquoise2"></a>
			  	     <a class="style_purple"></a>
			  	     <a class="style_orange"></a>
			  	     <a class="style_brown"></a>
			  	     <a class="style_black"></a>
  	   			 </div>
  			</div>
		</li>
  	</ul>
	<%@ include file="/WEB-INF/pages/include/menu_nav.jsp"%>
	 <script src="${ctxJs}/jquery.js"></script>
	  <sitemesh:body />
	<!-- BEGIN FOOTER
   ================================================== -->
    <div class="footer">
	    <div class="container">
	    	<div class="row">
		    	<div class="span6">
		    		<p>2015 © loveabc By Yaokwok <a href="http://www.yaokwok.com/" target="_blank" title="yaokwok"> yaokwok.com</a> </p>
		    	</div>
		    	<div class="span6">
		    		<ul class="social-icons">
		    			<li class="twitter"><a rel="alternate" title="Twitter"></a></li>
		    			<li class="facebook"><a rel="alternate" title="Facebook"></a></li>
		    			<li class="vimeo"><a rel="alternate" title="Vimeo"></a></li>
		    			<li class="dribbble"><a rel="alternate" title="Dribbble"></a></li>
		    			<li class="google"><a rel="alternate" title="Google +"></a></li>
		    			<li class="pinterest"><a rel="alternate" title="Pinterest"></a></li>
		    		</ul>
		    	</div>
	    	</div>
	    </div>
	    <a href="#navigation" rel="alternate" title="Back to top" class="up"><img src="${ctxImgs}/icon_up.png" alt=""/></a>
    </div>
    <!-- Le javascript
   ================================================== -->
   <script>
		$(document).ready(function() {
		  $('.slider-area').flexslider({
		    animation: "slide",
		    animationSpeed: 300,
		    smoothHeight: true,
		    slideshow: false,
		  });
		});
		</script>
   <script src="${ctxJs}/bootstrap.js"></script>
   <script src="${ctxJs}/tinynav.js"></script>
   <script src="${ctxJs}/scroll.js"></script>
   <script src="${ctxJs}/jquery.flexslider-min.js"></script>
   <script src="${ctxJs}/custom.js"></script>
   <script src="${ctxJs}/style_switcher.js"></script>
   <script src="${ctxJs}/jquery.fancybox.js"></script>
   <script src="${ctxJs}/jquery.validate.js"></script>
   <script>
   $(function() {

		lrFixFooter("div.footer"); //调用方法：lrFixFooter("div.footerwarp"); 传入底部的类名或者ID名

		function lrFixFooter(obj) {
			var footer = $(obj), doc = $(document);
			function fixFooter() {
				if (doc.height() - 4 <= $(window).height()) {
					footer.css({
						width : "100%",
						position : "absolute",
						left : 0,
						bottom : 0
					});
				} else {
					footer.css({
						position : "static"
					});
				}
			}
			fixFooter();
			$(window).on('resize.footer', function() {
				fixFooter();
			});
			$(window).on('scroll.footer', function() {
				fixFooter();
			});

		}

	})
   </script>
</body>
</html>