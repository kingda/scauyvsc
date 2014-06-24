<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.model.*" %>
<%@ page import="com.dao.*" %>
<%@ page import="com.util.*" %>
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
    <title>ActivityUpdate</title>
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
    <%String str1=request.getParameter("actid"); %>
    <%Activity act = actDao.getByArtId(Integer.parseInt(str1)); %>
    <%
   	Date overDay=act.getActivityEndDate();
    if(overDay==null){
    	overDay=act.getActivityBeginDate();
    }
    %>
    <center>
   <form action="activityMessageUpdate" method="post" >
   <input type="text" style="display:none;" name="id" value=<%=act.getActivityId()%>  />
   活动名称<input type="text" name="name" value=<%=act.getActivityHeadLine()%>  />
  最大人数限制<input type="text" name="limit" value=<%=act.getActivityMaxPersons()%>    ><br />
  开始日期<input type="text" name="startDay" value=<%=act.getActivityBeginDate()%>    >
 结束日期<input type="text" name="overDay" value=<%=overDay%>  /><br />
   <input type="submit" name="submit" value="确定" />
   <input type="reset" name="reset" value="重置" />
   </form>
   </center>
  </body>
</html>
