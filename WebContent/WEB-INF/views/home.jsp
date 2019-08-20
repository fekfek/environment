<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" 	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/myrows.css" type="text/css" />



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Environment Home Page</title>

</head>
<body>
	<jsp:include page="../views/fragments/homeNavbar.jsp" />

	<div class="container">
	
	<div style="height:5px"></div> <!-- leaves a small horizontal space above nav bar -->
	
		<div class="row">		<!-- First Row in container -->
			
			<div class="col-md-3 bg-danger">		<!-- First Column in first row-->
				
				<h3 align="center">ABOUT ENVIRONMENT</h3>
				<div class="row">		<!-- First Row in first column -->
					
					<div class="col-md-12">		<!-- Just one Column in 1st row of 1st column-->
						
						<div class="myrows1">
							<b><i>Global Environment</i></b><br>
							<p align="left">The term "global environment" refers to
								Earth's environment in general. Many environmental issues
								primarily affect local and national areas. Others deal with
								problems that face the entire <b>...</b>
							</p>
							<form action="globalEnv">
								<table>
									<tr>
										<td><input type="submit" name="globalEnv"
											value="read more"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				<!-- end of 1st row 1st column -->

				<hr class="hr-line" />		<!-- line dividing 1st row and 2nd row in 1st column -->
				
				<div class="row">		<!-- 2nd row in 1st column in 1st row-->
					
					<div class="col-md-12">		<!-- Just one column in 2nd row of 1st column-->
						
						<div class="myrows1">
							<b><i>Local Environment</i></b><br>
							<p align="left">
								This all depends on where you live, of course, but I can give a
								few examples. <br>1. Water pollution- this is super common
								in relatively isolated, still bodies of water. It can be very
								visible, especially when people can see algal bloom.<b>...</b>
							</p>
							<form action="localEnv">
								<table>
									<tr>
										<td><input type="submit" name="localEnv"
											value="read more"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				<!-- end of 2nd row 1st column -->
				<br>
				<div>
					<button onclick=feedBack()><h4>Contribute Your Opinion</h4></button>	
				</div>			<!-- Using JavaScript -->
			</div>
		
			
			<!-- end of 1st column 1st row -->


			<div class="col-md-6 bg-info">		<!-- Second Column (the Carousel)-->
				
				<h3 align="center">Environment Picture Gallery</h3>

				<jsp:include page="../views/fragments/myCarousel.jsp" />	<!-- carousel imported 
																			from external source -->
			</div>
			<!-- end of 2nd column -->


			<div class="col-md-3 bg-danger">		<!-- Third Column -->
				
				<h3 align="center">Actions Needed</h3>
				<div class="row">		<!-- 1st row 3rd column -->
					
					<div class="col-md-12">	<!--Single column in 1st row of 3rd column of 1st row-->
						<b><i>Environmental Education</i></b>
						<p align="left">Environmental education is a process that
							allows individuals to explore environmental issues, engage in
							problem solving, and take action to <b>...</b>
						</p>
						<form action="envEdu">
							<table>
								<tr>
									<td><input type="submit" name="envEdu" value="read more"></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
				<!-- end of 1st row 3rd column -->

				<hr class="hr-line" />		<!-- line dividing 1st and 2nd row in 3rd column -->
				
				<div class="row">		<!-- 2nd row in 3rd column -->
					
					<div class="col-md-12">		<!-- Single column in 2nd row in 3rd column -->
						<div class="myrows">
							<b><i>Environmental Policy</i></b>
							<p>Environmental policy can be defined as a
								government's chosen course of action or plan to address issues 
								<b>...</b>
							</p>
							<form action="envPolicy">
								<table>
									<tr>
										<td><input type="submit" name="envPolicy"
											value="read more"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				<!-- end of 2nd row 3rd column -->

				<hr class="hr-line" />		<!-- line dividing 2nd row and 3rd row in 3rd column -->
				

				<div class="row">	<!-- 3rd row in 3rd column -->
					
					<div class="col-md-12">		<!-- Single column in 3rd row of 3rd column-->
						
						<div class="myrows1">
							<b><i>Conservation and Protection</i></b>
							<p>We only have one planet and we should all do our part to
								ensure that it's protected by combining our modern ways of <b>...</b>
							</p>
							<form action="envConsProt">
								<table>
									<tr>
										<td><input type="submit" name="testimanials"
											value="read more"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				<!-- end of 3rd row 3rd column -->

			</div>
			<!-- end of 3rd column -->

		</div>
		<!-- end of 1st row in container -->

	</div>
	<!-- end of container -->
	<jsp:include page="../views/fragments/footbar.jsp" />

	<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>