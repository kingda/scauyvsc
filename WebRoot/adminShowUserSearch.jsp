<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<title>搜索</title>
	<script src="scripts/modernizr.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/basic.css" />
  <link rel="stylesheet" type="text/css" href="styles/register.css" />

  </head>
  
  <body>
  <div id="container">
    <div id="content">
        <div class="box">
          <div id="box-login-first" class="box-login ">
    <form action="adminShowUserSingle.jsp" method="post">
    <ol>
    <center>
    <li><span class="logo-title">单个查询</span></li>
    <li><input type="text" name="usernum"  placeholder="学生学号"/></li>
    <li class="licenter" ><input class="button" type="submit" value="查询" /></li>
    </center>
    </ol>
    </form>
    
    <form action="adminShowUser.jsp" method="post">
    <center>
     <li><span class="logo-title">批量查询</span></li>
    	 开始页数<input type="text" name="start" size="2" value="1"/>
    	 每页行数<input type="text" name="over" size="2" value="10"/>
    	<li class="licenter" ><input class="button" type="submit" name="submit" value="查询" />
    	</li>
    	</center>
    	</form> 
    
          </div>
         </div>
         </div>
         </div>
  </body>
</html>
