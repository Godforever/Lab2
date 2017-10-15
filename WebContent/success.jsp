<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

  </head>
  <link href="css/haha.css" rel="stylesheet">
  <body>
  	<center>
               <div class="anniu">
					<a href="index.jsp" >
					<input type=submit name=Submit value=操作成功!点击返回初始界面 class="auth primary" onmouseover="this.className='auth primary'" onmouseout="this.className='auth primary'"/>
					</a>
			</div>
	</center>
  </body>
  
</html>
