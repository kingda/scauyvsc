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
        
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<title>管理员密码更改</title>
	<script src="scripts/modernizr.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/basic.css" />
  <link rel="stylesheet" type="text/css" href="styles/register.css" />

  </head>
  
  <body>
  <div id="container">
    <div id="content">
        <div class="box">
          <div id="box-login-first" class="box-login ">
    <form action="adminChangePasswordAction" method="post">
    <ol>
    <center>
    <li><span class="logo-title">管理员密码更改</span></li>
    <li><input type="text" name="username"  placeholder="管理员账号"/></li>
    <li><input type="password" name="oldpassword" value="" placeholder="原密码"/></li>
    <li><input type="password" name="newpassword1" value="" placeholder="新密码"/></li>
    <li><input type="password" name="newpassword2" value="" placeholder="再次输入新密码"/></li>
            <s:if test="#request.errorAdmCha!=null">
    <% out.print(request.getAttribute("errorAdmCha")); %>
    </s:if>
    <li class="licenter" ><input class="button" type="submit" value="确认" /></li>
    </center>
    </ol>
    </form>
          </div>
         </div>
         </div>
         </div>
  </body>
</html>
