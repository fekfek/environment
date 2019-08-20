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

	<p>As SEE is a non profit organization, it heavily depends on contributions from members, 
	volunteers and good willing people like you. SEE welcomes contributions from such people with
	 utmost gratitude and extends heartfelt appreciation in advance.
	</p>
	<p>Contributors can make their contribution in several forms such as volunteering in SEE's 
	events, provide advice and professional opinions, and of course material and financial 
	donations. Whichever way you want to help, please do so and we will do our best to make sure
	your support makes a real difference on the ground.
	</p>
<div class="col-md-8">

<h4 align="center">Please contribute your professional opinions here</h4>
  <form action="action_page.php">

    <label for="fname">Name</label>
    <input type="text" id="fname" name="firstname" placeholder="your name..">

    <label for="lname">Email and/or Phone</label>
    <input type="text" id="lname" name="lastname" placeholder="your email / phone..">


    <label for="comment">Comment</label>
    <textarea id="comment" name="comment" placeholder="your comments.." style="height:150px">
    </textarea>

    <input type="submit" value="Submit">

  </form>
  </div>
  
  <div class="col-md-4">
  <h4 align="center">Financial Support</h4>
  <br><br>
  
  <div style="border:double red; border-radius:40px; height:120px; background-color:#A3E4D7">
  	<h1 align="center" style="padding-top:20px;">Donate</h1>

  </div>
  <br><br>
  <h4 align="center">Material Support</h4>
  <div style="border:double; border-radius:40px; height:120px; background-color:#D7BDE2">
  		<h1 align="center" style="padding-top:20px; ">Donate</h1>
  </div>
  
  </div>
  
</div>
	
	
</div>	
	
	<script type="text/javascript" 	src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript"  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
	
</body>
</html>