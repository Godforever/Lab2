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
<style>
body{background-color: #DDDDDD}

</style>
<title>ZhouXiong Library Management System</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<link href="css/haha.css" rel="stylesheet">

<body>
	<br/>
	<h2 align="center">您需要在数据库中添加新作者</h2>
	<center>
	<br/><br/><br/>
	<s:form action="addoneauthor">
		<s:textfield name="authorID"  style="height:30px ;width:300px" label="AuthorID" placeholder="example:978-7-302-20882-2" pattern="[1-9][0-9]{4}" title="xxxxx" required="true"></s:textfield>
		<s:textfield name="name"  style="height:30px ;width:300px"  label="Name" placeholder="example:周雄"  title="姓名" required="true" ></s:textfield>
		<s:textfield name="age"   style="height:30px ;width:300px" label="Age" placeholder="example:20" pattern="[1]?[0-9]{2}" title="年龄" required="true" ></s:textfield>
		<s:textfield name="country"  style="height:30px ;width:300px"  label="Country" placeholder="example:中国"  title="国家" required="true" ></s:textfield>
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
