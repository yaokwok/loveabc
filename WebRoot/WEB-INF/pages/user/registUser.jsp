<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
		<head>
		<meta name="decorator" content="default" />
		<title>爱英语loveabc/注册</title>
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
    
    <!-- 
    ================================================
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
								<h5 class="heading">欢迎加入爱英语大家庭</h5>
								<div class="row-fluid">
									<div class="span6">
									<form action="/user/newUser" id="validateInput" method="post">
										<label>邮箱号</label>
										<div class="control-group">
										<input type="text" name="username">
										</div>
										<label>英文名字</label>
										<div class="control-group">
										<input type="text" name="english_name" id="english_name">
										</div>
										<label>密码</label>
										<div class="control-group">
										<input type="password" name="password" id="password">
										</div>
										<label>重复输入密码</label>
										<div class="control-group">
										<input type="password" name="password2">
										</div>
										<button class="btn btn-inverse">提交</button>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href="/">返回登录页面</a>
										</form>
									</div>
									<div class="span6">
									</div>
								</div>
							</div>
							<div class="content-bubble-triangle"></div>
						</div>
					</div>
						
    			</div> <!-- end blog -->
    			
    		</div>
 			<script type="text/javascript" src="${ctxJs}/validate/validate.registUser.js"></script> 
  </body>
</html>
