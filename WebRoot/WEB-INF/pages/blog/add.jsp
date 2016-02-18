<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
<title>易英语</title>
<meta name="decorator" content="Admindefault" />
<link rel="stylesheet"
	href="${ctxJs}/kindeditor/themes/default/default.css" />
<link rel="stylesheet"
	href="${ctxJs}/kindeditor/plugins/code/prettify.css" />
<script charset="utf-8"
	src="${ctxJs}/kindeditor/kindeditor.js"></script>
<script charset="utf-8"
	src="${ctxJs}/kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8"
	src="${ctxJs}/kindeditor/plugins/code/prettify.js"></script>
	<script>
        KindEditor.ready(function(K) {
                window.editor = K.create('#editor_id');
        });
</script>
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div id="portlet-config" class="modal hide">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button"></button>
					<h3>Widget Settings</h3>
				</div>
				<div class="modal-body">
					<p>Here will be a configuration form</p>
				</div>
			</div>
<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
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
								<a href="/blog">论坛首页</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">发表新帖</a></li>
							<li class="pull-right no-text-shadow">
								<div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
									<i class="icon-calendar"></i>
									<span></span>
									<i class="icon-angle-down"></i>
								</div>
							</li>
						</ul>
						<div class="portlet box blue tabbable">
					<div class="portlet-title">
					<h4>
					<i class="icon-file"></i>
					<span class="hidden-480">发帖</span>
					</h4>
					</div>
					<div class="portlet-body form">
					<div class="tabbable portlet-tabs">
					<ul class="nav nav-tabs">
					<li class="">
					<a data-toggle="tab" href="#portlet_tab3">投票贴</a>
					</li>
					<li class="">
					<li class="active">
					</ul>
					<div class="tab-content">
					<div id="portlet_tab1" class="tab-pane active">
					<form action="/blog/save" method="post" class='form-horizontal'>
					<%@include file="form.jsp"%>
						</form>
						</div></div></div></div></div></div>
					</div>
				</div>
				</div>
</html>