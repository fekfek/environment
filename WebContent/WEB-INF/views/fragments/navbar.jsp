<!-- <nav class="navbar navbar-dark bg-dark">	 -->
<div class="page-top" style="height:10px"></div>

<nav class="navbar-inverse">	
    <div class="container-fluid">
    
    	<div class="navbar-header">	
		 	<a class="navbar-brand" href="${pageContext.request.contextPath}/"><h1>Environment &#160&#160&#160&#160&#160</h1></a>
			 
		</div>
	
    
        <ul class="nav nav-pills" style="font-size:20px">	
            	
        	<li class="active"><a class="navbar-brand" href="${pageContext.request.contextPath}/">Home</a></li>
            
            <li role="presentation"><a href="${pageContext.request.contextPath}/newVolunteer">Register to volunteer</a></li>
	        <li role="presentation"><a href="${pageContext.request.contextPath}/showvolunteers">Volunteers registered</a></li>
			<li role="presentation"><a href="${pageContext.request.contextPath}/membership">Membership</a></li>
			
			<li role="presentation">
			  <div  role="group">
			    <a id="mydropdown"  class=" dropdown-toggle" data-toggle="dropdown" > M </a>
			    
			    <div class="dropdown-menu" aria-labelledby="mydropdown">
			      <a class="dropdown-item" href="#">Sign Up</a><br>
			      <a class="dropdown-item" href="#">Sign In</a>
			    </div>
			    </div>
			</li>
			
			<li role="presentation"><a href="${pageContext.request.contextPath}/admin">Admin </a></li>	
			<li role="presentation"><a href="${pageContext.request.contextPath}/manager">Manager </a></li>	     
			<li>	
				<form class="navbar-form">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Enter search text"/>
					</div>
					<button type="submit" class="btn btn-info">Search</button>
				</form>		
			</li>
			
		</ul>
			
		<ul class=" nav nav-pills pull-right">
			
        	<li style=" font-size:30px; color:white"  class="text-muted">
            	Welcome : ${pageContext.request.userPrincipal.name} |  &#160
        
        	</li>
        
       	 <li style="color:red">
			<form action="${pageContext.request.contextPath}/logout" method="post">
			<input type="submit" value ="Logout" style="height=35px">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			</form>
     	  </li>
     	  
       </ul>
       
    </div>
    </nav>
    <br>
	
