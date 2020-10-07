<!-- <nav class="navbar navbar-dark bg-dark">	 -->

<div style="height:10px"></div> 	<!-- leaves a small horizontal space above nav bar -->

 <nav class="navbar-inverse" style="background-color:green">	
    <div class="container-fluid">
    
    	<div class="navbar-header" >	
    		<a class="navbar-brand" href="${pageContext.request.contextPath}/">
<!-- or		<a class="navbar-brand" href="/see/"> -->
				<h1>Save the Environment Ethiopia</h1>
			</a> 
		</div>

		<ul class="nav nav-pills" style="font-size:20px">	
			
        	<li class="active"><a class="navbar-brand" href="${pageContext.request.contextPath}/">Home</a></li>
        	
				<!-- or	    <li role="presentation"><a href="/see/</a></li> -->
          
           <li>
			<div class="btn-group">
  				<button class="btn btn-primary btn-lg dropdown-toggle" type="button" 
  					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Membership
  					<span class="caret"></span>
  				</button>
  				<ul class="dropdown-menu">
  			  		<li><a class="btn btn-info dropdown-item" href="/see/signin">Member: Sign In</a></li>
    				<li><a class="btn btn-info dropdown-item" href="/see/signup">New Member: Sign Up</a></li>
  				</ul>
			</div>
          </li>
                   
            <li role="presentation"><a href="${pageContext.request.contextPath}/organization">Organization</a></li>
            <li role="presentation"><a href="${pageContext.request.contextPath}/contribute">Contribute</a></li>
	        <li role="presentation"><a href="${pageContext.request.contextPath}/contact">Contact Us</a></li>
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
    </nav>
 
	
