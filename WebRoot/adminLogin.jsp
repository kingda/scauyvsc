<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
        
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<title>管理员登陆</title>
	<script src="scripts/modernizr.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/basic.css" />
  <link rel="stylesheet" type="text/css" href="styles/register.css" />

  </head>
  
  <body>
    <div class="toolbar">
       <div id="nav">
            <div class="nav-logo">
            <a href="#"></a>
            <p id="logo-text">華南農業大學
            <span class="logo-title"></br>青年志愿者服务中心</span></br>
             <span class="logo-english">Scau Young Volunteer Service Center</span>
             </p>
            </div>
            <div class="return"><a href="index.html">返回主页</a></div>
       </div>

  </div>
  <div id="container">
    <div id="content">
        <div class="box">
          <div id="box-login-first" class="box-login ">
    <form action="adminLoginAction" method="post">
    <ol>
    <center>
    <li><span class="logo-title">后台入口</span></li>
    <li><input type="text" name="username" value="admin" placeholder="Administrator"/></li>
    <li><input type="password" name="password" value="admin" placeholder="Password"/></li>
    <s:if test="#request.errorAdm!=null">
    <% out.print(request.getAttribute("errorAdm")); %>
    </s:if>
    <li class="licenter" ><input class="button" type="submit" value="登陆" /></li>
    </center>
    </ol>
    </form>
          </div>
         </div>
         </div>
         </div>
  </body>
</html>
