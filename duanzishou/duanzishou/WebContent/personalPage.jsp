<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人主页</title>
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
<style type="text/css">
select {
	width: 160px;
}
</style>
</head>
<body id="top">
	<!-- Header -->
<img src="images/banner1.png" width=100% height = 150px>
	<header id="header"> 
		<a href="PersonalServlet?flg=headImg" id="headImg"class="image avatar"><img src="${sessionScope.headImg}" alt="" /></a>
		<h1 align="right">
			用户名：<a href="PersonalServlet?flg=history&id=${sessionScope.userName}" id="history"><strong>${sessionScope.userName}</strong></a> <br /> 
			积分:&nbsp;&nbsp;<a href="PersonalServlet?flg=creditMsg&id=${sessionScope.userID}" id="creditMsg"><strong>${sessionScope.credit}</strong></a>
		</h1>
	</header>


	<!-- Main -->
	<div id="main">

		<!-- One -->
		<section id="one"> <header class="major">
		<h3>
			一只猫掉进河里，另外一只猫把它救了起来<br>请问猫上岸后第一句话是什么?<br>--喵~~
		</h3>
		</header>
		<form action="<%=request.getContextPath()%>/PersonalServlet?flg=submit" method="post" enctype="multipart/form-data">
			<textarea id = "tips" name="text" type="textarea" class="box" cols="30" rows="6">有什么倒霉的事情说出来让我们高兴一下吧！</textarea>
			
			<script type="text/javascript">
    		var tips = document.getElementById('tips');
    		tips.onfocus = function(){
        		if(this.innerHTML == '有什么倒霉的事情说出来让我们高兴一下吧！'){this.value = ''}
    		};
      
    		tips.onblur = function(){
        		if(this.value == ''){
            		this.innerHTML = '有什么倒霉的事情说出来让我们高兴一下吧！'   
        		}   
    		};</script>
    		<label>给你的段子选择一个分类吧</label>
			<div style="float: left; width: 200px">
				<select name="log">
					<option value="life">生活</option>
					<option value="school">校园</option>
					<option value="sundry">杂闻</option>
					<option value="others">其他</option>
					</select>
			</div>

			<div style="float: left; width: 200px">
				<input type="submit" name="push" value="发送"
					style="background: #00EEEE">
			</div>
			<div
				style="background-image: url(images/choose.png); float: left; background-repeat: no-repeat; width: 150px; height: 30; padding-bottom: 50px">
				<input type="file" name="fileToUpload" id="fileToUpload"
					onchange="fileSelected();"
					style="opacity: 0; filter: alpha(opacity = 0); width: 150px; height: 30;" />
			</div><br>

		</form>
		</section>

		<!-- Two -->
		<section id="two">
		<h2>点击你喜欢的分类哟</h2>
		<div class="row">
			<article class="6u 12u$(3)"> <a
				href="images/fulls/01.jpg" class="image fit thumb"><img
				src="images/thumbs/01.jpg" alt="" /></a>
			<h3><a href="PersonalServlet?flg=relaxA">轻松一刻</a></h3>
			<p>人生就像打电话，不是你先挂就是我先挂.</p>
			</article>
			<article class="6u$ 12u$(3) "> <a
				href="images/fulls/02.jpg" class="image fit thumb"><img
				src="images/thumbs/02.jpg" alt="" /></a>
			<h3><a href="PersonalServlet?flg=relaxB">每日一笑</a></h3>
			<p>「平时你都用什么手段避孕」「我的外貌」</p>
			</article>
			<article class="6u 12u$(3) "> <a
				href="images/fulls/03.jpg" class="image fit thumb"><img
				src="images/thumbs/03.jpg" alt="" /></a>
			<h3><a href="PersonalServlet?flg=relaxC">生活</a></h3>
			<p>不要看见别人长的胖了点就叫人家－－粗人</p>
			</article>
			<article class="6u$ 12u$(3) "> <a
				href="images/fulls/04.jpg" class="image fit thumb"><img
				src="images/thumbs/04.jpg" alt="" /></a>
			<h3><a href="PersonalServlet?flg=relaxD">校园</a></h3>
			<p>祝那些复习得很好还想着挂科的孩子心想事成！</p>
			</article>
			<article class="6u 12u$(3) "> <a
				href="images/fulls/05.jpg" class="image fit thumb"><img
				src="images/thumbs/05.jpg" alt="" /></a>
			<h3><a href="PersonalServlet?flg=relaxE">杂闻</a></h3>
			<p>室友今天问我：每次遇到乞丐，他们都向我抖一下碗里的钱。。。难道这是炫耀吗？</p>
			</article>
			<article class="6u$ 12u$(3) "> <a
				href="images/fulls/06.jpg" class="image fit thumb"><img
				src="images/thumbs/06.jpg" alt="" /></a>
			<h3><a href="PersonalServlet?flg=relaxF">其它</a></h3>
			<p>同学A：“这首词是辛弃疾写的……” 同学B：“我怎么知道，星期天吧。”.</p>
			</article>
		</div>
		<ul class="actions">
			<li><a href="#" class="button">返回顶部</a></li>
		</ul>
		</section>



		<!-- Footer -->
		<footer id="footer">
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
			<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
			<li><a href="#" class="icon fa-envelope-o"><span
					class="label">Email</span></a></li>
		</footer>
</body>
</html>