<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


  

  <%@include file="title.jsp" %>
 <link rel="stylesheet" type="text/css" href="styles/introduce.css" />
   <%@include file="header.jsp"%>
   <div id="container">
   
    <div id="introduce-content">
      <div class="author" style="background-image: url(images/kingda.png)">
        <div class="author-english"><span>User Experience Design</span><i id="bg-1" class="bg"></i></div>
         <div class="author-name"><span id="author-name-1">主任：杨剑达</span></div>
      </div>
       <div class="author" style="background-image: url(images/juntao.png)">
        <div class="author-english"><span>Teacher Xiong</span><i id="bg-2" class="bg"></i></div>
         <div class="author-name"><span id="author-name-2">导师：熊俊涛</span></div>
      </div>
      <div class="author" style="background-image: url(images/david.png)">
        <div class="author-english"><span>Back End Design</span><i id="bg-3" class="bg"></i></div>
         <div class="author-name"><span id="author-name-3" >信息部部长：杨畅达</span></div>
      </div>
<div class="author" style="background-image: url(images/peng.png)">
        <div class="author-english"><span>Administator</span><i id="bg-4" class="bg"></i></div>
         <div class="author-name"><span id="author-name-4" >后台管理员：庄祥鹏</span></div>
      </div>
      <div class="author" style="background-image: url(images/huiju.png)">
        <div class="author-english"><span>Design King</span><i  id="bg-5" class="bg"></i></div>
         <div class="author-name"><span id="author-name-5" >策划总监：巴怀桔</span></div>
      </div>
      <div class="author" style="background-image: url(images/peixin.png)">
        <div class="author-english"><span>Word Design</span><i id="bg-6" class="bg"></i></div>
         <div class="author-name"><span id="author-name-6" >文字编辑：黄培鑫</span></div>
      </div>
     


    </div>
    <!-- end the introduce-content -->
   <%@include file="footer.jsp"%>   



<script type="text/javascript" src="scripts/introdece.js"></script>
</body>
</html>