<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
request.setCharacterEncoding("UTF-8");
%>
</head>
<body>
  <div id="header">
     	<div id="loginarea">
     	   <div id="login">
    	   <s:if test="#session.userId!=null">
    		 <p id="welcome"><%=session.getAttribute("userId") %>您好，欢迎您来到华农校青志中心！</p>
    		  <p id="welcome">
    		 <form action="userMessageUpdate.jsp" method="post">
    		 <input style="display:none" type="text" name="usernum" value=<%=session.getAttribute("userId") %>>
    		 <input  class="button"type="submit" name="submit" value="修改信息">
    		 </form></p>
    	   </s:if>
    	   <s:else>
    	    <p id="welcome">您好，请登录！</p>
    	    <a href="login.jsp">登陆/注册</a>
    	   </s:else>
     	   <form action="#" method="get">
     	   <input type="search" name="search" placeholder="输入关键字"/>
     	   <input class="button" type="submit" value="查找" />
     	   </form>
     	   </div>
     	</div>

       <div id="nav">
            <div class="nav-logo">
            <a href="#"></a>
            <p id="logo-text">華南農業大學
            <span class="logo-title"></br>青年志愿者服务中心</span></br>
             <span class="logo-english">Scau Young Volunteer Service Center</span>
             </p>
             </div>
       	<ul>
		<li><a href="index.jsp" rel="SCAUVOLUNTEER">主页</a><li>
		<li><a href="activity.jsp" rel="SCAUACTIVITY">活动报名</a><li>
		<li><a href="news.jsp" rel="SCAUNEWS">新闻报道</a><li>
		<li><a href="downloads.jsp" rel="SCAUDOWNLANDS">下载中心</a><li>
		<li><a href="introduce.jsp" rel="SCAUINTRODUCE">青志简介</a><li>
		<li><a href="school.jsp" rel="SCAULEARNING">志愿者学堂</a><li>
		</ul>
       </div>
  </div><!-- end header -->