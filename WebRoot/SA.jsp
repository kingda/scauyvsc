<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.model.*" %>
<%@ page import="com.dao.*" %>
<%@ page import="com.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%@include file="title.jsp" %>
 <link rel="stylesheet" type="text/css" href="styles/EachArticle.css" />
   <%@include file="header.jsp"%>
  <jsp:useBean id="activityDao" class="com.dao.ActivityDao" scope="session">
  		</jsp:useBean>
  	<div class="content">
  <%
    int id=Integer.parseInt(request.getParameter("id")); 
  	Activity act=activityDao.getByArtId(id);
  	out.print("<center><h1>"+act.getActivityHeadLine()+"</h1></center>");
  	out.print(act.getActivityDec());
  %>
    </div>
    <%@include file="footer.jsp"%>
  </body>
</html>
