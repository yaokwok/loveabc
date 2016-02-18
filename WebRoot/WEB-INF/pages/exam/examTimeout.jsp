<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
		<head>
		<meta name="decorator" content="default" />
		<title>爱英语loveabc/答题结束</title>
	</head>
  	<body>
    <!-- BEGIN SLIDER
    ================================================== -->
    <div class="slider">
	    <div class="container">
	    	<div class="row">
	    	</div>
		</div>
    </div>
    
    <!-- BEGIN MAIN BUBBLE
	================================================== -->
	<div class="container">
		<div class="row">
			<div class="span12 relative">
			</div>
		</div>
	</div>
    <div class="bubble-stripes"></div>
    <!-- ================================================
    // BEGIN CONTENT
    ================================================ 
    -->
    <div class="content">
    	<div class="container">
    			<div class="row"><div class="span12" style="height:150px"></div>
    			<div align="center">
    			<img alt="" src="${ctxImg}/sad.gif">
    			<h4>${username}，很遗憾，时间到了你却没能完成这次考试。请把握时间，再接再厉。</h4>
    			<a href="${ctx}/exam/all" class="btn">返回试题列表</a>
    			</div>
    			<div class="span12" style="height:250px"></div>
				</div>	
    			</div> <!-- end blog -->
    			
    		</div>
  </body>
</html>
