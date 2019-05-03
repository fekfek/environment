<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">

<link rel='stylesheet' href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<body>
<jsp:include page="../views/fragments/navbar.jsp" />

<!-- <jsp:include page="../views/fragments/confirmDelete.jsp" /> -->



    <div class="container">
    
    
        <c:if test="${not empty msg}">
            <div class="alert alert-${css} alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert"
                    aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <strong>${msg}</strong>
            </div>
        </c:if>
        <div align="center">
            <span   class="badge"> <h1> List of Volunteers </h1> </span> 
        </div>
        <br>

        <table class="table table-striped" border="">
            <thead>
                <tr>
                    <!-- <th>#ID</th> -->
                    <th>Id</th>
                    <th>Volunteer Name</th>
                    <th>Gender</th>
                    <th>Email</th>
                    <th>City</th>
                    <th>Remark</th>
                    <th>Action</th>                  
                </tr>
            </thead>

             <c:forEach var="volunteer" items="${myVolunteers}">	

                <tr>
                    <td>${volunteer.id}</td>
                    <td>${volunteer.vname}</td>
                    <td>${volunteer.gender}</td>
                    <td>${volunteer.email}</td>
                    <td>${volunteer.city}</td>
                    <td>${volunteer.remark}</td>
                    <td>
                    	<spring:url value="/volunteer/${volunteer.id}" var="applicantUrl" />
                        <spring:url value="/volunteer/${volunteer.id}/delete" var="deleteUrl" />
                        <spring:url value="/volunteer/${volunteer.id}/update" var="updateUrl" />
                        <spring:url value="/volunteer/${volunteer.id}/remark" var="remarkUrl" />
                        <button class="btn btn-primary"
                            onclick="location.href='${updateUrl}'" >Update</button>
                        <button class="btn btn-danger"
                            onclick="location.href='${deleteUrl}'" data-toggle="modal" data-target="#mymodal" >
                            	<span class="glyphicon glyphicon-trash"></span> Delete</button>
                        <button class="btn btn-info"
                            onclick="#" >Remark</button> 
                    </td>
                </tr>
           </c:forEach>		
           
        </table>
        
        	
        
       <spring:url value="/apply" var="applyUrl" /> 
                
       <button class="btn btn-primary  btn-lg btn-block"
                            onclick="location.href='${applyUrl}'" >New</button> 
                            
      
      
              
     </div>

	<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
				

	   
</body>
</html>