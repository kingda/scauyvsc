<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<s:if test="#session.admin==null">
    		<meta http-equiv="refresh" content="0.1;url=index.jsp">
    	   </s:if>

<head>
<link rel="stylesheet" href="editor/themes/default/default.css" />
</head>
<body>

<center><h1>文件上传</h1>
	<form action="uploadAct" method="post">
	<input name="name" style="display:none" type="text" id="title" value="" /><br>
	上传文件<input type="text" name="path" id="url" value="" />
	<input type="button" id="insertfile" value="选择文件" /><br>
	文件描述<input type="text" name="discript" value="" />
	
	<input type="submit" name="submit" value="确定上传"></center>
	</form>
<script charset="utf-8" src="editor/kindeditor-min.js"></script>
<script charset="utf-8" src="editor/lang/zh_CN.js"></script>
<script type="text/javascript">
function getUrl(){
	var url =window.document.location.href;
	var pathname =window.document.location.pathname;
	var pos = url.indexOf(pathname);
	var localname = url.substring(0,pos);
	return localname;
	
}
//window.onload=getUrl;
KindEditor.ready(function(K) {
	var editor = K.editor({
		uploadJson : 'upload_json.jsp',
		allowFileManager : true
	});
	K('#insertfile').click(function() {
		editor.loadPlugin('insertfile', function() {
			editor.plugin.fileDialog({
				fileUrl : K('#url').val(),
				clickFn : function(url, title) {
					K('#url').val(getUrl()+url);
					K('#title').val(title);
					editor.hideDialog();
				}
			});
		});
	});
});
</script>




</body>