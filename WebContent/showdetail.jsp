<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ZhouXiong Library Management System</title>
<style>
    body{background-color: #DDDDDD}
	img{     
	  position:absolute;   <! 绝对位移>
	  left:10000px;
  }  <! 图像的属性，包括位置，x,y方向的坐标 >
</style>
</head>
<link href="css/book.css" rel="stylesheet">
<link href="css/haha.css" rel="stylesheet">

<body>
<center>
<br><br>
	<div class="anniu">
			<a href="index.jsp" >
				<input type=submit name=Submit value=返回主页 class="book delupd" onmouseover="this.className='book delupd'" onmouseout="this.className='book delupd'"/>		
			</a>
	</div>
</center>
		<s:iterator value="lista" var="c">
				<div class="auth_content">
						<div class="auth_left">
						<img src="images/ss.jpg" width="450" height="650"/>
						</div>
				<div class="auth_right">
				<div class="book_info">	
            			<div class="cell">
                			<div class="subheader">Book Info:</div>
                				<h1><s:property value="#c.title" /></h1>
                                <h2>ISBN: <s:property value="#c.isbn" /></h2>
		     					<h2>Publisher:<s:property value="#c.publisher" /></h2>
								<h2>PublishDate:<s:property value="#c.publishdate" /></h2>
								<h2>Price:¥<s:property value="#c.price" /></h2>
								<div class="anniu">
									<a href="deleteone?isbn=<s:property value="#c.isbn"/>">
										<input type=submit name=Submit value=delete class="book delupd" onmouseover="this.className=book delupd'" onmouseout="this.className='book delupd'"/>
									</a>
								</div>
            			</div>
            			
            			<div class="cell design_info">
                			<div class="subheader">Author Info:</div>
                			     <h2>Name: <s:property value="#c.name" /></h2>    
                			     <h2>Age: <s:property value="#c.age" /></h2>
                			     <h2>AuthorID: <s:property value="#c.authorID" /></h2>           			                
                			     <h2>Country: <s:property value="#c.country" /></h2>   
                			     <div class="anniu">
										<a  href="update.jsp?isbn=<s:property value="#c.isbn"/>">
											<input type=submit name=Submit value=update class="book delupd" onmouseover="this.className='book delupd" onmouseout="this.className='book delupd'"/>
										</a>
										</div>     
            			</div>        
        		</div>
        		</div>
        		</div>
        		<br/><br/><br/><br/><br/><br/><br/><br/>
        </s:iterator>
</body>
</html>