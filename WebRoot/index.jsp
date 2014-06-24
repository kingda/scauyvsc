<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.david.DAO.proxy.ActivityGet" %>
<%@ page import= "com.model.Activity" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="activityGet" class="com.david.DAO.proxy.ActivityGet" scope="session">
</jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%@include file="title.jsp" %>
  <link rel="stylesheet" type="text/css" href="styles/index.css" />
   <%@include file="header.jsp"%>
   <%@include file="picWall.jsp"%>
 
    <div id="content">
    <div class="topics">
    	<div class="topics-1">
      <div class="topics-1-center">
        <div class="topics-1-1">
        <h2 class="topics-1-1-h2">活动发布<em></em><a href="#">更多>></a></h2>
          <ul class="topics-1-1-title">
            <li>
              <a href="#"><img src="images/logo.png" /></a>
              <!-- 这里只能显示特定数量字数的标题 -->
         <%try {
		   Class.forName("com.mysql.jdbc.Driver");
		  } catch (ClassNotFoundException e) {
		   e.printStackTrace();
		  }// Mysql 的驱动
	 try {
		Connection conn =DriverManager.getConnection(
				    "jdbc:mysql://localhost:3306/test", "root","kingda");
		Statement stmt =conn.createStatement();
		ResultSet rs; 
		rs =stmt.executeQuery("select * from activities order by activityId desc");
%> 
		<%if(rs.next()){ 
		String str=rs.getString("activityDec").replaceAll("<[^>]*>", "");
		if(str.length()>29)
			str=str.substring(0,27);
		%>
			<h4><a href=SA.jsp?id=<%=rs.getString("activityId") %>><%=rs.getString("activityHeadLine") %></a></h4>
              <p><%=str%>
              <a href=SA.jsp?id=<%=rs.getString("activityId") %> class="orange">[详细]</a></p>
              <p align="right">发布时间:<%=rs.getString("activityBeginDate")%></p> 
            </li>
          </ul>
          <%} %>
          <ul class="topics-1-1-list">
		  <%for(int i=0;i<6;i++){
        	  if(rs.next()){
        		  %>
         	<!-- 这里只能显示特定数量字数的标题 -->
         	<li><a href=SA.jsp?id=<%=rs.getString("activityId") %>><%=rs.getString("activityHeadLine") %></a></li>		  
        	  <%}
          }
          rs.close();
		   conn.close();
	 } catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}%>
          </ul>
        </div>
     <!-- end topics-1-1 -->
       
        <div class="topics-1-1">
          <h2 class="topics-1-1-h2">友情链接<em></em><a href="http://v.125cn.net/orgindex.action?districtId=4028818811a15abe0111a1a517480004">更多>></a></h2>
          <ul class="topics-1-1-title">
            <li>
              <a href="#"><img src="images/logo.png" /></a>
              <!-- 这里只能显示特定数量字数的标题 -->
              <h4><a href="http://xy.scau.edu.cn/xtw/volunteer/index.asp" >华农校青志中心</a></h4>
              <p>华南农业大学青年志愿者工作始于1994年，2005年4月校团委成立了青年志愿者服务中心<a href="http://blog.163.com/scauvolunteer@126/" class="orange">[详细]</a></p>
            </li>
          </ul>
          <ul class="topics-1-1-list">
          <li><a href="http://blog.sina.com.cn/scaufcv">食品学院服务队</a></li>
          <li><a href="http://blog.163.com/vet_1205/">兽医学院服务队</a></li>
          <li><a href="http://blog.sina.com.cn/u/1839325597">动物科学学院服务队</a></li>
          <li><a href="http://isvolunteer.blog.163.com/">信息学院 软件学院服务队</a></li>
          <li><a href="http://nongxueqingzhi.blog.163.com/">农学院服务队</a></li>
          <li><a href="http://lxyqingzhi.blog.163.com/">林学院服务队</a></li>
          </ul>
        </div>
<!-- end topics-1-1 -->
       </div>
       <!-- end topics-1-center -->
      </div>
<!-- end topics-1 -->


<div class="topics-1">
<div class="topics-1-center">
        <div class="topics-1-1">
          <h2 class="topics-1-1-h2">最新文章<em></em><a href="#">更多>></a></h2>
          <ul class="topics-1-1-title">
            <li>
              <a href="#"><img src="images/logo.png" /></a>
          <!-- 这里只能显示特定数量字数的标题 -->
          <!-- 这里只能显示特定数量字数的标题 -->
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
		rs =stmt.executeQuery("select * from news order by newsId desc");
%> 

		<%if(rs.next()){ 
			String str=rs.getString("passage").replaceAll("<[^>]*>", "");
			if(str.length()>29)
				str=str.substring(0,27);
		%>
			<h4><a href=SN.jsp?id=<%=rs.getString("newsId") %>><%=rs.getString("passageHeadLine") %></a></h4>
              <p><p><%=str%>
              <a href=SN.jsp?id=<%=rs.getString("newsId") %> class="orange">[详细]</a></p>
             <p align="right"> 发布时间：<%=rs.getString("newsAddedTime") %></p>
            </li>
          </ul>
          <%} %>
          <ul class="topics-1-1-list">

		<%for(int i=0;i<6;i++){
        	  if(rs.next()){
        		  %>
         	<!-- 这里只能显示特定数量字数的标题 -->
         	<li><a href=SN.jsp?id=<%=rs.getString("newsId") %>><%=rs.getString("passageHeadLine") %></a></li>		  
        	  <%}
          }
          rs.close();
		   conn.close();
	 } catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}%>
          </ul>
        </div>
     <!-- end topics-1-1 -->
       
        <div class="topics-1-1">
          <h2 class="topics-1-1-h2">志愿者学堂<em></em><a href="#">更多>></a></h2>
          <ul class="topics-1-1-title">
            <li>
              <a href="#"><img src="images/logo.png" /></a>
              <!-- 这里只能显示特定数量字数的标题 -->
              <h4><a href="#" >信软服务队</a></h4>
              <p>12月17日，奥体中心射箭场赛事最后一天。当最后一场男子公开级反弓比赛结束，中国队夺得金牌，奥体射箭场华农学子亚残运会志<a href="#" class="orange">[详细]</a></p>
            </li>
          </ul>
          <ul class="topics-1-1-list">
          <!-- 这里只能显示特定数量字数的标题 -->
          <li><a href="#">2014天使旧衣服回收活动</a></li>
          <li><a href="#">2014广州马拉松挑战赛</a></li>
          <li><a href="#">2013华南农业大学技巧挑战大赛</a></li>
          <li><a href="#">2014广州马拉松挑战赛校团</a></li>
          <li><a href="#">2014广州马拉松挑战赛</a></li>
          <li><a href="#">2014广州马拉松挑战赛</a></li>
          </ul>
        </div>
<!-- end topics-1-1 -->
 </div>
       <!-- end topics-1-center -->
      </div>
<!-- end topics-1 -->
    </div>
    <!-- end topics -->
    </div><!-- end content -->
  </div>
  <!-- end container -->
   
<%@include file="footer.jsp"%>   



<script type="text/javascript" src="scripts/global.js"></script>
</body>
</html>