<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="images/login.js"></script>
<link href="css/login2.css" rel="stylesheet" type="text/css" />
<title>注册结果</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.12.4.min.js"></script>
</head>
<body>
	<center>
		<h1>
			${requestScope.registerResult}<br> <font size="5"><b><span
				id="layer"></span>秒后，将返回之前界面...</b></font>
		</h1>
	</center>
	<%
		//转向语句  
		response.setHeader("Refresh", "3;URL=index.jsp");
	%>

	<script type="text/javascript">
		var time = 4;
		function returnUrlByTime() {

			var timeout = setTimeout('returnUrlByTime()', 1000);
			time = time - 1;
			document.getElementById("layer").innerHTML = time;
		}

		returnUrlByTime();
	</script>
</body>
</html>