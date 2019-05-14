<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Membership</title>
	</head>
	
	<link rel='stylesheet' href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<body>
<jsp:include page="../views/fragments/navbar.jsp" />

<jsp:include page="../views/fragments/confirmDelete.jsp" />



    <div class="container">

       <h4>If you are not a member yet, Kindly sign up here and keep your email and password.
       </h4>	
        
       <spring:url value="/newMember" var="newMember"/> 
                
       <button class="btn btn-primary  btn-lg  pull-left"
                            onclick="location.href='${newMember}'" >Sign up</button> 
                                                    
       <br><br><br><br>
       
        <h4>If you are a member already, you may sign into your account by entering your email
        and password.
        
        </h4>             
       <spring:url value="/signin" var="signin" /> 
                
       <button class="btn btn-primary btn-lg  pull-left"
                            onclick="location.href='${signin}'" >Sign In</button>
                            
       <br><br><br><br>
       
       <spring:url value="/showMembers" var="showMembers" /> 
                
       <button class="btn btn-primary btn-lg  pull-center"
                            onclick="location.href='${showMembers}'" >Show All Members</button>
      
        
     </div>

	<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
				

	   
</body>
</html>