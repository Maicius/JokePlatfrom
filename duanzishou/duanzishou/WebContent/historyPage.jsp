<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>段子-轻松一刻</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.poptrox.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <style type = "text/css">
		select{width:160px;}
		</style>
	</head>
	<body id="top">
		<!-- Header -->
	<header id="header"> 
		<a href="PersonalServlet?flg=headImg" id="headImg"class="image avatar"><img src="${sessionScope.headImg}" alt="" /></a>
		<h1 align="right">
			用户名：<a href="PersonalServlet?flg=history&id=${sessionScope.userName}" id="history"><strong>${sessionScope.userName}</strong></a> <br /> 
			积分:&nbsp;&nbsp;<a href="PersonalServlet?flg=creditMsg&id=${sessionScope.userID}" id="creditMsg"><strong>${sessionScope.credit}</strong></a>
		</h1>
	</header>
		<img src="images/myduanzi.jpg" height = 300px style="margin-left: 25%;width: calc(100% - 25%);">
		<!-- Main -->
		
			<div id="main">
                    <!-- Three --><!-- Four -->		
					<section id="four">
						<c:forEach items="${history}" var="joke">
						<section>
						  <h5></h5>					  
							<p>${joke.content}<br><span class="image "><img src="${joke.imagePath}" alt="" /></span></p>
							<hr width=100%>
							
						</section>
					</c:forEach>
			  </section>
			  
	</div>
	
</body>
</html>