<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<title>华南农业大学青年志愿者服务中心</title>
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
            <div class="return"><a href="index.jsp">返回主页</a></div>
       </div>

  </div>
  <div id="container">
    <div id="content">
         <div class="box">
     <div id="box-login-second" class="box-login">
     <form action="registerAction" method="post">
    <ol>
    <li><input type="text" name="userNum" placeholder="您的学号"/><label for="name">学号</label></li>
    <li><input type="text" name="userName" placeholder="您的名字"/><label for="name">名字</label></li>
    <li><input type="password" name="password" placeholder="您的密码"/><label for="name">密码</label></li>
    <div>
    <s:if test="#request.errorReg!=null">
    <%
    out.print(request.getAttribute("errorReg"));
    %>
    </s:if>
   </div>
    <li class="licenter"><input class="button" type="submit" value="确认注册" /></li>
    <li class="licenter"><input class="button" type="reset" value="重置" /></li>
    <li class="licenter" >
    <input type="button" onclick="window.location.href='login.jsp'" class="button" value="返回">
    </li>
    </ol>
    </form>
       </div>
      </div>
         
    </div>
  </div>
   <%@include file="footer.jsp"%>   

<script type="text/javascript" src="scripts/global.js"></script>
</body>
</html>