<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<ul>
				<li>
					<div class="sidebar-toggler hidden-phone"></div>
				</li>
				<li> &nbsp;</li>
				<li <c:if test="${page==1}">class="active"</c:if>>
					<a href="/home">
					<i class="icon-home"></i> 
					<span class="title">主页</span>
					<span class="selected"></span>
					</a>
				</li>
				<li <c:if test="${page==2}">class="active"</c:if>>
					<a href="/blog">
					<i class="icon-comments"></i> 
					<span class="title">论坛</span>
					<span class="arrow "></span>
					</a>
				</li>
				<li <c:if test="${page==3}">class="active"</c:if>>
					<a href="/know">
					<i class="icon-question-sign"></i> 
					<span class="title">知道</span>
					<span class="arrow "></span>
					</a>
				</li>
				<li <c:if test="${page==4}">class="active"</c:if>>
					<a href="/">
					<i class="icon-book"></i> 
					<span class="title">阅读</span>
					</a>
				</li>
				<li <c:if test="${page==5}">class="active"</c:if>>
					<a href="/">
					<i class="icon-trophy"></i> 
					<span class="title">挑战</span>
					</a>
				</li>
				<li <c:if test="${page==6}">class="active"</c:if>>
					<a href="/user/myHomePage">
					<i class="icon-user"></i> 
					<span class="title">个人中心</span>
					</a>
				</li>
				<li <c:if test="${page==7}">class="active"</c:if>>
					<a href="/">
					<i class="icon-star"></i> 
					<span class="title">帮助关于</span>
					</a>
				</li>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>