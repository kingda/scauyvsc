<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="com.david.DAO.proxy.*" %>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Activity" %>
<s:if test="#session.admin==null">
    		<meta http-equiv="refresh" content="0.1;url=index.jsp">
    	   </s:if>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
    	<jsp:useBean id="activityGet" class="com.david.DAO.proxy.ActivityGet" scope="session">
  		</jsp:useBean>
  	<%
  	String title="";
  	String ActivitySortId = request.getParameter("activitySortId"); 
 	List<Activity> list = activityGet.getActivity(ActivitySortId); 
  	out.println(list.get(0).getActivityHeadLine());
  	out.println(list.get(0).getActivityDec());
  		%>
    <center>
             
    </center>		
  </body>
</html>
