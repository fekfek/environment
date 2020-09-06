<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" 	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css">
						
<link rel="stylesheet" href="resources/myrows.css" type="text/css" />



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Save the Environment Ethiopia</title>

</head>
<body>
	<jsp:include page="../views/fragments/mgmtNavbar.jsp" />

	<div class="container-fluid" >
	
	<div style="height:5px"></div> <!-- leaves a small horizontal space above nav bar -->
	
		<div class="row">		<!-- First Row in container -->
			
			<div class="col-md-3 bg-danger">		<!-- First Column in first row-->
				
				<div class="row">					<!-- First row in first column -->
						
						<div class="col-md-12">
						
						<b style="font-size:20px">MANAGEMENT</b>
							
							<p>
							<b>Management</b> of Save the Environment Ethiopia, is the main actor in 
							the organization that executes day to day activities as per plans 
							proposed by all stake holders and approved by the Board. 
							</p>
					
						</div>
					
				</div>
							
				<hr class="hr-line" />
				
				<div class="row">				<!-- 2nd row in 1st column -->
					
					<div class="col-md-12">
							
				<b style="font-size:20px">MANAGEMENT MEMBERS</b>
														
					<p>
					Membetrs of Management include the General Manager, Project Director, Admin and 
					Finance and Project Managers. Project Managers will be involved in making a 
					decision that relates to their project.
					</p>
					
					<spring:url value="/bylaws" var="bylaws" /> 
       					<button class="btn btn-info btn-md  pull-left"
                        onclick="location.href='${bylaws}'" >More on M'GMENT Members</button>
					
					</div>
					
					</div>
					
					<hr class="hr-line" />
										
					<div class="row">			<!-- 3rd row in 1st Column -->
					
					<div class="col-md-12">
					
					<b style="font-size:20px">GENERAL MANAGER</b>
							
					<p>
					The General Manager, <b>Gedi M Gohe</b>, is the founder of the organization. 
					He used to lead a smaller grass root organization called
					HAMDI. In collaboration with INGOs like ZOA, Hamdi was actively involved in 
				    raising and planting trees by organization volunteer community members.
					in 2004.
					
					</p>
					
					<spring:url value="/bylaws" var="bylaws" /> 
       					<button class="btn btn-info btn-md  pull-left"
                        onclick="location.href='${bylaws}'" >More on General Manager</button>
						
					</div>
					
					</div>				
			

				
			</div>		<!-- end of 1st column 1st row -->
		
			

			<div class="col-md-6 bg-info">		<!-- Second Column (the Carousel)-->
				
				<h3 align="center">Picture Gallery</h3>

				<jsp:include page="../views/fragments/mgmtCarousel.jsp" />	<!-- carousel imported 
																			from external source -->
				
				<div style="height:5px"></div>
				<spring:url value="/morePictures" var="morePictures" /> 
                
       			<button class="btn btn-success  btn-lg btn-block"
                            onclick="location.href='${morePictures}'" ><b>More Pictures and Videos
                            										</b></button> 
				
				
<!-- 				<div> -->
<!-- 					<button onclick=feedBack()><h4>More Pictures -->
<!-- 					</h4></button>	 -->
<!--  				</div>			Using JavaScript -->

			
			</div>
			<!-- end of 2nd column -->


			<div class="col-md-3 bg-danger" >		<!-- Third Column -->
				
<!-- 				<h3 align="center">Actions Needed</h3> -->
				<div class="row">		<!-- 1st row 3rd column -->
					
					<div class="col-md-12">	<!--Single column in 1st row of 3rd column of 1st row-->
						
						<b style="font-size:20px">PROJECTS</b>
						<p align="left">SEE has ... projects in the Somali Region as listed below:
							<ul>
								<li>Awabre</li>
								<li>Shedder</li>
								<li>Melkadida</li>
								<li>Bekolmayo</li>
							</ul>
						</p>
						
												
						<spring:url value="/bylaws" var="bylaws" /> 
       					<button class="btn btn-info btn-md  pull-left"
                        onclick="location.href='${bylaws}'" >More on Projects</button>
                          
					</div>
				</div>
				<!-- end of 1st row 3rd column -->

 				<hr class="hr-line" />		<!--line dividing 1st and 2nd row in 3rd column -->
		
				<div class="row">		<!-- 2nd row in 3rd column -->
					
					<div class="col-md-12">		<!-- Single column in 2nd row in 3rd column -->
						<div class="myrows">
							<b style="font-size:20px">PROJECT STAFF</b>
							<p>SEE's project staff is composed of ... Project Directors and ...
							 Project Managers. Project Directors manage multiple projects and plan
							 the overall programe plans of SEE and Future expansion areas.<br>
							 Project Managers manage their respective project program, local and 
							 resources.
							</p>
							
						<spring:url value="/bylaws" var="bylaws" /> 
       					<button class="btn btn-info btn-md  pull-left"
                        onclick="location.href='${bylaws}'" >More on Project Staff</button>
							
				
							
							
						</div>
					</div>
				</div>
				<!-- end of 2nd row 3rd column -->

 				<hr class="hr-line" />		<!--line dividing 2nd row and 3rd row in 1st column -->

				<div class="row">	<!-- 3rd row in 3rd column -->
					
					<div class="col-md-12">		<!-- Single column in 3rd row of 3rd column-->
						
						<div class="myrows1">
							<b style="font-size:20px">ADMIN AND FINANCE</b>
							<p>SEE's Administration and Finance is managed by an Admin and Finance
							 Head together with Accountants and Logistic officers.
							
							</p>
                        </div>
                        
                        <div>
                        
						<spring:url value="/bylaws" var="bylaws" /> 
       					<button class="btn btn-info btn-md  pull-left"
                        onclick="location.href='${bylaws}'" >More on Admin and Finance</button>
							
					</div>		
							
						
					</div>
				</div>			<!-- end of 3rd row 3rd column -->

			</div>		<!-- end of 3rd column -->

		</div>		<!-- end of 1st row in container -->
		
		<div style="height:10px"></div>

 	</div>	
 	

	
<%-- 	<jsp:include page="../views/fragments/footbar.jsp" /> --%>

	<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	

</body>
</html>