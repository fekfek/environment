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
	<jsp:include page="../views/fragments/homeNavbar.jsp" />

	<div class="container" >
	
	<div style="height:5px"></div> <!-- leaves a small horizontal space above nav bar -->
	
		<div class="row">		<!-- First Row in container -->
			
			<div class="col-md-3 bg-danger">		<!-- First Column in first row-->
				
				<h3 align="center">About SEE</h3>
						
						<div class="myrows1">
							
							<p>
							<b>SEE</b>, Save the Environment Ethiopia, is a local NGO working on 
							Environment. Founded by Ethiopians in 2007, it operates in Refugee and 
							IDP impacted areas in the Somali Region of Ethiopia with a vission 
							to expand to all parts of Ethiopia and the Horn of Africa. 
							</p>
							
							<h3>SEE PROGRAMS</h3>
														
				<ul>
					<li>Environmental Education, Rehabilitation and Protection</li>
					<li>Alternative Environment Friendly House Construction</li>
					<li>Alternative Energy Promotion</li>
					<li>Livelihood Programs</li>
				</ul>
							<h3>BENEFICIARIES</h3>
							
							<p>
							Beneficiaries are primarily refugees living in Kebribeyah, Shedder, 
							Awbere, Melkadida, Bekolmayo and, Kobe Refugee camps. Also included are
							the Host community living in the vicinity who share their meagre
							resources with refugess.
							</p>
							
						</div>

				
			</div>		<!-- end of 1st column 1st row -->
		

			<div class="col-md-6 bg-info">		<!-- Second Column (the Carousel)-->
				
				<h3 align="center">Picture Gallery</h3>

				<jsp:include page="../views/fragments/myCarousel.jsp" />	<!-- carousel imported 
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
						<b>SEE BYLAWS & PROFILES</b><br>
						<p align="left">SEE has Bylaws according to which the organization is governed.
						<br>
						SEE profiles shows the general picture of the organization including its Vision, 
						Mission, Objectives and Activities. <b>...</b>
						</p>
						
						<ul class="nav nav-pills" style="font-size:20px">
						<li>						
						<spring:url value="/bylaws" var="bylaws" /> 
       					<button class="btn btn-info btn-md  pull-left"
                        onclick="location.href='${bylaws}'" >Bylaw</button>
                      </li>
                      
                      <li>
                        <spring:url value="/profiles" var="profiles" />                
       					<button class="btn btn-info btn-md  pull-left"
                        onclick="location.href='${profiles}'" >Profile</button>
                       </li>  
                        </ul>    
					</div>
				</div>
				<!-- end of 1st row 3rd column -->

 				<hr class="hr-line" />		<!--line dividing 1st and 2nd row in 3rd column -->
		
				<div class="row">		<!-- 2nd row in 3rd column -->
					
					<div class="col-md-12">		<!-- Single column in 2nd row in 3rd column -->
						<div class="myrows">
							<b>REPORTS & PRESENTATIONS</b><br>
							<p>SEE makes regular reports to donors and government.	Reports show the
							 history of SEE's achievements. SEE also makes presentations to convey its
							  cause to stake holders in various forums.  
								<b>...</b>
							</p>
							
				<ul  class="nav nav-pills" style="font-size:20px">
					<li>
						<div class="btn-group">
  							<button class="btn btn-info btn-md dropdown-toggle" type="button" 
  								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  								Reports
  								<span class="caret"></span>
  							</button>
  						<ul class="dropdown-menu">
  			  				<li><a class="dropdown-item" href="${pageContext.request.contextPath}/wfp2013">2013 WFP Annual Report</a></li>
  			  				<li><a class="dropdown-item" href="/see/cssp">SEE CSSP Annual Report</a></li>
  			  				<li><a class="dropdown-item" href="/see/mid2103">Mid Year 2013 UNHCR SPMR</a></li>
  						</ul>
					</div>
          			</li>

					<li>
						<div class="btn-group">
  							<button class="btn btn-info btn-md dropdown-toggle" type="button" 
  								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  								Presentations
  								<span class="caret"></span>
  							</button>
  						<ul class="dropdown-menu">
  			  				<li><a class="dropdown-item" href="/see/presentation2016">2016 Presentation</a></li>
  			  				<li><a class="dropdown-item" href="/see/projproposal2016">2016 Project Proposal Presentation</a></li>
  			  				<li><a class="dropdown-item" href="/see/annualreviewex">Annual Review Exercise Zeru</a></li>
  						</ul>
					</div>
          			</li>
             	</ul>
							
							
						</div>
					</div>
				</div>
				<!-- end of 2nd row 3rd column -->

 				<hr class="hr-line" />		<!--line dividing 2nd row and 3rd row in 1st column -->

				<div class="row">	<!-- 3rd row in 3rd column -->
					
					<div class="col-md-12">		<!-- Single column in 3rd row of 3rd column-->
						
						<div class="myrows1">
							<b>AWARDS & CERTIFICATES</b>
							<br>
							<p>SEE has the required Certificates to legally operate in the project area
							from concerned authorities. SEE is also proud of its Awards recognizing its
							role in the community.
							 <b>...</b>
							</p>
                        </div>
                        
                        <div>
				<ul  class="nav nav-pills" style="font-size:20px">
					<li>
						<div class="btn-group dropup">
  							<button class="btn btn-info btn-md dropdown-toggle" type="button" 
  								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  								Awards
  								<span class="caret"></span>
  							</button>
  						<ul class="dropdown-menu">
  			  				<li><a class="dropdown-item" href="/see/award">FFE Award</a></li>
  						</ul>
					</div>
          			</li>

					<li>
						<div class="btn-group dropup">
  							<button class="btn btn-info btn-md dropdown-toggle" type="button" 
  								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  								Certificates
  								<span class="caret"></span>
  							</button>
  						<ul class="dropdown-menu">
  			  				<li><a class="dropdown-item" href="/see/epacirtificate">EPA Certificate</a></li>
  			  				<li><a class="dropdown-item" href="/see/cerificateminesota">SEE Certificate Minesota</a></li>
  			  				<li><a class="dropdown-item" href="/see/certificateirs">SEE Cirtificate IRS</a></li>
  						</ul>
					</div>
          			</li>
             	</ul>
							
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