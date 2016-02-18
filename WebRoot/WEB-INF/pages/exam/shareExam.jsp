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
    		
    			<!-- COMMENTS FORM
					===================================== -->
					<div class="row">
						<div class="span12">
							<div class="content-bubble drop-shadow curved">
								<h5 class="heading">人人为我，我为人人，贡献题目</h5>
								<div class="row-fluid">
									<form action="/exam/addExam" id="validateInput" method="post">
									<div class="span6">
                                        <label>试题来源</label>
                                        <select name="questions.source">
                                        <option value="0">自创</option>
                                        <option value="1">网络</option>
                                        <option value="2">试卷或书籍</option>
                                        </select>
                                        <label>难度</label>
                                        <select name="questions.difficulty">
                                        <option value="0">初阶</option>
                                        <option value="1">中阶</option>
                                        <option value="2">高阶</option>
                                        </select>
                                    	<label>答案解析 (可不填)</label>
                                    	<textarea name="questions.answer_keys" placeholder="不填默认显示“略”" rows="5" cols="3"></textarea>
                                    	    <div class="span12" style="height:100px">
   											</div>
                                    	<div class="span12 visible-desktop visible-tablet">
				    				<h5 class="heading">如何定义难度?</h5>
				    				<p>
				    				该难度划分参照《公共英语考试等级》，难度由低到高分为一级B、一级、二级、
				    				三级、四级、五级。
				    				<br><br>
				    				初阶--一级B-二级水平
				    				<br><br>
				    				中阶--三级水平
				    				<br><br>
				    				高阶--四级-五级水平
				    				<br><br>
				    				<a>《2015年全国英语等级考试级别划分》</a><br></p>
				    				<div><p>
				    				PETS-1级是该体系的初始级，其考试要求略高于初中毕业生的英语水平(PETS-1B是全国英语等级考试的附属级)。<br><br>
				    				PETS-2级是该体系的中下级，其考试要求相当于普通高中优秀毕业生的英语水平。<br><br>
				    				PETS-3级是该体系的中间级，其考试要求相当于我国学生高中毕业后在大专院校又学了两年公共英语或自学了同等程度英语课程的水平。<br><br>
				    				PETS-4级是该体系的中上级，其考试要求相当于我国学生高中毕业后在大学至少又学习了3-4年的公共英语或自学了同等程度英语课程的水平。<br><br>
				    				PETS-5级是该体系的最高级，其考试要求相当于我国大学英语专业二年级结束时的水平，是专为申请公派出国留学的人员设立的英语水平考试。<br><br>
				    				</p></div>
				    				
				    			</div>
									</div>
									<div class="span6">
									<label>题目：</label>
										<div class="control-group">
                                        <input id="titlecontent" name="questions.content">
                                        </div>
                                   <label>点击<span style="color:green">ABCD按钮</span>标记正确选项<span class="vertical"  > | </span><span>试题选项：</span></label> 
                                  <div class="control-group">
                                   <div class="input-prepend">
									  <button class="btn btn-prepend" id="answera" onclick="setRight('a')" style="padding:9px 18px" type="button">A</button>
									  <input class="span10" id="prependedInput" name="answer_1" type="text">
									</div>
									</div>
									<div class="control-group">
									<div class="input-prepend">
									  <button class="btn btn-prepend" id="answerb" onclick="setRight('b')" style="padding:9px 18px" type="button">B</button>
									  <input class="span10" id="prependedInput" name="answer_2" type="text">
									</div>
									</div>
									<div class="control-group">
									<div class="input-prepend">
									  <button class="btn btn-prepend" id="answerc" onclick="setRight('c')" style="padding:9px 18px" type="button">C</button>
									  <input class="span10" id="prependedInput" name="answer_3" type="text">
									</div>
									</div>
									<div class="control-group">
									<div class="input-prepend">
									  <button class="btn btn-prepend" id="answerd" onclick="setRight('d')" style="padding:9px 18px" type="button">D</button>
									  <input class="span10" id="prependedInput" name="answer_4" type="text">
									</div>
									</div>
									<input type="hidden" id="isRight" name="isRight">
									<button type="button" id="subQs" disabled class="btn btn-primary">提交</button>&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="${ctx}/exam/all" class="btn">返回答题</a>
									<div class="span12" style="height:65px"></div>
									<div class="span12 visible-desktop visible-tablet">
				    				<h5 class="heading">提交须知?</h5>
				    				<p>
				    				试题提交后会交由系统审核，审核时间最长不会超过24小时。
				    				</p><br>
				    				<p>以下内容不会审核通过：</p><br>
				    				<p>1.题目几乎或全部为中文</p><br>
				    				<p>2.与英语无关的试题</p><br>
				    				<p>3.题库已存在的题</p><br>
				    				<p>积分只有在成功通过审核之后才发放到用户账号</p><br>
				    				<p>系统只会审核题目的格式，内容的正确性并不会影响审核通过，但是这并不意味着题库的威信，因为其它用户任可纠正题目的正确性。</p>
				    				</div>
									</div>
									</form>
								</div>
							</div>
							<div class="content-bubble-triangle"></div>
						</div>
					</div>
						
    			</div> <!-- end blog -->
    			
    		</div>
    		<script>
    		//document redy 简写  默认要禁用提交按钮让用户选择正确选项
    		$(function(){
    			 $("#subQs").attr({"disabled":"disabled"});
    		})
    			
    		 function setRight(v){
    			 $("button[id^='answer']").removeClass("btn-success");
    			 $("#answer"+v).addClass("btn-success");
    			 $("#isRight").val(v);
    			 $("#subQs").removeAttr("disabled");
    		 }
    		</script>
    		<script type="text/javascript" src="${ctxJs}/validate/validate.shareExam.js"></script> 
  </body>
</html>
