<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="com.model.*" %>
<%@ page import="com.dao.*" %>
<%@ page import="com.util.*" %>
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
    
    <title>show users</title>
    
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
    	<jsp:useBean id="userDao1" class="com.dao.UserDao" scope="session">
  		</jsp:useBean>
  		<%String str1=request.getParameter("usernum"); %>
  		<%if(str1==null){
  			str1="2012";
  		}%>
  		   <%User user = userDao1.getByUserNum(str1); // 第3页，每页10条
    		%>
    		<center>
    		<table border=3>
    			<tr bgcolor=silver><b></b>
    				<td>学号</td><td>名字</td><td>密码 </td><td>密码找回邮箱</td><td>性别</td>
    				<td>身高</td><td>年级</td><td>专业</td><td>政治面貌</td><td>长号</td>
    				<td>短号</td><td>宿舍区</td>
    			</tr>
    				<tr align="center" bgcolor="#FAFAF1" height="22">
        				<td><%=user.getUserNum() %></td>
        				<td><%=user.getUserName() %></td>
        				<td><%=user.getUserPassword() %></td>
        				<td><%=user.getUserMail() %></td>
        				<td><%=user.getUserSex() %></td>
        				<td><%=user.getUserHeight() %></td>
        				<td><%=user.getUserGrade() %></td>
        				<td><%=user.getUserMajor() %></td>
        				<td><%=user.getUserPoliticsSta() %></td>
        				<td><%=user.getUserPhoneNumber() %></td>
        				<td><%=user.getUserShortNumber() %></td>
        				<td><%=user.getUserDormitoryArea() %></td>
        				<form action="userMessageUpdate.jsp" method="post">
        				<td><input style="display:none;" type="text" name="usernum"  value=<%=str1 %> /></td>
        				<td><input type="submit" name="submit" value="修改"/></td>
        				 </form>
        				 
        				 <form action="userMessageDeleteAction" method="post">
        				 <td><input style="display:none;" type="text" name="usernum"  value=<%=str1 %> /></td>
        				<td><input type="submit" name="submit" value="删除"/></td>
        				 </form>
        			</tr>
    		</table> </center>
  </body>
</html>
