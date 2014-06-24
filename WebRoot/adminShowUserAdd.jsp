<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="#session.admin==null">
    		<meta http-equiv="refresh" content="0.1;url=index.jsp">
    	   </s:if>
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
  </div>
  <div id="container">
    <div id="content">
         <div class="box">
     <div id="box-login-second" class="box-login">
     <form action="registerByAdminAction" method="post">
    <ol>
    <center>
        <li><span class="logo-title">增加用户</span></li></center>
    <li><input type="text" name="userNum" placeholder="学号"/><label for="name">学号</label></li>
    <li><input type="text" name="userName" placeholder="名字"/><label for="name">名字</label></li>
    <li><input type="text" name="password" placeholder="密码"/><label for="name">密码</label></li>
    <div>
    <s:if test="#request.errorReg!=null">
    <%
    out.print(request.getAttribute("errorReg"));
    %>
    </s:if>
   </div>
    <li class="licenter"><input class="button" type="submit" value="确认注册" /></li>
    <li class="licenter"><input class="button" type="reset" value="重置" /></li>
    <!--  <li class="licenter" ><a  href=""><input type="button" class="button" value="批量添加用户"></a></li>-->
    </ol>
    </form>
       </div>
      </div>
         
    </div>
  </div>

<script type="text/javascript" src="scripts/global.js"></script>
</body>
</html>