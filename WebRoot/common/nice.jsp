<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@page import="java.util.*"%>
<%@page import="com.thinktwice.dao.User"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpServletRequest;"%>
<!-- 帐号唯一性验证 -->
<%
	//获取用户真实IP
	String ip = request.getHeader("x-forwarded-for");
	if (ip == null || ip.length() == 0
			|| "unknown".equalsIgnoreCase(ip)) {
		ip = request.getHeader("Proxy-Client-IP");
	}
	if (ip == null || ip.length() == 0
			|| "unknown".equalsIgnoreCase(ip)) {
		ip = request.getHeader("WL-Proxy-Client-IP");
	}
	if (ip == null || ip.length() == 0
			|| "unknown".equalsIgnoreCase(ip)) {
		ip = request.getRemoteAddr();
	}

	String id = request.getParameter("id");
	id = new String(id.getBytes("ISO8859-1"), "GB2312");
	//加载JDBC驱动
	Class.forName("com.mysql.jdbc.Driver");
	//连接数据库
	Connection con = DriverManager
			.getConnection("jdbc:mysql://127.0.0.1/easilyen",
					"root", "123456");
	//创建一个JDBC声明
	Statement stmt = con.createStatement();
	//查询当前IP是否赞过当前帖子
	ResultSet rst = stmt.executeQuery("select b.*, i.userId from ee_blog_user i left join ee_blog b on b.id=i.blogId where b.id="+id+" and i.userId='"+ip+"'");
	/* rst.next();
	rst.getString(1);
	String sql = rst.getString(1);
	//游标不能下移表明没有记录 */
	if(rst.next()==false){
	//插入当前IP已赞记录
	int add = stmt.executeUpdate("insert into ee_blog_user (userId,blogId) values ( '"+ip+"', '"+id+"')");
	//增加并更新数据库点赞次数
	int rs = stmt.executeUpdate("update ee_blog set nice=nice+1 where id="
			+ id);
	ResultSet nice = stmt
			.executeQuery("select nice from ee_blog where id=" + id);
	nice.next();
	nice.getString(1);
	String sql1 = nice.getString(1);
	out.print(sql1);
	}else{
		out.print("已表态");
	}
%>

