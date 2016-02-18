<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<html>
<title>易英语主页</title>
<meta name="decorator" content="Admindefault" />
<script type="text/javascript" src="/js/simpletable.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			window.simpleTable = new SimpleTable("queryform",${blogPage.pageNumber},${blogPage.pageSize},'${sortColumn}');
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
							<li class="pull-right no-text-shadow">
								<div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
									<i class="icon-calendar"></i>
									<span></span>
									<i class="icon-angle-down"></i>
								</div>
							</li>
						</ul>
						<a class="btn green pull-right" href="/blog/add"><b><i class="icon-file"></i> 发帖</b></a>
			<form action="/blog/search" method="post">
				 <div class="input-group">
				<input value="${blog}" id="title" name="title" type="text" class="m-wrap medium" 
					placeholder="关键字查找" /><span class="input-group-btn">
				<button type="submit" class="btn blue" title="搜索"><i class="icon-search"></i></button>
				<a href="/blog" class="btn black" title="全部帖子"><i class="icon-refresh"></i></a></span></div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th width="1%"></th>
							<th width="55%" style=" text-align: center;">主题</th>
							<th width="15%" style=" text-align: center;">作者</th>
							<th width="5%" style=" text-align: center;">发表于</th>
							<th width="8%">浏览/评论</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${blogPage.list}" var="blog" varStatus="status">
							<tr>
							<!-- 显示序号[计算方法(当前页数-1)×总页数+foreach序号]使用status.count从1开始 -->
								<td>${((curPage-1)*numPerPage)+status.count}</td>
								<td style="white-space:nowrap;"><c:if test="${blog.get('type')==1}"><span class="label label-info">经验分享</span></c:if>
											<c:if test="${blog.get('type')==2}"><span class="label label-warning">教学教程</span></c:if>
											<c:if test="${blog.get('type')==3}"><span class="label label-success">技术交流</span></c:if>
											<c:if test="${blog.get('type')==4}"><span class="label label-black">交友爆照</span></c:if><a href="/blog/show/${blog.get('id')}" style="display:inline-block;width:100%; height:100%;" title="查看帖子内容"><c:out
											value="${blog.get('title')}" /></a><c:if test="${blog.get('elite')==1}"><a style="background:yellow;border-radius:12px;color:red;padding: 1px 3px;" title="精华帖">精</a>&nbsp;</c:if><c:if test="${blog.get('top')==1}"><a style="background:#FF0033;border-radius:12px;color:#FFFFFF;padding: 1px 3px;" title="置顶帖">顶</a>&nbsp;</c:if>
											</td>
								<td style="text-align:center"><c:out value="${blog.get('nickname')}" /></td>
								<td title="<fmt:formatDate value="${blog.get('time')}" type="time" timeStyle="long"/>"><fmt:formatDate value="${blog.get('time')}" type="date"/></td>
								<td><span class="label label-info" title="${blog.get('browse')}次浏览/${blog.get('reply')}条评论">${blog.get('browse')}/${blog.get('reply')}</span>
								<a href="/blog/delete/${blog.get('id')}"><i class="icon-remove"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
			<form name="queryform" id="queryform" action="/blog/index"
				method="post">
				<%@include file="/WEB-INF/pages/include/pageNumber.jsp"%>
			</form>
					</div>
				</div>
				</div>
				</div>
</html>