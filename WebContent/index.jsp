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
    background: url(images/bg.jpg);
}
</style>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<link href="css/haha.css" rel="stylesheet">
<body>
	<center>
	<div class="div2">
		<h1 align="center">Welcome to My Library!</h1>
	</div>
	<br />
	<div class="div1">
	
		<br /> <br /> <br />
		<s:form action="findbook">
			<s:textfield name="name" label="查询书籍" placeholder="作者姓名"
				align="center" />
			<s:submit  class="auth primary"   value="Search" />
		</s:form>

		<br /> <br />
		<s:form action="findauthor">
			<s:textfield name="name" label="查询作者" placeholder="作者姓名" align="center" />
			<center><s:submit  class="auth primary" value="Search" /></center>
		</s:form>
	
			<div class="anniu">
					<a href="allbook" >
						<input type=submit name=Submit value=查看所有信息 class="auth primary" onmouseover="this.className='auth primary'" onmouseout="this.className='auth primary'"/>
					</a>
			</div>

	</div>
		
	</center>
</body>
</html>
