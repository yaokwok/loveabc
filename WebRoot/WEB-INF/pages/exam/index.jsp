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
    
    <!-- 
    ================================================
    // BEGIN CONTENT
    ================================================ 
    -->
    <div class="content">
    	<div class="container">
    		
    		<div class="row">
    			
    			<!-- FEATURES CONTENT -->
    			<div class="span3">
    				<div class="row">
	    				<div class="span3">
	    					<ul class="nav nav-list">
	    						<li class="first <c:if test="${leftPage=='all'}">active</c:if>"><a href="/exam/all">全部试题<span class="badge pull-right">${examCount.all}</span></a></li>
	    						<li class="<c:if test="${leftPage=='0'}">active</c:if>"><a href="/exam/0">初阶试题<span class="badge pull-right">${examCount.low}</span></a></li>
	    						<li class="<c:if test="${leftPage=='1'}">active</c:if>"><a href="/exam/1">中阶试题<span class="badge pull-right">${examCount.middle}</span></a></li>
	    						<li class="<c:if test="${leftPage=='2'}">active</c:if>"><a href="/exam/2">高阶试题<span class="badge pull-right">${examCount.height}</span></a></li>
	    						<li><a href="#">中考真题 （未开放）</a></li>
	    						<li><a href="#">高考真题 （未开放）</a></li>
	    						<li><a href="#">等级考试真题 （未开放）</a></li>
	    						<li class="last <c:if test="${leftPage=='6'}">active</c:if>"><a href="/exam/myTests">我做过的试卷<span class="badge pull-right">${examCount.myTest}</span></a></li>
	    					</ul>
	    				</div>
	    				<div class="span3 visible-desktop visible-tablet">
    				<h5 class="heading">如何定义等级?</h5>
    				<p>
    				该难度划分参照《公共英语考试等级》，分别为:一级B、一级、二级、
    				三级、四级、五级。
    				<br><br>
    				初阶--相当于--一级B-二级水平
    				<br><br>
    				中阶--相当于--三级水平
    				<br><br>
    				高阶--相当于--四级-五级水平
    				<br><br>
    				<a id="showinfo">《2015年全国英语等级考试级别划分》</a><br></p>
    				<div id="levelinfo" style="display:none"><p>
    				PETS-1级是该体系的初始级，其考试要求略高于初中毕业生的英语水平(PETS-1B是全国英语等级考试的附属级)。<br><br>
    				PETS-2级是该体系的中下级，其考试要求相当于普通高中优秀毕业生的英语水平。<br><br>
    				PETS-3级是该体系的中间级，其考试要求相当于我国学生高中毕业后在大专院校又学了两年公共英语或自学了同等程度英语课程的水平。<br><br>
    				PETS-4级是该体系的中上级，其考试要求相当于我国学生高中毕业后在大学至少又学习了3-4年的公共英语或自学了同等程度英语课程的水平。<br><br>
    				PETS-5级是该体系的最高级，其考试要求相当于我国大学英语专业二年级结束时的水平，是专为申请公派出国留学的人员设立的英语水平考试。<br><br>
    				</p></div>
    				
    			</div>
    				</div>
    			</div>
    			
    			<div class="span7">
    			<br>
    				<c:forEach items="${examPage.list}" var="exam" varStatus="status">
	    			<!-- Accordian -->
	    			<div class="accordion" id="accordion2">
	    				<div class="accordion-group">
	    		    		<div class="accordion-heading">
	    			    		<a class="accordion-toggle"  href="/exam/beginExam/${exam.get('id')}">
	    			    			<span>${status.count} . </span> ${exam.get('title')}<span class="timeago pull-right" style="color:green" title="${exam.get('time')}"></span>
	    			    		</a>
	    		    		</div>
	    				</div>
	    				
		    		</div>
		    		</c:forEach>
		    		<form name="queryform" id="queryform" action="/exam/${leftPage}" method="post">
						<%@include file="/WEB-INF/pages/include/pageNumber.jsp"%>
					</form>
		    	</div>
		    	
		    	<div class="span2">
		    		<div class="content-bubble drop-shadow curved">
		    			 <a class="btn  btn-prime" href="/exam/shareExam">贡献试题</a>
		    		</div>
		    		<div class="content-bubble-triangle"></div>
		    	</div>	
		    	

		    	
  
   			
    		</div>
     	</div>
	</div>	
	<script type="text/javascript" src="${ctxJs}/simpletable.js"></script>
	<script type="text/javascript" src="${ctxJs}/time.js"></script>
	<script type="text/javascript">
	//隐藏显示插件
	 $("#showinfo").click(function(){
		 if($("#levelinfo").is(":hidden")){
			 $("#levelinfo").show("slow");
			 }else{
				 $("#levelinfo").hide("slow");
			 }
	 })
	 //格式化时间插件
      $("span.timeago").timeago();  
	 //分页插件
		$(document).ready(function(){
			window.simpleTable = new SimpleTable("queryform",${examPage.pageNumber},${examPage.pageSize},'${sortColumn}');
		});
	</script>    	
  </body>
</html>
