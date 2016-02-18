<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<!DOCTYPE html>

<html>
<head>
<style type="text/css">
h1 {
	font-size:40px;
	margin:10px 0;
	border-bottom:solid 1px #ccc;
	padding-bottom:20px;
	letter-spacing:2px;
}
strong {
	background:#3ebd00;
	color:#fff;
	font-size:14px;
	font-family:Arial;
	padding:0 10px;
	
	border-radius:5px;
	box-shadow:1px 1px 3px rgba(0,0,0,0.2);
}

.time{
    margin-top:10px;
	height:30px;
	width:250px;
	margin-left: 4px;
}
</style>
<script type="text/javascript">
var intDiff = parseInt(1800);//倒计时总秒数量
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
}else{
	$("#timerout").modal("show");
	clearInterval(Intervals);
}
if (hour <= 9) hour = '0' + hour;
if (minute <= 9) minute = '0' + minute; 
if (second <= 9) second = '0' + second;
$('#hour_show').html('<s id="h"></s>'+hour);
$('#minute_show').html('<s></s>'+minute);
$('#second_show').html('<s></s>'+second);
intDiff--;
}
function timer(intDiff){
	  Intervals = setInterval(tmers,1000);
} 


 

</script>
</head>
<body>

<div class="time col-md-3">
	剩余时间：
	<strong id="hour_show">0</strong><B>-</B>
	<strong id="minute_show">0</strong><B>-</B>
	<strong id="second_show">0</strong>
</div>
<!--倒计时模块-->

</body>
<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
			tabindex="-1" id="timerout" class="modal fade" style="display: none;">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
				<div class="modal-header modal-info">
						<button aria-hidden="true" data-dismiss="modal" class="close"
							type="button">×</button>
						<h4 id="myModalLabel" class="modal-title">提示</h4>
					</div>
					<div class="modal-body">
							  考试时间已结束，系统将自动提交试卷！
					</div>
					<div class="modal-footer">
												<button data-dismiss="modal" class="btn btn-dark" type="button"  onclick="	submits();">关闭</button>
											</div>
				</div>
			</div>
		</div>

</html>
