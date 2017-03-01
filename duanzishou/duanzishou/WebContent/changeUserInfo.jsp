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
		<script type="text/javascript">
		$(function() {
			$("#ensure").click(function() {
				if($("#passwd").val()=="") {
					$('#userCue').html("<font color='red'><b>密码不能为空</b></font>");
					return false;
				}
				if($("#passwd2").val()=="") {
					$('#userCue').html("<font color='red'><b>请再次确认密码</b></font>");
					return false;
				}
				if($("#passwd").val().length < 6) {
					$('#userCue').html("<font color='red'><b>密码不能少于6位</b></font>");
					return false;
				}
				if($("#passwd").val() != $("#passwd2").val() ) {
					$('#userCue').html("<font color='red'><b>密码不一致，请重新输入</b></font>");
					$("#passwd").val("");
					$("#passwd2").val("");
					return false;
				}
				
				$("#frm").attr("action","changeServlet?flg=changepsw");
				$("#frm").submit();
			});
		});
		
		</script>
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
	<img src="images/banner1.png" width=100% height = 150px>
		<!-- Header -->
	<header id="header"> 
		<a href="PersonalServlet?flg=headImg" id="headImg"class="image avatar"><img src="${sessionScope.headImg}" alt="" /></a>
		<h1 align="right">
			用户名：<strong>${sessionScope.userName}</strong> <br /> 积分:&nbsp;&nbsp;<a
				href="PersonalServlet?flg=creditMsg&id=${sessionScope.userID}" id="creditMsg"><strong>${sessionScope.credit}</strong></a>
		</h1>
	</header>

		<!-- Main -->
			<div id="main">
			<div class="cue">修改密码</div><br>
			<div id="userCue" class="cue"></div><br>
			<form action="changeServlet?flg=changepsw" method="post" id="frm">
                <label>新密码：</label>
                        <input type="password" id="passwd"  name="passwd" style="width:200px;background-color:#98F5FF"/>
                <label>确认密码：</label>
                        <input type="password" id="passwd2" name="passwd2" style="width:200px;background-color:#98F5FF"/>
                        <br>
				<input type ="button" id ="ensure" name="ensure" value = "确认" style="width:100px;background-color:#00FFFF">	                 
               </form>
	</div>
</body>
</html>