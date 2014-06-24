<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.model.*" %>
<%@ page import="com.dao.*" %>
<%@ page import="com.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<link rel="stylesheet" type="text/css" href="styles/userMessage.css">
  </head>
  
  <body>
  <div class="content">
  <%String usernum=request.getParameter("usernum"); %>
  <jsp:useBean id="userDao" class="com.dao.UserDao" scope="session"></jsp:useBean>
  <%User user=userDao.getByUserNum(usernum); %>
   <form action="userMessageUpdateAction" method="post" >
   <input type="text" readOnly="true" name="usernum" value=<%=user.getUserNum()%>  /><label>学号</label>
  <input type="text" name="userName" value=<%=user.getUserName()%>    /><label>名字</label>
   <input type="text" name="userPassword" value=<%=user.getUserPassword()%>    ><label>密码</label>
   <input type="text" name="userMail" value=<%=user.getUserMail()%>  /><label>邮箱</label>
   <input type="text" name="userQuestion" value=<%=user.getUserQuestion()%>  /><label>问题</label>
   <input type="text" name="userSex" value=<%=user.getUserSex()%>  /><label>性别</label>
  <input type="text" name="userHeight" value=<%=user.getUserHeight()%>  /><label>身高</label>
   <input type="text" name="userGrade" value=<%=user.getUserGrade()%>  /><label>年级</label>
  <input type="text" name="userMajor" value=<%=user.getUserMajor()%>  /><label>专业</label>
   <input type="text" name="userPoliticsSta" value=<%=user.getUserPoliticsSta()%>  /><label>政治面貌</label>
   <input type="text" name="userPhoneNumber" value=<%=user.getUserPhoneNumber()%>  /><label>长号</label>
   <input type="text" name="userShortNumber" value=<%=user.getUserShortNumber()%>  /><label>短号</label>
  <input type="text" name="userDormitoryArea" value=<%=user.getUserDormitoryArea()%>  /><label>宿舍区</label>
   <textarea placeholder="简介" name="userDeclaration"  ><%=user.getUserDeclaration()%></textarea>
   <input type="submit" name="submit" value="确定" />
   <input type="reset" name="reset" value="重置" />
   </form>
   </div>
     <s:if test="#request.errorChaUse!=null">
    <% out.print(request.getAttribute("errorChaUse")); %>
    </s:if>
  </body>
</html>
