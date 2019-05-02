<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<link rel='stylesheet' href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<body>
    <jsp:include page="../views/fragments/navbar.jsp" />
    
    <div align="center">
        <span class="badge"><h3>Please Fill the Information</h3></span>
    </div>
    <br>

    <div class="container">

        <spring:url value="/submitvolunteer" var="submitVolunteerUrl" />
        
        <form:form class="form-horizontal" method="post"
            modelAttribute="anyname" action="${submitVolunteerUrl}">

            <form:hidden path="id" />

            <spring:bind path="firstName">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">First Name</label>
                    <div class="col-sm-6">
                        <form:input path="firstName" type="text" class="form-control "
                            id="firstName" placeholder="please enter your First Name" />
                        <form:errors path="firstName" class="control-label" />
                    </div>
                </div>
            </spring:bind>
            
            <spring:bind path="lastName">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Last Name</label>
                    <div class="col-sm-6">
                        <form:input path="lastName" class="form-control" id="lastName"
                            placeholder="please enter your Last Name" />
                        <form:errors path="lastName" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="phone">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Phone</label>
                    <div class="col-sm-4">
                        <form:input path="phone" class="form-control" id="phone"
                            placeholder="Please Enter your Phone Number" />
                        <form:errors path="phone" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="gender">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Gender</label>
                    <div class="col-sm-4">
                        <form:input path="gender" class="form-control" id="gender"
                             placeholder="please enter your Gender" />
                        <form:errors path="gender" class="control-label" />
                    </div>
                </div>
            </spring:bind>
            
            <spring:bind path="city">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">City</label>
                    <div class="col-sm-4">
                        <form:input path="city"
                            class="form-control" id="city" placeholder="please enter your City" />
                        <form:errors path="city" class="control-label" />
                    </div>
                </div>
            </spring:bind>
            
            <spring:bind path="state">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">State</label>
                    <div class="col-sm-4">
                        <form:input path="state"
                            class="form-control" id="state" placeholder="please enter your State" />
                        <form:errors path="state" class="control-label" />
                    </div>
                </div>
            </spring:bind>
            
            <spring:bind path="remark">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Remark</label>
                    <div class="col-sm-10">
                        <form:textarea path="remark" rows="5" 
                            class="form-control" id="address" placeholder="please add your remarks if any" />
                        <form:errors path="remark" class="control-label" />
                        			<!-- rows="5"  reserves 5 rows for the field -->
                    </div>
                </div>
            </spring:bind>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">

       <!--  <button type="submit" class="btn-lg btn-primary btn-block">Add/Update</button> -->
       <!--  <button type="submit" class="btn-lg btn-primary pull-right">Add/Update</button> -->
			 <button type="submit" class="btn-lg btn-primary pull-left">Add/Update</button> 
       <!--	 <button type="submit" class="btn-lg btn-primary pull-center">Add/Update</button> -->
											
                </div>
          	</div>
       </form:form>
   
    <spring:url value="/apply" var="applyUrl" />
   		<form:form class="form-horizontal" method="get"
            modelAttribute="anyname" action="${applyUrl}">
    
			<div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
         			<button type="submit" class="btn-lg btn-default btn-left">Reset</button> 
				</div>
            </div>
        </form:form>
    
   </div> 
    

  
    
    
    <%-- <jsp:include page="../views/fragments/footer.jsp" /> --%>
</body>
</html>
