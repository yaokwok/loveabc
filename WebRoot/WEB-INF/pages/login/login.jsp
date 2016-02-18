<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
	import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
		<head>
		<meta name="decorator" content="default" />
		<title>爱英语loveabc/欢迎加入爱英语大家庭！爱英语，与英语爱好者一同进步</title>
	</head>
  	<body>
  		<!-- BEGIN SLIDER
	================================================== -->
	<div class="slider">
	    <div class="container">
	    	<div class="row">
	    		<div class="span12">
	
			    		<ul class="slides">	
			    		
			    			<!-- SLIDE #1 
			    			==================================== -->
			    			<li>
		    				 	<div class="row">
			    				 	<div class="span12">
			    				 	
			    				 		<!-- slide #1 content -->
			    				 		<div class="vcenter"><br>
			    				 			<h3 class="slider-heading">欢迎来到 <span class="bold-highlight">爱英语loveabc</span> 请先登录 : )</h3>
			    				 		</div>
			    				 		
			    				 	</div>
		    				 	</div>
			    			</li> 
			    			
			    		</ul>
	    	
	    		</div>
	    	</div>
		</div>
	</div>
    
    <!-- 
    ================================================
    // BEGIN CONTENT
    ================================================ 
    -->
    <div class="content">
    	<div class="container">
    		
    		<div class="row">
    			<!-- PORTFOLIO ITEM #1 -->
    			<div class="span6">
    				<div class="content-image">
    					<a href="#">
    						<img src="${ctxImg}/wechat.jpg" alt="">
    					</a>
    				</div>
    				
    				<div class="content-bubble drop-shadow curved">
    					<h5 class="heading">关注微信公众号的好处?</h5>
    					<p>爱英语官方微信公众号会每天为您免费推送英语相关资讯、学习技巧等英文内容,不仅能帮助您提高英语能力，还能培养你对英语的兴趣哦!</p>
    				</div>
    			</div>
    			
    			<!-- PORTFOLIO ITEM #2 -->
    			<div class="span6">
    			<div class="content-bubble drop-shadow curved">
    			<c:if test="${msg!=null}">
    			    <div class="alert alert-block">
				      <button type="button" class="close" data-dismiss="alert">&times;</button>
				      ${msg}
				    </div>
				    </c:if>
    				<form action="/login" id="validateInput" method="post">
    				<label>账号</label>
    				<div class="control-group">
    				<input type="text" name="useranme">
    				</div>
    				<label>密码</label>
    				<div class="control-group">
    				<input type="text" name="password">
    				</div>
    					<button type="submit" class="btn btn-large btn-inverse">登录</button>
    					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>忘记密码?</a>
    					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/user/registUser">注册账号</a>
    					</form>
    			</div>
    			<div class="content-bubble drop-shadow curved">
    				<br>
    					<h5 class="heading">登录的好处?</h5>
    					<p>可以浏览英语资讯, 随心所欲的挑战单词量, 畅快淋漓的在线答题，并且和大家一起pk一分高下!</p>
    				</div>
    			</div>
    		</div>
 
       	</div>
	</div>	
	<script type="text/javascript" src="${ctxJs}/validate/validate.login.js"></script> 
  </body>
</html>
