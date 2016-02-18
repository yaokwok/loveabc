$(document).ready(function (){
	$('#subQs').click(function() {
		if ($('#validateInput').valid()) {
		$('#validateInput input[name^=answer_]').each(function() {
		$(this).attr('name', 'answer');
		});
		 $("#validateInput").submit();
		}
		return false;
		});
	  $("#validateInput").validate({
					rules:{
						'questions.content':{
							required:true,
							maxlength:255,
						},
						'answer_1':{
							required:true,
						},
						'answer_2':{
							required:true,
						},
						'answer_3':{
							required:true,
						},
						'answer_4':{
							required:true,
						},
					},
					messages:{
						'questions.content':{	
							required:"请填写题目",
							maxlength:"最长不超过255字符"
							},
						'answer_1':{
							required:"请填写A答案",
						},
						'answer_2':{
							required:"请填写B答案",
						},
						'answer_3':{
							required:"请填写C答案",
						},
						'answer_4':{
							required:"请填写D答案 (如果没有D项可以填“无”)",
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