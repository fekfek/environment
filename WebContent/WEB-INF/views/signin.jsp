<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>Register for Membership</title>
</head>

<link rel='stylesheet' 	href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<body>
	<jsp:include page="../views/fragments/homeNavbar.jsp" />

	<div align="center">
		<span class="badge"><h3>Please Enter Email and Password</h3></span>
	</div>
	<br><br><br>

	<div class="container">

		<spring:url value="/verify" var="verify" />

		<form:form class="form-horizontal"  action="${verify}" method="post">
		
			<div class="form-group">
				<label class="col-sm-2 control-label">Name</label>
				<div class="col-sm-4">
				<input type="text" class="form-control" id="name" name="name">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Email</label>
				<div class="col-sm-4">
				<input type="text" class="form-control" id="email" name="email">
				</div>
			</div>	
	
			<div class="form-group">
				<label class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
				<input type="password" class="form-control" id="password" name="password">
				</div>
			</div>		

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">

					<button type="submit" class="btn-lg btn-primary pull-left">Sign In</button>
					
				</div>
			</div>
		</form:form>




	</div>


	<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
