$(document).ready(function (){
	  $("#validateInput").validate({
					rules:{
						//为简化插件的命名规则
						'useranme':{
							required:true,
						},
						'password':{
							required:true,
						},
					},
					messages:{
						'useranme':{	
							required:"账号未填写哦~",
							},
						'password':{
							required:"密码未填写哦~",
						},
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