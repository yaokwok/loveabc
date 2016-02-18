<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
 <!-- BEGIN NAVIGATION
    ================================================== -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="/home"><img src="${ctxImg}/logo.png" alt=""></a>
          <div class="nav-collapse collapse">
            <ul class="nav">
            
              <!-- HOME -->
              <li class='<c:if test="${page==0}">nav-active</c:if>'><a href="/home">首页</a></li>
              
              <%-- <!-- ELEMENTS -->
               <li class='dropdown<c:if test="${page==1}"> nav-active</c:if>'>
              <a href="#">自学</a>
              <ul class="dropdown-menu">
              		<li><a href="#">音标 (未开放)</a></li>
              		<li><a href="#">语法 (未开放)</a></li>
              		<li><a href="#">翻译 (未开放)</a></li>
              	</ul>
              </li> --%>
              
              <!-- PORTFOLIO (DROP-DOWN) -->
              <li class='dropdown<c:if test="${page==2}"> nav-active</c:if>'>
              	<a href="#" class="dropdown-toggle" data-toggle="dropdown">单词</a>
              	<ul class="dropdown-menu">
              		<li><a href="#">记单词 (未开放)</a></li>
              		<li><a href="#">背单词 (未开放)</a></li>
              	</ul>
              </li>
              
              <!-- BLOG (DROP-DOWN) -->
              <li class='<c:if test="${page==3}">nav-active</c:if>'>
              	<a href="/exam/all" >答题</a>
              </li>
              
              <!-- PAGES (DROP-DOWN) -->
              <li class='<c:if test="${page==4}">nav-active</c:if>'>
              	<a href="/know">知道</a>
              </li>
              <li class="last dropdown">
              <c:if test="${currentUser==null}">
              	<a href="#" id="registUser" style="font-size:12px;"><i class="icon-user icon-white" style="margin-top: 1px;"></i>登录</a>
             </c:if>
             <c:if test="${currentUser!=null}">
              	<a href="#" id="registUser" style="font-size:12px;"><i class="icon-user icon-white" style="margin-top: 1px;"></i>${currentUser.get('english_name')}</a>
              	<ul class="dropdown-menu">
              		<li><a href="about.html">个人资料</a></li>
              		<li><a href="/logout">注销登录</a></li>
              	</ul>
             </c:if>
              </li> 
              <!-- PAGES (DROP-DOWN) -->
            </ul> 
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    