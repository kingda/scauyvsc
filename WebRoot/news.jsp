<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <link rel="stylesheet" type="text/css" href="styles/introduce.css" />
  <%@include file="title.jsp" %>
  <link rel="stylesheet" type="text/css" href="styles/news.css" />
   <%@include file="header.jsp"%>
   <%@include file="picWall.jsp"%>
   <div id="content">
    <div id="news-content">
       <div id="left">
         <div id="news"><h2>校外报道</h2></div>
         <ul id="leftcontent">
            <li><a href="#"><img src="images/news1.jpg"/></a> </li> 
            <li><p>主题:<span><a href="#">义教</a></span> </p>
           <p>内容:<span><a href="#">三下乡活动</a></span></p></li>
         </ul>
          <ul id="leftcontent">
            <li><a href="#"><img src="images/news2.jpg"/></a> </li> 
            <li><p>主题:<span><a href="#">社区</a></span> 
           <p> 内容：<span><a href="#">三下乡活动</a></span></p></li>
         </ul>
          <ul id="leftcontent">
            <li><a href="#"><img src="images/news3.jpg"/></a> </li> 
            <li><p>主题:<span><a href="#">体育赛事</a></span> </p>
           <p> 内容：<span><a href="#">三下乡活动</a></span></p></li>
         </ul>
          <ul id="leftcontent">
            <li><a href="#"><img src="images/news4.jpg"/></a> </li> 
             <li><p>主题:<span><a href="#">摆摊</a> </span> </p>
           <p> 内容：<span><a href="#">三下乡活动</a></span></p></li>
         </ul>
          <ul id="leftcontent">
            <li><a href="#"><img src="images/news5.jpg"/> </a></li> 
             <li><p>主题:<span><a href="#">文化活动</a></span> </p>
           <p> 内容：<span><a href="#">三下乡活动</a></span></p></li>
         </ul>
      </div>
    <div id="center">
        <div id="news"><h2>校内报道</h2></div>
        <div class="center-center">

        <div class="ver-center">
        <div class="center-p"><p class="title">华农学子破解恐怖袭击</p><p class="text">华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击<span class="orange"><a href="#">[详细]</a></span></p>
        </div>
         <div class="center-p"><p class="title">华农学子破解恐怖袭击</p><p class="text">华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击<span class="orange"><a href="#">[详细]</a></span></p>
        </div>
        <div class="center-p"><p class="title">华农学子破解恐怖袭击</p><p class="text">华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击<span class="orange"><a href="#">[详细]</a></span></p>
        </div>
      </div>
      <!-- end the ver-center -->
      </div>
      <!-- end the center-center -->
    </div>
    <!-- end the center --> <div id="center">
        <div id="news"><h2>组织报道</h2></div>
        <div class="center-center">

        <div class="ver-center">
        <div class="center-p"><p class="title">华农学子破解恐怖袭击</p><p class="text">华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击<span class="orange"><a href="#">[详细]</a></span></p>
        </div>
         <div class="center-p"><p class="title">华农学子破解恐怖袭击</p><p class="text">华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击<span class="orange"><a href="#">[详细]</a></span></p>
        </div>
        <div class="center-p"><p class="title">华农学子破解恐怖袭击</p><p class="text">华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击华农学子破解恐怖袭击<span class="orange"><a href="#">[详细]</a></span></p>
        </div>
      </div>
      <!-- end the ver-center -->
      </div>
      <!-- end the center-center -->
    </div>
        <div style="width: 100%; clear: both; line-height: 0px; height: 0px;"></div>

</div>
<!-- end the news-content -->
 </div>
    <!-- end the content -->
  </div>
   <%@include file="footer.jsp"%>   



<script type="text/javascript" src="scripts/global.js"></script>
</body>
</html>