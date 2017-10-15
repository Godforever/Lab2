<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>ZhouXiong Library Management System</title>
<style>
body{background-color: #DDDDDD}
</style>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>
<link href="css/haha.css" rel="stylesheet">
<body>
	<br/>
	<h2 align="center">添加一本图书 </h2>
	<center>
	<br/><br/><br/>
	<s:form action="addonebook">
		<s:textfield name="isbn" style="height:30px ;width:300px" label="ISBN" placeholder="example:978-7-302-20882-2" ></s:textfield>
		<s:textfield name="authorID"  style="height:30px ;width:300px" pattern="[1-9][0-9]{4}" label="AuthorID" placeholder="example:10000" ></s:textfield>
		<s:textfield name="title"  style="height:30px ;width:300px" label="Title" placeholder="example:如何变得更强" ></s:textfield>
		<s:textfield name="publisher"  style="height:30px ;width:300px" label="Publisher" placeholder="example:哈尔滨工业大学出版社" ></s:textfield>
		<s:textfield name="publishdate"  style="height:30px ;width:300px" label="Publishdate" placeholder="example:2017-10-08" ></s:textfield>
		<s:textfield name="price"  style="height:30px ;width:300px" label="Price" placeholder="example:9.99" ></s:textfield>

		<s:submit class="auth primary" onmouseover="this.className='auth primary'" onmouseout="this.className='auth primary'"></s:submit>
	</s:form>
	</center>
	<center>
	<div class="anniu">
					<s:a href="index.jsp" >
							<input type=submit name=Submit value=返回主页 class="auth primary" onmouseover="this.className='auth primary'" onmouseout="this.className='auth primary'"/>		
					</s:a>
			</div>
	</center>
</body>
</html>
