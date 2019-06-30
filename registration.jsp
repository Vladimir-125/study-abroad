<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dataObjects.User" %>
<%@ page import="com.dao.UsersDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Study abroad</title>
<!-- Styles -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 <link href="css/blog-home.css" rel="stylesheet">
 <!-- Styles  end-->
 
 <script>
 $(document).ready(function(){
	 var password = document.getElementById("user_password")
	 , confirm_password = document.getElementById("confirm_password");

	function validatePassword(){
	 if(password.value != confirm_password.value) {
	   confirm_password.setCustomValidity("Passwords Don't Match");
	 } else {
	   confirm_password.setCustomValidity('');
	 }
	}
 });
	password.onchange = validatePassword;
	confirm_password.onkeyup = validatePassword;
 
 </script>
</head>
<jsp:useBean id="newUser" class="com.dataObjects.User" scope="page"/>
<jsp:setProperty name="newUser" property="*"/>
<%
	if(newUser.getUser_fname() != null){
		boolean added = false;
		added = UsersDAO.addUser(newUser);
		if(added){
			out.write("<script>alert(\'User successfully added!\')</script>");
		}else{
			out.write("<script>alert(\'User with this email already exist.\\nPlease try again.\')</script>");
		}
	}
%>
<body>
<%request.setAttribute("current", 0); %>
<%@ include file = "/statics/header.jsp" %>


<!-- Registration form start-->
<div class="page-header text-center rounded"  style="border: 1px solid #ced4da;">
    <h3>Join Us!</h3>
    <small>It's free and takes only a few seconds.</small>
</div>
<div class="d-flex justify-content-center">
<form style="margin: auto;" id="registration" method="post">
    <div class="row">
        <div class="col">
            <div class="form-group">
            <label for="firstname">First Name</label>
            <input type="text" name="user_fname" id="user_fname" class="form-control" required>
            </div>
        </div>
        <div class="col">
            <div class="form-group">
            <label for="lastname">Last Name</label>
            <input type="text" name="user_sname" id="user_sname" class="form-control" required>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label for="email">Email</label>
        <input type="email" name="user_email" id="user_email" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" name="user_password" id="user_password" class="form-control" required>
    </div>
    <div>
        <label for="confirm">Confirm Password</label>
        <input type="password" name="confirm" id="confirm_password" class="form-control" required>
    </div>
    <div class="form-check">
        <input type="checkbox" id="accept-terms" class="form-check-input" required >
        <label for="accept-terms" class="form-check-label"><a href="#">Accept Terms &amp Conditions</a></label>
    </div>
    <div class="form-group">
    <button type="submit" style="width:500px; " class="btn btn-primary">Register</button>
    <div class="d-flex justify-content-center">
        <div class="form-inline" >
            <div> Already have an account?</div>
            <div>
                <a class="btn btn-default" data-toggle="modal"  data-target="#modalLogIn" href="#">Log In</a>
            </div>
            </div>
    </div>
    </div>
</form>
</div>

<!-- Registration form end-->

<!--Modal-->


<%@ include file="/statics/footer.jsp" %>
</body>
</html>