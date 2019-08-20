<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>Register for Membership</title>
</head>

<link rel='stylesheet'
	href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<body>
	<jsp:include page="../views/fragments/homeNavbar.jsp" />

	<div align="center">
		<span class="badge"><h3>Please Fill Member Details to Register</h3></span>
	</div>
	<br>

	<div class="container">

		<spring:url value="/registerMember/" var="registerMember" />

		<form:form class="form-horizontal" method="post"
			modelAttribute="newMember" action="${registerMember}">

<%-- 			<form:hidden path="id" /> --%>

<%-- 			<spring:bind path="name"> --%>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-2 control-label">Member Name</label>
					<div class="col-sm-6">
<%--  						<form:input path="name" type="text" class="form-control "  --%>
<!-- 							id="name" placeholder="please enter your Name" /> -->
						<form:errors path="name" class="control-label" />
					</div>
				</div>
<%-- 			</spring:bind> --%>

<%-- 			<spring:bind path="email"> --%>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-2 control-label">Email</label>
					<div class="col-sm-4">
<%-- 						<form:input path="email" class="form-control" id="eamil" --%>
<%-- 							placeholder="please enter your Email" /> --%>
						<form:errors path="city" class="control-label" />
					</div>
				</div>
<%-- 			</spring:bind> --%>
			
<%-- 			<spring:bind path="password"> --%>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-2 control-label">Password</label>
					<div class="col-sm-4">
<%-- 						<form:input path="password" type="password" class="form-control" --%>
<%-- 							id="password" placeholder="Please enter a secured password" /> --%>
						<form:errors path="password" class="control-label" />
					</div>
				</div>
<%-- 			</spring:bind> --%>
			
<%-- 			<spring:bind path="phone"> --%>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-2 control-label">Phone</label>
					<div class="col-sm-4">
<%-- 						<form:input path="phone" class="form-control" id="phone" --%>
<%-- 							placeholder="please enter your phone" /> --%>
						<form:errors path="phone" class="control-label" />
					</div>
				</div>
<%-- 			</spring:bind> --%>

			
<%-- 			<spring:bind path="membershipType"> --%>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-2 control-label">Membership Type</label>
					<div class="col-sm-4">
<%-- 						<form:input path="membershipType" class="form-control" id="membershipType" --%>
<%-- 							placeholder="Gold, Platinum, Diamond, Life Time" /> --%>
						<form:errors path="membershipType" class="control-label" />
					</div>
				</div>
<%-- 			</spring:bind> --%>

<%-- 			<spring:bind path="contributionRemark"> --%>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label class="col-sm-2 control-label">Remark</label>
					<div class="col-sm-10">
<%-- 						<form:textarea path="ContributionRemark" rows="5" class="form-control" --%>
<%-- 							id="ContributionRemark" placeholder="please add your remarks if any" /> --%>
						<form:errors path="ContributionRemark" class="control-label" />
						<!-- rows="5"  reserves 5 rows for the field -->
					</div>
				</div>
<%-- 			</spring:bind> --%>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">

					<!--  <button type="submit" class="btn-lg btn-primary btn-block">Add/Update</button> -->
					<!--  <button type="submit" class="btn-lg btn-primary pull-right">Add/Update</button> -->
					<button type="submit" class="btn-lg btn-primary pull-left">Add/Update</button>
					<!--	 <button type="submit" class="btn-lg btn-primary pull-center">Add/Update</button> -->

				</div>
			</div>
		</form:form>

		<spring:url value="/newMember" var="newMember" />
		<form:form class="form-horizontal" method="get"
			modelAttribute="newMember" action="${newMember}">

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn-lg btn-default btn-left">Reset</button>
				</div>
			</div>
		</form:form>

	</div>


	<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<%--     <jsp:include page="../views/fragments/footbar.jsp" /> --%>
</body>
</html>
