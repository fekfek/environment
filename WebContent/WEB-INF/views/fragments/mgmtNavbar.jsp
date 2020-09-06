<!-- <nav class="navbar navbar-dark bg-dark">	 -->

<div style="height:10px"></div> 	<!-- leaves a small horizontal space above nav bar -->

 <nav class="navbar-inverse">	
    <div class="container-fluid">
    
    	<div class="navbar-header">	
    		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
<!-- or		<a class="navbar-brand" href="/see/"> -->
				<h1>Save the Environment Ethiopia</h1>
			</a> 
		</div>

		<ul class="nav nav-pills" style="font-size:20px">	
			
        	<li class="active"><a class="navbar-brand" href="${pageContext.request.contextPath}/">Home</a></li>
        	
				<!-- or	    <li role="presentation"><a href="/see/</a></li> -->
          
          
            <li role="presentation"><a href="${pageContext.request.contextPath}/showMembers">Members Registered
            </a></li>
            
            <li>
            
            <div>
   				<button class="btn btn-primary btn-lg dropdown-toggle" type="button" 
   					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Contributions Made
   					<span class="caret"></span> 
   				</button>
   				<ul class="dropdown-menu">
   			  		<li><a class="btn btn-info dropdown-item" href="/see/showContributions">Opinions</a></li>
     				<li><a class="btn btn-info dropdown-item" href="/see/signup">Financial</a></li>
     				<li><a class="btn btn-info dropdown-item" href="/see/signup">Material</a></li>
     			</ul>
 			</div> 
            
            </li>
            
	        <li role="presentation"><a href="${pageContext.request.contextPath}/showcontacts">Contacts Made</a></li>
			<li role="presentation"><a href="${pageContext.request.contextPath}/organization">Organization</a></li>
			<li role="presentation"><a href="${pageContext.request.contextPath}/management">Management</a></li>
			
		</ul>
			
		<ul class=" nav nav-pills pull-right">
			<li style=" font-size:30px; color:white"  class="text-muted"> 
				Welcome
    <%-- 			: ${pageContext.request.userPrincipal.name}  |  &#160
			</li>
        
        	<li style="color:red">
				<form action="${pageContext.request.contextPath}/logout" method="post">
				<input type="submit" value ="Logout" style="height=35px">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				</form>
	--%>
       		</li>
        </ul>
    
    </div>
    
    <h4 style="color:red"><i>This page is strictly for Managers. Please login using your manager credential.
		If you are not a manager or delegated as one, Please logout. Thanks </i></h4>
		
    </nav>
 
	
