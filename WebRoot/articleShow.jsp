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
    
    <title>show activities</title>
    
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
    	<jsp:useBean id="actDao" class="com.dao.ActivityDao" scope="session">
  		</jsp:useBean>
  		<%String str1=request.getParameter("start"); %>
  		<%String str2=request.getParameter("over"); %>
  		<%if(str1==null||str2==null){
  			str1="0";
  			str2="10";
  		}%>
  		   <%QueryResult qr = actDao.findAll(Integer.parseInt(str1)-1, Integer.parseInt(str2)); // 第3页，每页10条
    		%>
    		<%int num=qr.getCount(); %>
    		
    		<form action="articleShow.jsp" method="post">
    <center>
     <h1>活动管理</h1>
    	 开始页数<input type="text" name="start" size="2" value="1"/>
    	 每页行数<input type="text" name="over" size="2" value="10"/>
    	<input class="button" type="submit" name="submit" value="查询" />
    	</center>
    	</form> 
    		<center>
    			从第<%=Integer.parseInt(str1)+1 %>页开始查询，本页共<%=str2 %>条记录,共<%=num/Integer.parseInt(str2)+1 %>页
    		<table border=3>
    			<tr bgcolor=silver><b></b>
    				<td>活动ID</td>
    				<td>活动标题</td><td>活动相片</td><td>最大报名人数 </td><td>开始报名日期</td><td>结束报名日期</td>
    				<td>附件地址</td>
    			<%
    			for (Activity act : (List<Activity>) qr.getList()) {%>
    				<tr align="center" bgcolor="#FAFAF1" height="22">
    					<td><%=act.getActivityId() %></td>
    					<td><%=act.getActivityHeadLine() %></td>
        				<td><%=act.getActivityImg() %></td>
        				<td><%=act.getActivityMaxPersons() %></td>
        				<td><%=act.getActivityBeginDate() %></td>
        				<td><%=act.getActivityEndDate() %></td>
        				<td><%=act.getActivityPSFile() %></td>
        					<form action="ActivityUpdate.jsp" method="post">
	 <td><input style="display:none;" type="text" name="actid"  value=<%=act.getActivityId() %> /></td>
     <td><input type="submit" name="submit" value="修改 "/></td></form>
        				 <form action="deleteArtAct" method="post">
        				 <td><input style="display:none;" type="text" name="artid"  value=<%=act.getActivityId() %> /></td>
        				<td><input type="submit" name="submit" value="删除"/></td>
        				 </form>
        			</tr>
        		<%}
    			%>
    		</table>
    	<h1>共<%=num %>条记录</h1>
    	 <s:if test="#request.artDel!=null">
    <% out.print(request.getAttribute("artDel")); %>
    </s:if>  </center>		
  </body>
</html>
