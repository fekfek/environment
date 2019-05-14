<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<title>List of Members</title>
	</head>
	
	<link rel='stylesheet' href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>
	<script type="text/javascript" src="environment/WebContent/resources/deleteConfirm.js"></script>

<body>
<jsp:include page="../views/fragments/navbar.jsp" />

<jsp:include page="../views/fragments/confirmDelete.jsp" />


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
            <span   class="badge"> <h1> List of Registered Members </h1> </span> 
        </div>
        <br>

        <table class="table table-striped" border="">
            <thead>
                <tr>
                    <!-- <th>#ID</th> -->
                    <th>Id</th>
                    <th>Member Name</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>City</th>
                    <th>Membership Type</th>
                    <th>Contribution/ Remark</th>
                    <th>Action</th>                  
                </tr>
            </thead>

             <c:forEach var="member" items="${members}">	

                <tr>
                    <td>${member.id}</td>
                    <td>${member.name}</td>
                    <td>${member.password}</td>
                    <td>${member.email}</td>
                    <td>${member.phone}</td>
                    <td>${member.city}</td>
                    <td>${member.membershipType}</td>
                    <td>${member.contributionRemark}</td>
                    <td>
                        <spring:url value="${member.id}/update" var="updateUrl" />
						<spring:url value="${member.id}/delete" var="deleteUrl" />
                        <spring:url value="${member.id}/remark" var="remarkUrl" />
                        <button class="btn btn-primary"
                            onclick="location.href='${updateUrl}'" >Update</button>
                        <button class="btn btn-danger"
                            onclick="location.href='${deleteUrl}'" data-toggle="modal" data-target="#mymodal" >
                            	<span class="glyphicon glyphicon-trash"></span> Delete</button> 
                        
                    </td>
                </tr>
           </c:forEach>		
           
        </table>
        
        	
        
       <spring:url value="/newMember" var="newMember" /> 
                
       <button class="btn btn-primary  btn-lg btn-block"
                            onclick="location.href='${newMember}'" >New Member</button> 
                            
      
      
              
     </div>

	<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
				

	   
</body>
</html>