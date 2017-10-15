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
	body {
	    background: url(images/others.jpg);
	}
	</style>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<link href="css/haha.css" rel="stylesheet">
<body>
	<%
		String isbn = request.getParameter("isbn");
	%>
	<br />
	<h2 align="center">更新图书 </h2>
	<center>
	<br/><br/><br/><br/>
	<s:form action="updateone?isbn=<%=isbn %>">
		<s:textfield name="name" label="name" ></s:textfield>
		<s:textfield name="authorID" label="AuthorID"></s:textfield>
		<s:textfield name="title" label="Title"></s:textfield>
		<s:textfield name="publisher" label="Publisher" ></s:textfield>
		<s:textfield name="publishdate" label="Publishdate"></s:textfield>
		<s:textfield name="price" label="Price" ></s:textfield>
		<s:submit></s:submit>
	</s:form>
	
	<div class="anniu">
					<a href="index.jsp" >
						<input type=submit name=Submit value=返回主页 class="auth primary" onmouseover="this.className='auth primary'" onmouseout="this.className='auth primary'"/>			
					</a>
			</div>
	</center>
</body>
</html>
