<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.util.*" %>
<%@ page import="com.model.*" %>
<%@ page import="java.util.List" %>
<%@ page import= "com.david.DAO.proxy.ActivityGet" %>
<%@ page import= "com.model.Activity" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<s:if test="#session.userId==null">
    		<meta http-equiv="refresh" content="0.1;url=index.jsp">
    	   </s:if>
<body>
<jsp:useBean id="activityDao" class="com.dao.ActivityDao" scope="session">
  		</jsp:useBean>
  		<%QueryResult qr1 = activityDao.findAll(0, 6);
  		int count=qr1.getCount();
  		%>	
  	<%QueryResult qr = activityDao.findAll(count-7, count);%>	
  <%@include file="title.jsp" %>
    <link rel="stylesheet" type="text/css" href="styles/activity.css" />
   <%@include file="header.jsp"%>
   <div id="container">
    <div id="activity_content">
     <div class="left_slideshow">
       <div id="slidemain" class="slidemain">
         <ul id="slidepicture" class="slidepicture">
           <li class="slideitem"><a href="#"><img src="images/huodong1.jpg" />
           <span class="slideitem_text">志愿服务活动，我为你喝彩</span><i class="bg"></i></a></li>
           <li class="slideitem"><a href="#"><img src="images/huodong2.jpg" />
           <span class="slideitem_text">志愿服务活动，我为你喝彩</span><i class="bg"></i></a></li>
          <li class="slideitem" ><a href="#"><img src="images/huodong3.jpg" />
          <span class="slideitem_text">志愿服务活动，我为你喝彩</span><i class="bg"></i></a></li>
           <li class="slideitem"><a href="#"><img src="images/huodong4.jpg" />
           <span class="slideitem_text">志愿服务活动，我为你喝彩</span><i class="bg"></i></a></li>
           <li class="slideitem"><a href="#"><img src="images/huodong5.jpg" />
           <span class="slideitem_text">志愿服务活动，我为你喝彩</span><i class="bg"></i></a></li>
         </ul>
       </div><!-- end the slidemain -->
       <ul id="slidethumbs" class="slidethumbs">
         <li class ><img src="images/huodong1.jpg" /><i></i></li>
         <li class ><img src="images/huodong2.jpg" /><i></i></li>
         <li class ><img src="images/huodong3.jpg" /><i></i></li>
         <li class ><img src="images/huodong4.jpg" /><i></i></li>
         <li class ><img src="images/huodong5.jpg" /><i></i></li>
       </ul>
       <a  id="prev-btn" class="prev-btn" style="left:0px;opacity:0.5;"></a>
       <a  id="next-btn" class="next-btn" style="right:0px;opacity:0.5;"></a>
     </div> <!-- end the left_slideshow -->

    <div class="news_list">
        <h2>最新活动讯息</h2>
        <ul>
           <%try {
		   Class.forName("com.mysql.jdbc.Driver");
		  } catch (ClassNotFoundException e) {
		   e.printStackTrace();
		  }// Mysql 的驱动
	 try {
		Connection conn =DriverManager.getConnection(
				    "jdbc:mysql://localhost:3306/test", "root","19931011");
		Statement stmt =conn.createStatement();
		ResultSet rs; 
		rs =stmt.executeQuery("select * from activities order by activityId desc");
%> 
          <% for(int i=0;i<2;i++){
        	  if(rs.next()){
        	  String str=rs.getString("activityDec").replaceAll("<[^>]*>", "");
      		if(str.length()>88)
      			str=str.substring(0,87);
          %>
        	  <li class="hottest">
            <h3><a href=SA.jsp?id=<%=rs.getString("activityId") %>><%=rs.getString("activityHeadLine") %></a></h3>
            <p><%=str %>
            <a href=SA.jsp?id=<%=rs.getString("activityId") %> class="orange">[详细]</a></p>
          </li>
           <%}
          }
          rs.close();
		   conn.close();
	 } catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}%>
        </ul>
        <div class="center">
        <ul class="hot">
        <li><a href="#">周排名</a></li>
        <li><a href="#">月排名</a></li>
        <li><a href="#">年排名</a></li>
        <li><a href="#">评论最多</a></li>
        <li><a href="#">最多阅读</a></li>
        <li><a href="#">读者喜欢</a></li>
        </ul>
        </div>
    </div>
    <!-- end the news_list -->
  </div>

    <!-- end the activity_content -->
<div class="submit">
  <div class="message"><h2>请选择您要报名的活动：</h2></div>
  
   <form action = "applicationAction" method="post">
    <div class="head-btn">
     <s:if test="#request.userId!=null">
     <% String userId = (String)request.getAttribute("userId"); %>
     <input type="text" style="display:none;" name = "userId" value=<%=userId %> />
     </s:if>
  活动报名:<select class="slelect" name = "activity">
  <%
  for(Activity activity:(List<Activity>) qr.getList()){ %>
        <option value=<%=activity.getActivityHeadLine() %> >
      <%=activity.getActivityHeadLine() %>
        </option>
         
        <%} %>
      </select>
      </div>
      <div class="head-btn">
      所在年级:<select class="slelect" name = "grade">
        <option value="2013级">2013级</option>
        <option value="2014级">2014级</option>
        <option value="2015级">2015级</option>
        <option value="2016级">2016级</option>
        <option value="2017级">2017级</option>
      </select>
      </div>
    <div class="span3">志愿部门:<input type="text" name="part" /></div>
    <div class="span3">手机号码:<input type="text" name="phoneNo" /></div>
    <div class="span3">所在学院:<input type="text" name="academy" /></div>
    <div class="span3"><input class="submit-btn" type="submit" name="part" value="submit" /></div>
    <div class="span3"><input class="submit-btn" type="reset" name="part" value="reset" /></div>
	
	
   </form>

</div>
  
   <%@include file="footer.jsp"%>   



<script type="text/javascript" src="scripts/global.js"></script>
</body>
</html>