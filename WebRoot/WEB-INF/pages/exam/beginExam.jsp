<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
		<head>
		<meta name="decorator" content="default" />
		<title>爱英语loveabc/正在答题</title>
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
								<div class="span8">满分100分，答题时间10分钟</div>
								<div class="time span4 pull-right">
									剩余答题时间：
									<span class="badge badge-success" id="hour_show">00</span><B>-</B>
									<span class="badge badge-warning" id="minute_show">00</span><B>-</B>
									<span class="badge badge-important" id="second_show">00</span>
								</div>
								</div>
									<form action="/exam/submitExam" id="validateInput" method="post">
									<div class="span12">
										<br>
										<input type="hidden" name="testId" value="${test.get('id')}">
										<input type="hidden" name="beginTime" value="${nowTime}">
                                        <c:forEach items="${questions}" var="question" varStatus="status">
                                       	<label style="font-size:18px"><span class="badge badge-info" style="font-size:20px">${status.count}</span> ${question.get('content')}</label>
                                        <c:forEach items="${question.getAnswers()}"  var="answer" varStatus="status1">
									      <label style="font-size:14px" class="redio"><input type="radio"  name="answer${question.get('id')}" id="${status.count}${status1.count}" value="${answer.get('identifier')}"/>${answer.get("identifier")}.  ${answer.get('content')}</label>
									      </c:forEach>
									      <input type="hidden"  value="${question.get('id')}"  name="questionsIds"  />
									      <br>
									      <div class="answerIds"></div>
                                        </c:forEach>
									</div>
									</form>
									 <button onclick="submit()" class="btn btn-success pull-right">提交试卷</button>
								</div>
							</div>
						</div>
					</div>
    			</div> <!-- end blog -->
    		</div>
    		<script type="text/javascript" src="${ctxJs}/validate/validate.shareExam.js"></script> 
    		<script type="text/javascript" src="${ctxJs}/layer/layer.js"></script>
    		<script type="text/javascript">
				var intDiff = parseInt(600);//倒计时总秒数量
				var  Intervals;
				var tmers = function(){
					var day=0,
					hour=0,
					minute=0,
					second=0;//时间默认值		
				if(intDiff > 0){
					hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
					minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
					second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
					if(intDiff==120){
						layer.open({
						    type: 0,
						    title:"温馨提醒",
						    offset: 'rb',
						    shade: false,
						    time: 8000,
						    content: "答题时间已不足2分钟了哦!", 
						    btn: "我知道了",
						});
					}
				}else{
					var count = $("body").find(":radio:checked").length;
					if(count==5){
						$("form").submit();
					}else{
						location.href = "/exam/examTimeout";
					}
				}
				if (hour <= 9) hour = '0' + hour;
				if (minute <= 9) minute = '0' + minute; 
				if (second <= 9) second = '0' + second;
				$('#hour_show').html('<s id="h"></s>'+hour);
				$('#minute_show').html('<s></s>'+minute);
				$('#second_show').html('<s></s>'+second);
				intDiff--;
				}
				$(function timer(intDiff){
					  Intervals = setInterval(tmers,1000);
				}) 
				
				
				//************//
				//禁止按键F5
				document.onkeydown = function(e){
				    e = window.event || e;
				    var keycode = e.keyCode || e.which;
				    if( keycode = 116){
				        if(window.event){// ie
				            try{e.keyCode = 0;}catch(e){}
				            e.returnValue = false;
				        }else{// ff
				            e.preventDefault();
				        }
				    }
				}

			//禁止鼠标右键菜单
			document.oncontextmenu = function(e){
			         return false;
			} 
			
			function setValue(v){
				var answerinput ='<input type="text" value="'+$(v).val()+'"  name="answerIds"/>';
		    	$(v).parent().parent().find(".answerIds").html(answerinput);
			}
			
			function submit(){
				var count = $("body").find(":radio:checked").length;
				if(count==5){
					$("form").submit();
				}else{
					layer.msg("亲,还有"+(5-count)+"道题没做呢！");
				}
			}
</script>
  </body>
</html>
