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
								<a href="/blog">论坛</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">查看帖子</a></li>
							<li class="pull-right no-text-shadow">
								<div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
									<i class="icon-calendar"></i>
									<span></span>
									<i class="icon-angle-down"></i>
								</div>
							</li>
						</ul>
						<table class="table table-bordered" style="background-color: #fff;table-layout:fixed;word-wrap:break-word;">
				<tr>
					<td width="80%"><c:if test="${blogList.get('elite')==1}"><button class="btn" style="background:yellow;border-radius:12px;color:red;padding: 1px 6px;" title="精华帖">精</button>&nbsp;</c:if><c:if test="${blogList.get('top')==1}"><button class="btn" style="background:#FF0033;border-radius:12px;color:#FFFFFF;padding: 1px 6px;" title="置顶帖">顶</button>&nbsp;</c:if><b style="font-size:14px">${blogList.get('title')}</b></td>
					<td width="20%" style="color:gray">发表于：<fmt:formatDate value="${blogList.get('time')}" type="both" /></td>
				</tr>
				<tr>
					<td height="400px" style="font-size:18px;">${blogList.get('content')}</td>
					<td style="text-align: center;font-size:14px;"><img width="150px" title="头像" height="150px" style="border: 1px solid #ECE9D8;border-radius:100px;" src="<c:if test="${empty blogList.get('imgurl') }">/images/nopic.jpg</c:if><c:if test="${!empty blogList.get('imgurl') }">${blogList.get('imgurl')}</c:if>"/>		
					<br><b style="color:blue">${blogList.get('nickname')}</b> <br>
					<span style="color:orange;"> ${blogList.get('level')}</span><br>
					<button class="btn green"><i class="icon-plus"></i> 关注</button>
					<input type="hidden" id="blogId" value="${blogList.get('id')}"></td>
				</tr>
			<tr>
				<td id="share" rowspan="3">
		  		 <div class="share_r">
		      		<div class="bdsharebuttonbox">
		         <table>
		           <tr><td><a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
		           <a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a>
		           <a title="分享到腾讯微博" href="#" class="bds_tqq" data-cmd="tqq"></a>
		           <a title="分享到豆瓣网" href="#" class="bds_douban" data-cmd="douban"></a>
		           <a href="#" class="bds_more" data-cmd="more"></a></td></tr>
		         </table>
		    	  </div>
		      <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"24"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","t163"],"viewText":"分享到：","viewSize":"16"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=86835285.js?cdnversion='+~(-new Date()/36e5)];</script>
		  	   </div>
			</td><td>
			</tr>
			</table>
			<button type="button" class="btn green"
				 title="赞" id="nice">
				<nobr>
					<i class="icon-thumbs-up"></i><span id="nice"> ${blogList.get('nice')}</span>
				</nobr>
			</button>
			<button type="button" class="btn yellow"
				 title="差劲" id="bad">
				<nobr>
					<i class="icon-thumbs-down"></i><span id="bad"> ${blogList.get('bad')}</span>
				</nobr>
			</button>
			<div>&nbsp;</div>
			<c:if test="${totalRow>10}">
			<form name="queryform" id="queryform" action="/blog/show/"
				method="post">
				<%@include file="/WEB-INF/pages/include/pageNumber.jsp"%>
			</form>
			</c:if>
			<c:if test="${totalRow==0}"><div class="alert">
				<button class="close" data-dismiss="alert"></button>
				<strong>暂无回复！</strong>
				来抢第一个沙发吧！
				</div></c:if>
			<table class="table table-bordered" style="background-color: #fff;table-layout:fixed;word-wrap:break-word;">
				<c:forEach items="${replyList.list}" var="reply" varStatus="status">
					<tr>
						<td width="80%">${status.count}楼</td>
						<td width="20%" style="color:gray">回复于：<fmt:formatDate value="${reply.get('time')}" type="both" />
						</td>
					</tr>
					<tr>
						<td height="200px">${reply.get('content')}</td>
						<td style="text-align: center;"><img width="150px" title="头像" height="150px" style="border: 1px solid #ECE9D8;border-radius:100px;" src="<c:if test="${empty reply.get('imgurl')}">/images/nopic.jpg</c:if><c:if test="${!empty reply.get('imgurl') }">${reply.get('imgurl')}</c:if>"/><br>
						${reply.get('nickname')}
						<br><span style="color:orange;">${reply.get('level')}</span></td>
					</tr>
				</c:forEach>
			</table>
			<form name="queryform" id="queryform" action="/blog/show/"
				method="post">
				<%@include file="/WEB-INF/pages/include/pageNumber.jsp"%>
			</form>
</div>
			<form action="/blog/reply/${blogList.get('id')}" method="post">
				<input type="hidden" name="reply.userId"
					value="${currentUser.get('id')}" />
				<textarea name="reply.content" id="editor_id" class="span9"></textarea>
				<div class="form-actions">
                <button type="submit" class="btn blue"><i class="icon-comment"></i> 回复</button>
                <button type="button" class="btn">返回</button>
             </div>
			</form></div></div>
					</div>
					<script type="text/javascript">
		$(document).ready(function() {
			var id = $("input#blogId").val();
			//jQuery ajax动态更新点赞次数
			$("button#nice").click(function() {
				$('span#nice').load('/common/nice.jsp', {
					id : id
				}, function() {
				});
			});
			//jQuery ajax动态更新点差劲次数
			$("button#bad").click(function() {
				$("span#bad").load("/common/bad.jsp", {
					id : id
				}, function() {
				});
			});
		});
	</script>
</html>