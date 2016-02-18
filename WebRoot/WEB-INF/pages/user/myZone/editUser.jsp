<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
<title>易英语</title>
<meta name="decorator" content="Admindefault" />
 <!-- jbox  在这之前先引入jQuery的js 这里的default.jsp已经引入-->
<script type="text/javascript" src="/js/jbox/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript" src="/js/jbox/jquery.jBox-zh-CN.min.js"></script>
<link type="text/css" rel="stylesheet" href="/js/jbox/Gray/jbox.css" />
<!-- jbox END-->
<script type="text/javascript" src="/js/My97DatePicker/WdatePicker.js"></script>
<!-- 城市选择插件 -->
<script src="${ctxJs}/js/jquery.provincesCity.js" type="text/javascript"></script>
<script src="${ctxJs}/js/provincesdata.js" type="text/javascript"></script>
<!-- 城市选择插件 END -->
   <script>
	//调用城市选择插件
	$(function(){
		$("#test").ProvinceCity();
		$("#test1").ProvinceCity();
	});
  </script>
		<div class="page-content">
<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<div id="dashboard">
					<!-- BEGIN DASHBOARD STATS -->
					<div class="row-fluid">
					<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="/user/myHomePage">个人中心</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>完善资料</li>
							<li class="pull-right no-text-shadow">
								<div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
									<i class="icon-calendar"></i>
									<span></span>
									<i class="icon-angle-down"></i>
								</div>
							</li>
						</ul>
						<div class="row-fluid">
               <div class="span12">
                  <div class="tabbable tabbable-custom boxless">
                     <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab">基本资料</a></li>
                        <li><a class="advance_form_with_chosen_element" href="#tab_2" data-toggle="tab">兴趣爱好</a></li>
                        <li><a href="#tab_3" data-toggle="tab">安全信息</a></li>
                     </ul>
                     <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                        <div class="portlet box blue">
                              <div class="portlet-title">
                                 <h4><i class="icon-reorder"></i>基本资料</h4>
                              </div>
                              <div class="portlet-body form">
					<form action="/user/update" method="post" class="form-horizontal"> <!-- enctype="multipart/form-data" --> 
			<div class="tab-pane active" id="tab1">
				<input type="hidden" name="user.id" value="${currentUser.get('id')}" />
				 <div class="control-group">
					<label class="control-label" for="input01">头像：</label>
					<div class="controls">
					<input name="user.imgurl" id="pic" value="<c:if test="${empty user.get('imgurl') }">/images/nopic.gif</c:if><c:if test="${!empty user.get('imgurl') }">${user.get('imgurl')}</c:if>" readonly="readonly" class="text" style="width: 250px;background-color: DFDFDF;" type="hidden" size="50" />
					<img width="150px" title="点击更换头像" height="150px" name="user.imgurl" id="fileName" onclick="uppic()" src="<c:if test="${empty user.get('imgurl') }">/images/nopic.jpg</c:if><c:if test="${!empty user.get('imgurl') }">${user.get('imgurl')}</c:if>"/>		
				</div>
				</div> 
				<div class="control-group">
				<label class="control-label">性别：</label>
				<div class="controls">
				<label class="radio">
				<span>
				<input type="radio" name="user.sex" value="0" id="0" checked="checked" style="opacity: 0;">
				</span>
				保密
				</label>
				<label class="radio">
				<span class="checked">
				<input type="radio" name="user.sex" value="1" id="2" style="opacity: 0;">
				</span>
				男
				</label>
				<label class="radio">
				<span>
				<input type="radio" name="user.sex" value="2" id="2" style="opacity: 0;">
				</span>
				女
				</label>
				</div>
				</div>
				<div class="control-group">
				<label class="control-label">所在地：</label>
				<div class="controls">
				<span style="color:gray">原所在地：<c:if test="${user.get('address2')!=null}">${user.get('address')}-${user.get('address1')}-${user.get('address2')}</c:if><c:if test="${user.get('address2')==null}">未填写</c:if></span>
				<div id="test1"><select class="m-wrap medium" name='user.address'></select>
				<select class="m-wrap medium" name='user.address1'></select> <select class="m-wrap medium" name='user.address2'></select></div>
				</div>
				</div><br>
				<div class="control-group">
					<label class="control-label" for="input05">出生日期：</label>
					<div class="controls">
						<input type="text" readonly="readonly" class="Wdate m-wrap medium" id="input05"
							value="${user.get('born')}" name="user.born"
							onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
					</div>
				</div><br>
				<div class="control-group">
					<label class="control-label" for="input06">个性签名：</label>
					<div class="controls">
						<textarea name="user.idiograph" class="large m-wrap" rows="3" id="input06">${user.get('idiograph')}</textarea>
					</div>
				</div><br>
				<div class="form-actions">
                <button type="submit" class="btn blue"><i class="icon-save"></i> 保存</button>
                <button type="button" class="btn">取消</button>
             </div>
	</div></form></div></div>
					</div>
					<div class="tab-pane " id="tab_2">
                           <div class="portlet box green">
                              <div class="portlet-title">
                                 <h4><i class="icon-reorder"></i>兴趣爱好</h4>
                              </div>
                              <div class="portlet-body form">
                              <div class="control-group">
        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
        <label class="control-label visible-ie8 visible-ie9">电子邮箱</label>
        <div class="controls">
          <div class="input-icon left">
            <i class="icon-envelope"></i>
            <input class="m-wrap placeholder-no-fix" type="text" placeholder="电子邮箱" name="user.email"/>
          </div>
        </div>
      </div>
                              </div></div></div></div></div></div></div></div></div>
				</div>
				</div>
				<script type="text/javascript">
				window.closeThisWindow = function(){
			        window.close(); // 或者 this.close();
			};
	function uppic(){
	jQuery.jBox.open("iframe:/user/image", "上传头像(裁剪头像时确定键在最右下角)", 600, 350, { buttons: { '关闭': true} });
	}
	</script>
</html>