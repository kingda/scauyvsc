<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%@include file="title.jsp" %>
   <link rel="stylesheet" type="text/css" href="styles/downloads.css" />
   <%@include file="header.jsp"%>
   <%@include file="picWall.jsp"%>
    <div id="content">
      <div id="articleList" class="radius_3 topic topic_lightBlue">
        <h2>下载列表</h2>
        <div class="clearfix">
        
        
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
		rs =stmt.executeQuery("select * from upload order by id desc");
		for(int i=0;i<9;i++){
			if(rs.next()){%> 
				
			<ul class="article">
            <li>
              <div class="info">
                <h3 class="nowrap">文件名：<a href=<%=rs.getString("path") %>><%=rs.getString("name") %></a></h3>
                <p class="author"><span>发布人：Administrator </span><span>推荐级别：★★★★☆ </span><span>请点击文件名下载</span></p>
                <div class="calendar">
                  <p class="ht yahei"><%=rs.getString("time").substring(0,7) %></p>
                  <p class="hb"><%=rs.getString("time").substring(8,10)+"日" %></p>
                </div>
              </div>
              <div class="ptm" style="height:20px">
                <p><%=rs.getString("discript")%></p>
              </div>
            </li>
          </ul>
				
			
		<%}
		}  rs.close();
		   conn.close();
	 } catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}%>
        




        </div>
    </div>
  </div>
  <%@include file="footer.jsp"%>   
<script type="text/javascript" src="scripts/global.js"></script>
</body>
</html>