<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" 	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/myrows.css" type="text/css" />



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Page</title>

</head>
<body>
	<jsp:include page="../views/fragments/homeNavbar.jsp" />

	<div class="container">
	
	<div style="height:5px"></div> <!-- leaves a small horizontal space above nav bar -->
	
		<h1>Sorry You have not been Logged in</h1>
		<h2>Please check your Login Credentials and try again</h2>
			

	</div>
	<!-- end of container -->
	<jsp:include page="../views/fragments/footbar.jsp" />

	<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>