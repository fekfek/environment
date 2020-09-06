<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/myrows.css" type="text/css"/>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Environmental Education</title>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

 .container { 
   border-radius: 5px; 
   background-color: #F9E79F; 
   padding-left: 100px; 
   padding-right: 100px;
 }
 
 .tab{
 	margin-left:40px;
 }
</style>


</head>
<body>
	<jsp:include page="../views/fragments/homeNavbar.jsp" />


<div class="container">

<div class="row" style="padding:20px;">
<div class="col-md-8">

<h4 align="center">Contact SEE using Contact Form</h4>

  <form action="registerContact" method="post">

    <label for="name">Name</label>
    <input type="text" id="name" name="name" placeholder="your name here ">

    <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="your email here ">
    
    <label for="phone">Phone</label>
    <input type="text" id="phone" name="phone" placeholder=" Optional ">

    <label for="region">Region</label>
    <select id="region" name="region">
      <option value="ethiopia">Ethiopia</option>
      <option value="africa">Africa</option>
      <option value="europe">Europe</option>
      <option value="asia">Asia</option>
      <option value="europe">North America</option>
      <option value="europe">South America</option>
    </select>

    <label for="comment">Comment/ Feedback</label>
    <textarea id="comment" name="comment" placeholder="your comments" style="height:150px">
    </textarea>

    <input type="submit" value="Submit">

  </form>
  </div>
  
  <div class="col-md-4">
  <h4 align="center">Contact SEE using our Email/ Phone</h4>
  <br><br>
  
  <div style="border:double; padding:10px; background-color:#A3E4D7">
  	
  		<h4>Email</h4>
  			<h5 class="tab">see@seethiopia.org</h5>
  			<h5 class="tab">see@seethiopia.org</h5>
  		<h4>Phone</h4>
  			<h5 class="tab">+251 752890</h5>
  			<h5 class="tab">+251 752890</h5>
  		<h4>Mail</h4>
  			<h5 class="tab">Save the Environment Ethiopia</h5>
  			<h5 class="tab">POBox 00000</h5>
  			<h5 class="tab">Addis Ababa</h5>
  			<h5 class="tab">Ethiopia</h5>
  			<h5 class="tab">OR</h5>
  			<h5 class="tab">Save the Environment Ethiopia</h5>
  			<h5 class="tab">POBox 00000</h5>
  			<h5 class="tab">Jig Jiga</h5>
  			<h5 class="tab">Ethiopia</h5>
  </div>
  
  
  </div>
  
</div>
	
	
</div>	
	
	<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
	
</body>
</html>