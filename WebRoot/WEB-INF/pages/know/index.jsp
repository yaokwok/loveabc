<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
		<head>
		<meta name="decorator" content="default" />
		<title>爱英语loveabc/知道</title>
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
								<div class="row-fluid">
								<div class="span8">
								<form action="">
								<div class="control-group">
									<div class="input-prepend">
									  <input class="span12" id="prependedInput" name="answer_2" type="text">
									  <button class="btn btn-success" id="answerb" type="button" style="padding:9px 18px"><i class="icon-search icon-white"></i> 寻找答案</button>
									</div>
									</div>
								</form>
								</div>
								<div class="span4">
								<button class="btn pull-right btn-link">我要提问</button>
								</div>
								    <div class="alert span12">
								      <button type="button" class="close" data-dismiss="alert">&times;</button>
								      	非常抱歉，该功能还未开放呢 T.T
								    </div>
								</div>
							</div>
						</div>
					</div>
    			</div> <!-- end blog -->
    		</div>
    		<script type="text/javascript" src="${ctxJs}/validate/validate.shareExam.js"></script> 
    		<script type="text/javascript" src="${ctxJs}/layer/layer.js"></script>
  </body>
</html>
