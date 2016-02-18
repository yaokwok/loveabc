<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
	import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<html>
<title>角色管理</title>
<meta name="decorator" content="Admindefault" />
<script type="text/javascript" src="${ctxJs}/validate/validate.role.js"></script>
<link rel="stylesheet" href="${ctxCss}/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="${ctxJs}/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="${ctxJs}/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript">
		var setting = {
				check: {
					enable: true,
					chkboxType:{"Y" : "ps", "N" : "ps" }
				},
				data: {
					simpleData: {
						enable: true
					}
				},
				async : {
					enable : true,
					url : "/role/getPermission/",
					type : "post",
					
				},
				callback : {
					onCheck: GetCheckedAll
				}
		};

		
		var code;
		function showCode(str) {
			if (!code) code = $("#code");
			code.empty();
			code.append("<li>"+str+"</li>");
		}
		
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting);
		});
		  function GetCheckedAll() {
		        var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
		        var nodes = treeObj.getCheckedNodes(true);
		        var msg = "";
		        for (var i = 0; i < nodes.length; i++) {
		            msg += nodes[i].id+",";
		        }
		        $("#msg").val();
		        $("#msg").val(msg);
		    }   
		 	
		</script>
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>创建角色</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="/role/save" method="post" class="form-horizontal" id="inputForm">
          <%@ include file="form.jsp"%>
          </form>
        </div>
      </div>
</html>