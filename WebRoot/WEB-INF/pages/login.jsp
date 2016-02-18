<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
	import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<!DOCTYPE html>
<html style="height:100%;">
<head>
<title>爱英语loveabc</title>
<meta name="keywords" content="爱英语，英语学习，英语网" />
<meta name="description" content="爱英语，英语学习，英语网" />
<link href="${ctxCss}/bootstrap.min.css"  rel="stylesheet">
<link href="${ctxCss}/bootstrap-responsive.min.css" rel="stylesheet">
<link href="${ctxCss}/base.css" rel="stylesheet">
<link href="${ctxCss}/about.css" rel="stylesheet">
</head>
<%@ include file="/WEB-INF/pages/include/menu_nav.jsp"%>
<article class="aboutcon">
<h1 class="t_nav"><span>the longest journey begins with the first step.</span><a href="/" class="n1">网站首页</a><a href="/" class="n2">用户登录</a></h1>
<div class="about left">
 <div>注册的好处？</div>
 <ul><li>认识好友，和好友互动</li><li>查看自己考试成绩，以及不熟悉的单词</li></ul>
</div>
<aside class="right">  
    <div class="account-container stacked">
		<div class="content clearfix">
			<form action="/login" method="post">
				<div class="login-fields">
				<br>
				<div><a href="" style="color: red" data-dismiss="alert">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${msg}</a></div>
					<div class="input-group input-group-lg">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> <input
							type="text" class="" id="username" name="username" value=""
							placeholder="帐号">
					</div>
					<div class="input-group input-group-lg"
						style="margin-top: 7px;">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> <input
							type="password" class="" id="password"
							name="password" value=""  placeholder="密码">
					</div>
				</div><br>
				<!-- /login-fields -->
				<div class="login-actions">
					<button class="btn btn-primary" type="submit">
						<b>立即登录</b>
					</button>
					还没帐号？<a class="btn btn-warning" href="/user/registUser"><b>免费注册</b></a>
				</div>
				<!-- .actions -->
			</form>
		</div>
		<!-- /content -->
	</div>
</aside>
</article>
 <script src="${ctxJs}/jquery-1.8.3.min.js"></script>
  <script src="${ctxJs}/bootstrap.min.js"></script>  
  <script type="text/javascript" src="${ctxJs}/jquery-validation/dist/jquery.validate.min.js"></script>
  <script type="text/javascript">
	/** 
	 * validate(val) 光标离开后触发事件 
	 * @param string val 输入的文本 
	 * @return string 返回验证是否成功 
	 */
	function validate(val) {
		var userText = document.getElementById('userText'); // 获取 SPAN 对象  
		// 如果为空或者输入空格执行  
		if (!(val.match(/^\S+$/))) {
			userText.innerHTML = '<font color="red"></font>';
		} else {
			//长度小于两位
			if (val.length < 2) {
				userText.innerHTML = '<font color="red"></font>';
			}
			//不是字母或英文
			else if (!val.match(/\w{1,}[@][\w\-]{1,}([.]([\w\-]{1,})){1,3}$/)) {
				userText.innerHTML = '<font color="red"></font>';
			} else {
				var ajax = Ajax(); // 创建 Ajax 对象  
				// 通过 Ajax POST 方法把用户名提交到 validate.jsp 进行验证账号是否存在，并返回结果  
				ajax.post('/common/validate.jsp', {
					username : val
				}, function(data) {
					userText.innerHTML = data; // Ajax 返回的值显示在 SPAN 标签上
					//如果返回用户名被使用，禁用提交按钮
					if (data.length == 27) {
						document.getElementById("register-submit-btn").disabled = "disabled";
					} else {
						document.getElementById("register-submit-btn").disabled = "";
					}
				});
			}
		}
	}
</script>
</html>