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
	<jsp:include page="../views/fragments/orgNavbar.jsp" />

	<div class="container-fluid" >
	
	<div style="height:5px"></div> <!-- leaves a small horizontal space above nav bar -->
	
		<div class="row">		<!-- First Row in container -->
			
			<div class="col-md-3 bg-danger">		<!-- First Column in first row-->
				
				<h3>SEE Organization</h3>
						
					<div class="myrows1">
							
						<p>
							<b>SEE</b>, Save the Environment Ethiopia, is mainly based in Jigjiga
							city of Somali Region, in the Eastern part of Ethiopia. SEE has a liason
							office in Addis Ababa. <br>
							Project offices are also found in ...... within the vicinity of 
							beneficiaries.  
						</p>
						
				<hr class="hr-line" />		<!--line dividing 2nd row and 3rd row in 1st column -->						
							
				<h3>Human Resources</h3>
					<p>SEE has a total of ... employees. List of Major leadership is as follows:</p>									
				<ul>
					<li><h4>Gedi M. Gohe - General Manager</h4></li>
					<li><b> ... Project Director </b></li>
					<li><b> ... Project Coordinator </b></li>
					<li><b> ... Project Coordinator </b></li>
					<li><b> ... Finance and Admin</b></li>
					<li><b>Fekade H.Mariam - Senior Advisor / Volunteer based in USA </b></li>
				</ul>
				
				<hr class="hr-line" />		<!--line dividing 2nd row and 3rd row in 1st column -->
				
				<ul class="nav nav-pills" style="font-size:20px">
					<li>						
						<spring:url value="/orgstructure" var="orgstructure" /> 
       					<button class="btn btn-info btn-md  pull-left"
                        	onclick="location.href='${orgstructure}'" ><b>ORGANIZATIONAL STRUCTURE</b>
                        </button>
                    </li>
                </ul>
				
				<hr class="hr-line" />
							
			</div>

				
			</div>		<!-- end of 1st column 1st row -->
		

			<div class="col-md-6 bg-info">		<!-- Second Column (the Carousel)-->
				
				<h3 align="center">Picture Gallery</h3>

				<jsp:include page="../views/fragments/orgCarousel.jsp" />	<!-- carousel imported 
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
						<br>
						<b>BOARD</b><br>
						<p align="left">The highest authority of SEE to which the General Manager 
						reprots to is the BOARD. The Board is composed of ....
						<br>
						Board is elected by ... and serves for ... years after which an election
						of new Board members is performed. <b>...</b>
						</p>
						
						<ul class="nav nav-pills" style="font-size:20px">
						<li>						
						<spring:url value="/boardmembers" var="boardmembers" /> 
       					<button class="btn btn-info btn-md  pull-left"
                        onclick="location.href='${boardmembers}'" >Board Members</button>
                      </li>
                      </ul>
					</div>
				</div>
				<!-- end of 1st row 3rd column -->

 				<hr class="hr-line" />		<!--line dividing 1st and 2nd row in 3rd column -->
		
				<div class="row">		<!-- 2nd row in 3rd column -->
					
					<div class="col-md-12">		<!-- Single column in 2nd row in 3rd column -->
						<div class="myrows">
							<b>PARTNERS</b><br>
							<p>SEE partners with several actors working in the same area and same
							beneficiaries. The following are the major partners:  
								<b>...</b>
							</p>
							<ul>
					<li><b>Somali Regional Government</b></li>
					<li><b>Somali Region Environmental Bureau</b></li>
					<li><b>ARRA</b></li>
					<li><b>UNHCR</b></li>
					<li><b>Hope of the Horn</b></li>
					<li><b>Save the Children</li>
				</ul>
							
				<ul  class="nav nav-pills" style="font-size:20px">

					<li>
						<div class="btn-group">
  							<button class="btn btn-info btn-md dropdown-toggle" type="button" 
  								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  								Partners
  								<span class="caret"></span>
  							</button>
  						<ul class="dropdown-menu">
  			  				<li><a class="dropdown-item" href="#">Somali Regional Government</a></li>
  			  				<li><a class="dropdown-item" href="#">Somali Region Environmental Bureau</a></li>
  			  				<li><a class="dropdown-item" href="#">ARRA</a></li>
  			  				<li><a class="dropdown-item" href="#">UNHCR</a></li>
  			  				<li><a class="dropdown-item" href="#">Hope of the Horn</a></li>
  			  				<li><a class="dropdown-item" href="#">Save the Children</a></li>
  						</ul>
					</div>
          			</li>
             	</ul>
							
							
						</div>
					</div>
				</div>
				<!-- end of 2nd row 3rd column -->

 				<hr class="hr-line" />		<!--line dividing 2nd row and 3rd row in 1st column -->



			</div>		<!-- end of 3rd column -->

		</div>		<!-- end of 1st row in container -->
		
		<div style="height:10px"></div>

 	</div>	
 	

	
<%-- 	<jsp:include page="../views/fragments/footbar.jsp" /> --%>

	<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	

</body>
</html>