<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Your information</title>
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
			<img src="images/credit.jpg" height = 300px style="margin-left: 25%;width: calc(100% - 25%);">
		<!-- Main -->
			<div id="main">
                    <!-- Three --><!-- Four -->		
					<H1>1.请尽量发送有趣的段子哦，我们将在后台对优秀的段子奖励积分</H1>
					<H1>2.请不要发送垃圾信息，不然我们会扣除您的积分哦</H1>
					<H1>3.当您的积分小于等于0时，您必须得充值才能继续使用本网站</H1>
			  
	</div>
</body>
</html>