<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String choice=request.getParameter("choice");
%>
Enter new <%=choice%>
<br>
<form action="secondimplement.jsp">
<input type="text" name="change">
<input type="hidden" name="choice" value=<%=choice%>>
<input type="submit" value="Edit">
</form>


</body>
</html>