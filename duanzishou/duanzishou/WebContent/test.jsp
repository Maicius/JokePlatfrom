
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<table bordercolor="red" cellspacing="0" border="1" id="resultTable">
		<tr><th>userID</th><th>userName</th><th>password</th><th>credit</th></tr>
			<c:forEach items="${requestScope.LogInResult}" var="user">
				<tr>
					<td>${user.id }</a></td>
					<td>${user.userName}</td>
					<td>${user.password }</td>
					<td>${user.credit }</td>
				</tr>
			</c:forEach>
	</table>
</center>
</body>
</html>