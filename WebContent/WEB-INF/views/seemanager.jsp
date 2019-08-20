<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel='stylesheet'	href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager</title>
</head>
<body>
	
	
	<jsp:include page="../views/fragments/homeNavbar.jsp" /> 
	<div class="container">
	<br><br><br>
		<h1>This page is strictly for Managers. Please login using your manager credential</h1>
		<h2>If you are not a manager or delegated as one, Please logout. Thanks</h2>
	<br><br><br>
	
	<form action="<%=request.getContextPath()%>/logout" method="post">
		<input type="submit" value ="Logout">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	</form>
	
	</div>
	
		<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
		<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</body>
</html>