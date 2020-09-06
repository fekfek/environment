<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<title>List of Volunteers</title>
	</head>
	
	<link rel='stylesheet' href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<body>
<jsp:include page="../views/fragments/homeNavbar.jsp" />

<jsp:include page="../views/fragments/confirmDelete.jsp" />

	<div class="container">


    	<h1>Confirmation of Registration</h1>
		<br>
		<h3>You have been successfully registered. As a member you will be entitled to Member's
		benefits and responsibilities. Thanks for being a member.
		</h3>

	</div>

	<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
				

	   
</body>
</html>