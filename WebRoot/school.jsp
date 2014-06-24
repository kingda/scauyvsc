<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


  

  <%@include file="title.jsp" %>
 <link rel="stylesheet" type="text/css" href="styles/school.css" />
   <%@include file="header.jsp"%>
 
   <div id="container">
    <div id="pic-wall">
    	<h1> </h1>
      <h2> </h2>
    	<h3>心手相连，快乐志愿</h3>
    </div>
    <div id="content">
    	<div class="row">
<div class="span3 marginTop20">
<a href="video.jsp">
<img class="img-rounded" src="images/huodong2.jpg">
<div class="marginTop10 text-center">志愿服务基础课程</div></a>
</div>

<div class="span3 marginTop20">
<a href="video.jsp">
<img class="img-rounded" src="images/huodong1.jpg">
<div class="marginTop10 text-center">志愿服务基础课程</div></a>
</div>
<div class="span3 marginTop20">
<a href="video.jsp">
<img class="img-rounded" src="images/huodong3.jpg">
<div class="marginTop10 text-center">志愿服务基础课程</div></a>
</div>
<div class="span3 marginTop20">
<a href="video.jsp">
<img class="img-rounded" src="images/huodong4.jpg">
<div class="marginTop10 text-center">志愿服务基础课程</div></a>
</div>
<div class="span3 marginTop20">
<a href="video.jsp">
<img class="img-rounded" src="images/huodong5.jpg">
<div class="marginTop10 text-center">志愿服务基础课程</div></a>
</div>
</div>

    </div>
  </div>
   <%@include file="footer.jsp"%>   



<script type="text/javascript" src="scripts/global.js"></script>
</body>
</html>