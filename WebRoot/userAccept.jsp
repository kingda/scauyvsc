<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<s:if test="#session.admin==null">
    		<meta http-equiv="refresh" content="0.1;url=index.jsp">
    	   </s:if>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>志愿者录取</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <center><h1>志愿者申请录取名单</h1></center>
  <center>
  <%String name=request.getParameter("name");
  if(name!=null)
  session.setAttribute("AcceptQuery",name);
  %>
  <%if(name==null){
  		out.print("您尚未选择所需查询的活动！");
  		}
  %>
  
  <form action="userAccept.jsp" method="post">
    	<span class="logo-title">查询</span>
    	 活动名称<input type="text" name="name"  />
    	<input class="button" type="submit" name="submit" value="查询" />
    	</form> 
  </center>
    <%
    try {
		   Class.forName("com.mysql.jdbc.Driver");
		  } catch (ClassNotFoundException e) {
		   e.printStackTrace();
		  }// Mysql 的驱动
	 try {
		Connection conn =DriverManager.getConnection(
				    "jdbc:mysql://localhost:3306/test", "root","19931011");
		Statement stmt =conn.createStatement();
		ResultSet rs; 
		if((String)session.getAttribute("AcceptQuery")==null){
		rs =stmt.executeQuery("select application.applyId,activities.activityHeadLine,user.userNum,user.userName,user.userGrade,user.userMajor,user.userSex,application.isOk from user,activities,application where user.userNum=application.userId and application.activityId=activities.activityId");
		}else{ 
		rs =stmt.executeQuery("select application.applyId,activities.activityHeadLine,user.userNum,user.userName,user.userGrade,user.userMajor,user.userSex,application.isOk from user,activities,application where user.userNum=application.userId and application.activityId=activities.activityId and activities.activityHeadLine='"+(String)session.getAttribute("AcceptQuery")+"'");	
		}
%>
<center>
    		<table border=3>
    			<tr bgcolor=silver><b></b>
    				<td>报名活动</td><td>学号</td><td>名字</td><td>年级 </td><td>专业</td><td>性别</td>
    				<td>是否录取</td>
    			
        		 <%
        		 while(rs.next()) {%>
        		 </tr>
    				<tr align="center" bgcolor="#FAFAF1" height="22">
        		 <% 
      			   out.print("<td>"+rs.getString("activityHeadLine")+"</td>");
      			 out.print("<td>"+rs.getString("userNum")+"</td>");
      			out.print("<td>"+rs.getString("userName")+"</td>");
      			out.print("<td>"+rs.getString("userGrade")+"</td>");
      			out.print("<td>"+rs.getString("userMajor")+"</td>");
      			out.print("<td>"+rs.getString("userSex")+"</td>");
      			out.print("<td>"+rs.getString("isOk")+"</td>");
        		 %>		
        		<form action="userAccept" method="post">
        		<td><input style="display:none;" type="text" name="applyId"  value=<%=rs.getString("applyId")%> /></td>
        		<td><input type="submit" value="录取"></form></td>
        		<form action="userAcceptDel" method="post">
        		<td><input style="display:none;" type="text" name="applyId"  value=<%=rs.getString("applyId")%> /></td>
        		<td><input type="submit" value="删除"></form></td>
        		
        		<form action="userMessageUpdate.jsp" method="post">
        		<td><input style="display:none;" type="text" name="usernum"  value=<%=rs.getString("userNum")%> /></td>
        		<td><input type="submit" value="志愿者详细信息"></form></td></tr>
        		<% } %>
    		</table> </center>
		 <%
		 rs.close();
		   conn.close();
	 } catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
    %>
  </body>
</html>
