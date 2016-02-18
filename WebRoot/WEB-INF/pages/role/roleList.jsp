<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>角色管理</title>
<meta name="decorator" content="Admindefault" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

<div class="widget-box">
   <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
       <h5>角色列表</h5><div class="pull-right"><h5><!-- <a href="/role/addRole"><i class="icon-plus"></i>&nbsp;新增</a> --> </h5>
       <a href="/role/addRole" class="btn btn-info btn-small  pull-right " style="margin-top: 5px; margin-right: 6px;"><i  class="icon-plus ">新增</i></a>
       </div>
   </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>名称</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${role.list}" var="roles" varStatus="status">
                <tr class="gradeX">
                  <td>${roles.get('name')}</td>
                  <td><a href="/role/delete/${roles.get('id')}"><i class="icon-remove"></i></a>&nbsp;&nbsp;&nbsp;<a href="/role/edit/${roles.get('id')}"><i class="icon-pencil"></i></a></td>
                </tr>
                </c:forEach>     
              </tbody>
            </table>
          </div>
        </div>
        <div class="row-fluid">
					<div class="span4">&nbsp;</div>
					<div class="span8">
						<c:import url="/WEB-INF/pages/include/pageNumber.jsp" />
					</div>
		</div>
</body>
</html>