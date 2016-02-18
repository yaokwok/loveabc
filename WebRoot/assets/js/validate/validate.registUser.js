$(document).ready(function (){
	jQuery.validator.addMethod("chrnum", function(value, element) {
	var chrnum = /^([a-zA-Z_.]+)$/;
	return this.optional(element) || (chrnum.test(value));
	}, "只能输入数字和字母(字符A-Z, a-z)");
	  $("#validateInput").validate({
					rules:{
						'username':{
							required:true,
							email:true,
							maxlength:50,
							remote:{
								url: "/user/checkUsername",
								type: "post",
								dataType: "json",
								data: {'username':$("#username").val()}
							}
						},
						'english_name':{
							required:true,
							chrnum:true,
							rangelength:[3,8],
							remote:{
								url: "/user/checkEngName",
								type: "post",
								dataType: "json",
								data: {'english_name':$("#english_name").val()}
							}
						},
						'password':{
							required:true,
						},
						'password2':{
							required:true,
							equalTo:"#password",
						}
					},
					messages:{
						'username':{	
							required:"请填写邮箱号",
							email:"邮箱格式不正确",
							maxlength:"最长不能超过50位",
							remote: "该邮箱已注册"
							},
						'english_name':{
							required: "起个英文名吧",
							chrnum:"只能是字母以及 _ 和 . 不包括数字和其它标点符号",
							rangelength: "只能在3-8位之间",
							remote: "该英文名已被使用",
						},
						'password':{
							required: "请填写密码",
							rangelength: "密码应该在6-20位之间"
						},
						'password2':{
							required: "再一次输入密码",
							equalTo:"两次输入密码不一致",
						}
					},
					errorClass: "help-inline",
					errorElement: "span",
					highlight:function(element, errorClass, validClass) {
						$(element).parents('.control-group').removeClass('success');
						$(element).parents('.control-group').addClass('error');	
					},
					unhighlight: function(element, errorClass, validClass) {
						$(element).parents('.control-group').addClass('success');
						$(element).parents('.control-group').removeClass('error');
					}
				});
});