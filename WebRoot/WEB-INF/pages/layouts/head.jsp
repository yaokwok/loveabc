<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
	<!--Header-part-->
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href="/home">
				<img src="/img/logo.png" alt="logo" />
				</a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
				<img src="assets/img/menu-toggler.png" alt="" />
				</a>          
				<!-- END RESPONSIVE MENU TOGGLER -->				
				<!-- BEGIN TOP NAVIGATION MENU -->	
				<marquee style="color:gray;margin-top: 10px;" class="span5 hidden-phone" direction=left TrueSpeed scrollAmount=1 scrollDelay=40 height=30>每日一句：Smile and silence are two powerful tools. Smile is the way to solve many problems and silence is the way to avoid many problems.微笑和沉默是两把利器：微笑解决很多问题，沉默避免许多问题。 </marquee> 				
				<ul class="nav pull-right">
					<!-- BEGIN INBOX DROPDOWN -->
					<li class="dropdown" id="header_inbox_bar">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-envelope-alt"></i>
						<span class="badge" id="news"></span>
						</a>
						<ul class="dropdown-menu extended inbox">
							<li>
								<p>你有 条新邮件</p>
							</li>
							<li>
								<a href="#">
								<span class="photo"><img src="./assets/img/avatar2.jpg" alt="" /></span>
								<span class="subject">
								<span class="from">Lisa Wong</span>
								<span class="time">Just Now</span>
								</span>
								<span class="message">
								Vivamus sed auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>  
								</a>
							</li>
							<li>
								<a href="#">
								<span class="photo"><img src="./assets/img/avatar3.jpg" alt="" /></span>
								<span class="subject">
								<span class="from">Richard Doe</span>
								<span class="time">16 mins</span>
								</span>
								<span class="message">
								Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>  
								</a>
							</li>
							<li>
								<a href="#">
								<span class="photo"><img src="./assets/img/avatar1.jpg" alt="" /></span>
								<span class="subject">
								<span class="from">Bob Nilson</span>
								<span class="time">2 hrs</span>
								</span>
								<span class="message">
								Vivamus sed nibh auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>  
								</a>
							</li>
							<li class="external">
								<a href="#">See all messages <i class="m-icon-swapright"></i></a>
							</li>
						</ul>
					</li>
					<!-- END INBOX DROPDOWN -->
					<!-- BEGIN TODO DROPDOWN -->
					<li class="dropdown" id="header_task_bar">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-tasks"></i>
						<!-- <span class="badge"></span> -->
						</a>
						<ul class="dropdown-menu extended tasks">
							<li>
								<p>You have 12 pending tasks</p>
							</li>
							
							<li class="external">
								<a href="#">查看全部任务 <i class="m-icon-swapright"></i></a>
							</li>
						</ul>
					</li>
					<!-- END TODO DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
<%-- 						<img style="max-width:30px" src="<c:if test="${empty currentUser.get('imgurl') }">/images/nopic.gif</c:if><c:if test="${!empty currentUser.get('imgurl') }">${currentUser.get('imgurl')}</c:if>"/>
 --%>						<i class="icon-user"></i><span class="username">${currentUser.get('nickname')}</span>
						<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="extra_profile.html"><i class="icon-user"></i> 个人中心</a></li>
							<li><a href="#"><i class="icon-tasks"></i> 我的任务</a></li>
							<li class="divider"></li>
							<li><a href="/logout"><i class="icon-key"></i> 注销登录</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->	
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<script>
$(document).ready(function news(){
	 $.ajax({
     	type:"post",
     	dataType:"json",
     	url:"/news/ajaxNews/",
     	success:function(data){
     		if(data==0){
     			var n = document.getElementById("news");
     			n.innerHTML = "0";
     		}else{
     			var n = document.getElementById("news");
     			n.innerHTML = data;
     		}
     	}
	 });
 });
 </script>