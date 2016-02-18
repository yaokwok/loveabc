<%@ page contentType="text/html; charset=gb2312" language="java" %> 
<%@page import="java.util.*" %>
<%@page import="com.thinktwice.dao.User" %>
<%@page import="java.sql.*" %>
<% 
String num = request.getParameter("username"); 
num=new String(num.getBytes("ISO8859-1"),"GB2312");
//加载JDBC驱动
Class.forName("com.mysql.jdbc.Driver");
//连接数据库
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easilyen","root","123456");
//创建一个JDBC声明
Statement stmt = con.createStatement();
//查询数据库里用户名的值为当前用户输入值的数量
ResultSet rs = stmt.executeQuery("select count(*) from ee_user a where (select count(1) from ee_user b where a.username='"+num+"')>1");
rs.next();
rs.getString(1);
String sql = rs.getString(1);
//如果值大于0，证明该用户名已被使用
if(Integer.parseInt(sql)>0)
   out.print("该邮箱已被注册，请重新填写！"); 
else 
   out.print("恭喜，邮箱号可用！"); 
%>

