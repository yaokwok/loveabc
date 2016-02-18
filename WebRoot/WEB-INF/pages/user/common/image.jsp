<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>上传和预览</title>
		<script type="text/javascript" src="/js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="/js/common.js"></script>
		<script type="text/javascript">
		  //在父窗口显示图片
          function showPic(){
             var fileName = $("#fileName").attr("src");
             $('#fileName', window.parent.document).attr("src",fileName);
             $('#pic', window.parent.document).val(fileName);
             $('#dialogBg', window.parent.document).hide();
             $('#dialog', window.parent.document).hide();
          }
          //判断是否是图片
          function isImg(){
             var f=$("#imgFile").val();
		     if(f==""){
		        alert("请先浏览选择图片");return false;
		     }else {
		       if(!/\.(gif|jpg|jpeg|png|GIF|JPG|PNG)$/.test(f)) {
		         alert("图片类型必须是.gif,jpeg,jpg,png中的一种")
		         return false;
		       }
		     }
          }
		</script>
	</head>
	<body>
	 <form action="/user/upload" method="post" enctype="multipart/form-data" onsubmit="return isImg();">
		<table width="550px">
         <tr>
          <td width="100px">&nbsp;</td>
          <td width="300px"><img width="90px" height="90px" style="border: 1px solid #ECE9D8;" id="fileName" src="<c:if test="${empty fileName }">/images/nopic.jpg</c:if><c:if test="${!empty fileName }">${ctx }/upload/${fileName }</c:if>"/></td>
          <td valign="bottom"><input type="file" id="imgFile" name="imgFile"/><input type="submit" value="上传"/></td>
         </tr>
         <c:if test="${!empty fileName }">
	         <tr>
	          <td colspan="3"><input type="button" onclick="showPic();" value="确定使用"/></td>
	         </tr>
         </c:if>
        </table>
        <p>上传说明：</p>
        <p>1.点击"浏览..."选择你要上传的照片。</p><p>2.点击"上传"进入照片裁剪。<span style="color:red;">（请保证裁剪的头像为正方形否则显示不正常）</span></p><p>3.裁剪完成点击"确定使用"然后关闭本窗口。</p>
     </form>
	</body>
</html>