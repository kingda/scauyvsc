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
    	<jsp:useBean id="upDao" class="com.dao.UploadDao" scope="session">
  		</jsp:useBean>
  		<%String str1=request.getParameter("start"); %>
  		<%String str2=request.getParameter("over"); %>
  		<%if(str1==null||str2==null){
  			str1="0";
  			str2="10";
  		}%>
  		   <%QueryResult qr = upDao.findAll(Integer.parseInt(str1)-1, Integer.parseInt(str2)); // 第3页，每页10条
    		%>
    		<%int num=qr.getCount(); %>
    		
    		<form action="uploadMan.jsp" method="post">
    <center>
     <span class="logo-title">批量查询</span>
    	 开始页数<input type="text" name="start" size="2" value="1"/>
    	 每页行数<input type="text" name="over" size="2" value="10"/>
    	<input class="button" type="submit" name="submit" value="查询" />
    	</center>
    	</form> 
    		<center>
    		从第<%=Integer.parseInt(str1) %>页开始查询，本页共<%=str2 %>条记录,共<%=num/Integer.parseInt(str2) %>页
    		<table border=3>
    			<tr bgcolor=silver><b></b>
    				<td>ID</td>
    				<td>文件名称</td><td>添加时间 </td><td>文件简介</td>
    			<%
    			for (Upload user : (List<Upload>) qr.getList()) {%>
    				<tr align="center" bgcolor="#FAFAF1" height="22">
    					<td><%=user.getId() %></td>
        				<td><%=user.getName() %></td>
        				<td><%=user.getTime() %></td>
        				<td><%=user.getDiscript() %></td>
        				 
        				 <form action="uploadDelete" method="post">
        				 <td><input style="display:none;" type="text" name="id"  value=<%=user.getId()%> /></td>
        				<td><input type="submit" name="submit" value="删除"/></td>
        				 </form>
        			</tr>
        		<%}
    			%>
    		</table>
    	<h1>共<%=num %>条记录</h1>
    	 <s:if test="#request.userDel!=null">
    <% out.print(request.getAttribute("userDel")); %>
    </s:if>  </center>		
  </body>
</html>
