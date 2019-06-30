<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dataObjects.User" %>
 <%@ page import="com.dao.UsersDAO" %>

 <%
 	if(request.getParameter("accessDen")!=null){%>
 		<script>
		alert("Access denied!");
		var host = "http://"+window.location.host;
		window.location.replace(host+"/study-abroad/index.jsp");
		</script>
 	<%}
	String email = request.getParameter("user_email");
	String password = request.getParameter("user_password");
	if(request.getParameter("logout")!=null){
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
	boolean isExist;
	User user = new User();
	
	if(email !=null &&password !=null){
		// replace this shit return code is 0 is success, 1 email is not found, 2 if password wrong
		isExist = UsersDAO.isUserExist(email, password);
		user = UsersDAO.getUser(email, password);
		if(isExist){
			session.setAttribute("user", user);
			response.sendRedirect("./index.jsp");
		}
		else{
%>
			<script>
				alert('Wrong email or password');
				window.history.back();
			</script>
<%
		}
	}
	
%>