<%@ page language="java" import ="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<% 			
			String logincheckreply=request.getParameter("logincheckreply");
 			if("wrongcredential".equals(logincheckreply))
 			{
 				logincheckreply=null;
 		%>
 				<script>alert('Invalid email or password. Try Again !');</script>
 		<%	
 			}
 		%>
 		
</head>
<body>

<%
	com.connection.CommonMethods.createAllTables();
	//System.out.print(logincheckreply);
%>
<form action="LoginCheck.jsp" method="post">
<div>Enter username<input type="text/html" name="username"/></div>
<div>Enter Password<input type="password" name="password"/></div>
<div>User type<select name="usertype">
<option value="employee">Employee</option>
  <option value="admin">Admin</option>
</select></div>
<div><input type="submit" value="Click here to Login"></div>
</form>
<br>
<form action="signup.jsp" method="post">
New to portal<input type="submit" value="Click here to register">
</form>
* <span style="color:#900;">For the first time username and password for Administrator is admin and admin</span>
</body>
</html>