<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
		<head>
		<meta name="decorator" content="default" />
		<title>爱英语loveabc/查看试卷</title>
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
    		
    			<!-- COMMENTS FORM
					===================================== -->
					<div class="row">
						<div class="span12">
							<div class="content-bubble drop-shadow curved">
								<h3 class="heading" align="center">${test.get('title') }</h3>
								<div class="row-fluid">
								<div class="span12">
								<div class="span8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;满分100分</div>
								<div class="span2 pull-right">
									成绩: <span class="success">${reply.get('score')}</span>
								</div>
								<div class="span2 pull-right">考生: ${reply.get('userId')}</div>
								</div>
										<br>
										<input type="hidden" name="testId" value="${test.get('id')}">
                                        <c:forEach items="${questions}" var="question" varStatus="status">
                                        <div class="span12">
                                        <div class="span6">
                                       	<label style="font-size:18px"><span class="badge" style="font-size:18px">${status.count}</span> ${question.get('content')}<c:if test="${question.getRirhtIdentifier()!=question.get('identifier')}"> <span class="label label-important"><i class="icon-remove icon-white"></i></span></c:if>
                                       	<c:if test="${question.getRirhtIdentifier()==question.get('identifier')}"> <span class="label label-success"><i class="icon-ok icon-white"></i></span></c:if></label>
                                        <c:forEach items="${question.getAnswers()}"  var="answer" varStatus="status1">
									      <label style="font-size:14px">${answer.get("identifier")}.  ${answer.get('content')}</label>
									      </c:forEach>
									      </div>
									      <div class="span5 pull-right">
									      <p>贡献者: ${question.get('userId')}</p>
									      <p>答案解析: ${question.get('answer_keys')}</p><br>
									      <span>标准答案: ${question.getRirhtIdentifier()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户答案: ${question.get('identifier')}</span><br>
									      </div></div>
									      <div class="span12" style="height:20px"></div>
                                        </c:forEach>
                                        <button class="btn btn-success pull-right">返回试题列表</button>
									</div>
								</div>
							</div>
						</div>
					</div>
    			</div> <!-- end blog -->
    		</div>
  </body>
</html>
