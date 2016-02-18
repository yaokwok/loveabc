<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<style>
<!--
.visible-phone1{
display: inline-block !important;
}
-->
</style>
<div class="row-fluid">
<a class="btn disabled pull-right visible-phone">共 ${totalRow} 条数据</a>
	
</div>
<br class="visible-phone">
<div id="pageBtnBar" class="btn-toolbar pull-right ">
	<div class="btn-group hidden-phone">
		<a class="btn disabled">共 ${totalRow} 条数据</a>
	</div>
	


	<div class="btn-group ">
		<a
			<c:choose>
        	<c:when test="${curPage>1}">class="btn"  href="javascript:simpleTable.togglePage(1)"</c:when>
        	<c:otherwise>class="btn disabled" </c:otherwise>
        </c:choose>>首页</a>
		<a
			<c:choose>
        	<c:when test="${curPage >1}">class="btn"  href="javascript:simpleTable.togglePage(${curPage-1})"</c:when>
        	<c:otherwise>class="btn disabled" </c:otherwise>
        </c:choose>>上一页</a>
	</div>
	<div class="btn-group hidden-phone">
		<c:forEach begin="${beginPage}" end="${endPage}" varStatus="vs">
			<a class="btn <c:if test="${vs.index==curPage}">disabled</c:if>"
				<c:if test="${vs.index!=curPage}">href="javascript:simpleTable.togglePage(${vs.index})" </c:if>>${vs.index}</a>
		</c:forEach>
	</div>
	
	<div class="btn-group visible-phone">
			<a class="btn disabled">${curPage}</a>
	</div>
	
	<div class="btn-group">
		<a
			<c:choose>
        	<c:when test="${curPage+1<=totalPage}">class="btn"  href="javascript:void(0)" onclick="simpleTable.togglePage(${curPage+1})"</c:when>
        	<c:otherwise>class="btn disabled"</c:otherwise>
        </c:choose>>下一页</a>

		<a
			<c:choose>
        	<c:when test="${curPage!=totalPage}">class="btn"  href="javascript:simpleTable.togglePage(${totalPage})"</c:when>
        	<c:otherwise>class="btn disabled"</c:otherwise>
        </c:choose>>末页</a>
	</div>
</div>
