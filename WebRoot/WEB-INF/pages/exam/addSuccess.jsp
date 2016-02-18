<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
		<head>
		<meta name="decorator" content="default" />
		<title>爱英语loveabc/答题</title>
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
    			<h4>Thank You! 题目审核中，系统会在24小时内反馈消息给您！</h4>
    			<a href="${ctx}/exam" class="btn">返回答题</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="${ctx}/exam/shareExam" class="btn btn-success">继续提交</a>
    			</div>
    			<div class="span12" style="height:250px"></div>
				</div>	
    			</div> <!-- end blog -->
    			
    		</div>
  </body>
</html>
