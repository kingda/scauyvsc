<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.model.*" %>
<%@ page import="com.dao.*" %>
<%@ page import="com.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>show news</title>
    
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
    	<jsp:useBean id="newDao" class="com.dao.NewsDao" scope="session">
  		</jsp:useBean>
  		<%String str1=request.getParameter("start"); %>
  		<%String str2=request.getParameter("over"); %>
  		<%if(str1==null||str2==null){
  			str1="1";
  			str2="10";
  		}%>
  		   <%QueryResult qr1 = newDao.findAll(Integer.parseInt(str1)-1, Integer.parseInt(str2)); 
    		%>
    		<%int num=qr1.getCount(); %>
    		
    		<form action="newsShow.jsp" method="post">
    <center>
     <h1>新闻管理</h1>
    	 开始页数<input type="text" name="start" size="2" value="1"/>
    	 每页行数<input type="text" name="over" size="2" value="10"/>
    	<input class="button" type="submit" name="submit" value="查询" />
    	</center>
    	</form> 
    		<center>
    			从第<%=Integer.parseInt(str1) %>页开始查询，本页共<%=str2 %>条记录,共<%=num/Integer.parseInt(str2)+1 %>页
    		<table border=3>
    			<tr bgcolor=silver><b></b>
    				<td>文章ID</td>
    				<td>文章标题</td><td>发布时间</td><td>文章作者 </td><td>文章来源</td><td>文章照片</td>
    				<td>阅读次数</td>
    			<%
    			for (News act : (List<News>) qr1.getList()) {%>
    				<tr align="center" bgcolor="#FAFAF1" height="22">
    					<td><%=act.getNewsId() %></td>
    					<td><%=act.getPassageHeadLine() %></td>
    					<td><%=act.getNewsAddedTime() %></td>
    					<td><%=act.getNewsWritter() %></td>
    					<td><%=act.getNewsComeFrom() %></td>
    					<td><%=act.getNewsImgAdd() %></td>
    					<td><%=act.getNewsReadCounts() %></td>
     
        				 <form action="deletepassage" method="post">
        				 <td><input style="display:none;" type="text" name="artid"  value=<%=act.getNewsId() %> /></td>
        				<td><input type="submit" name="submit" value="删除"/></td>
        				 </form>
        			</tr>
        		<%}
    			%>
    		</table>
    	<h1>共<%=num %>条记录</h1>

  </body>
</html>
