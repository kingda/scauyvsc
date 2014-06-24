<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<s:if test="#session.admin==null">
    		<meta http-equiv="refresh" content="0.1;url=index.jsp">
    	   </s:if>
<!DOCTYPE html>
<html>
<head>
	<title>新闻编辑窗口</title>
	<meta charset=utf-8 />
	<link rel="stylesheet" type="text/css" href="styles/editor.css">

</head>
<body>
<div class="container">
   <h2 class="title">编辑新闻</h2>
   <form name="example" method="post" action="NewsAction">
   <label>标题：</label><input type="text" class="text" name="passageHeadLine"/>
   <textarea class="textarea" id="editor_id"  name="passage"></textarea>
   <div class="sort">
   	<span class="left">
   	分类：<select>
   	<option value="0">活动</option>
   		<option value="1" >校外报道</option>
   			<option value="2">校内报道</option>
   				<option value="3">组织报道</option>
   	</select>
   	</span><span class="right"><a href="#">附件</a></span>
   </div> <!-- the end sort -->
   <div class="submit">
   	<span class="left">
   		<input type="submit" class="submit_button" value="发表"></input>
   		<input type="button" value="取消"></input>
   	</span>
   	<span class="right">
   		<input type="button" value="预览"></input>
   	</span>
   </div><!-- the end submit -->
   </form><!-- the end form -->
</div><!-- the end container -->

<script charset="utf-8" src="editor/kindeditor.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script>
        KindEditor.ready(function(K) {
                window.editor =  K.create('#editor_id', {
					allowFileManager : true,
					uploadJson : 'upload_json.jsp',
					fileManagerJson : 'file_manager_json.jsp',
					cssPath : 'styles/editor.css',
					urlType :'domain', 
					width:'960px'
				});
				});
</script>
</body>
</html>
