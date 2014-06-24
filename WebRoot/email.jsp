<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
  <%@include file="title.jsp" %>
  <link rel="stylesheet" type="text/css" href="styles/email.css" />
   <%@include file="header.jsp"%>

     <div class="email_content">
       <h2>留言
    <s:if test="#request.mailmail!=null">
    <% out.print(request.getAttribute("mailmail")); %>
    </s:if>
       </h2>
       <form action="mailAction" method="post">
       <div class="email_item">
            <p class="email_item_notes">您的邮箱将不会公开哦~</p>
            <p class="email_item_input">
              <label >请输入标题</label>
              <label class="red">*</label>
              <br />
              <input name="name" type="text" size="30" />
            </p>
            
            <p class="email_item_input">
              <label>请输入您的电子邮箱</label>
              <label class="red">*</label>
              <br />
              <input type="email" name="mail" size="30"/>
            </p>
            
           </div> <!-- end the email_item -->
    <div class="email_item">
            <p class="email_item_input">
              <label >您要说的话（我们会很快发送反馈信到您的邮箱）</label>
              <br />
              <textarea name="words"></textarea> 
            </p>
            
            <p class="email_item_input">
              <input class="submit" type="submit" value="提交评论"  />
            </p>
           </div> <!-- end the email_item -->
        </form>
    </div>
    <!-- end the email-content -->
   
<%@include file="footer.jsp"%>   


<script type="text/javascript" src="scripts/global.js"></script>
</body>
</html>