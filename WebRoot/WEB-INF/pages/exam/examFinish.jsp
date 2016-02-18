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
    			<img alt="" src="${ctxImg}/${score}.gif">
    			<h4>答题结束，成绩：${score}分。${text}</h4>
    			<a href="${ctx}/exam/all" class="btn">返回试题列表</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="${ctx}/exam/beginExam/${testId}" class="btn">重做一遍</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="${ctx}/exam/showTest/${replyId}" class="btn btn-success">查看试卷</a>
    			</div>
    			<div class="span12" style="height:250px"></div>
				</div>	
    			</div> <!-- end blog -->
    			
    		</div>
  </body>
</html>
