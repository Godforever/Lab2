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
	<center>
	<br><br>
	<div class="div2">
		<h1 align="center">Welcome to My Library!</h1>
	</div>
	<br><br>
	<div class="anniu">
			<a href="index.jsp" >
				<input type=submit name=Submit value=返回主页 class="book delupd" onmouseover="this.className='book delupd'" onmouseout="this.className='book delupd'"/>		
			</a>
	</div>
</center>
	<center>
		<br/><br/>
		<table >
		<s:iterator value="lista" var="c">
				<tr>
				<td>
				<div class="anniu"align="center">
							<a href="detail?title=<s:property value="#c.title" escape='false'/>" >
								<input type=submit name=Submit value=<s:property value="#c.title" /> class="book primary" onmouseover="this.className='book primary'" onmouseout="this.className='book primary'"/>		
							</a>
				</div>
				<br/>
				</td>
				</tr>
		</s:iterator>
		</table>
	</center>
</body>

</html>

