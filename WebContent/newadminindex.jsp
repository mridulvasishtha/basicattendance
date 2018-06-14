<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%//HttpSession session=request.getSession(false);
//System.out.println(request.getSession());
//System.out.print((String)session.getAttribute("user"));
//String s1=(String)session.getAttribute("user");
//String s2=(String)session.getAttribute("passwordS");
//System.out.print(s1);
/* if(str.equals("null"))
{
	System.out.print("Invalid access");
} 
else */
{
%>
<form action="viewallemp.jsp" method="post">
<input type="submit" value="View all employees">
</form>
<form action="InitiateMarking.jsp" method="post">
<input type="submit" value="Mark Attendance">
</form>
<form action="proeditemp.jsp" method="post">
<input type="submit" value="Change employee details">
</form>
<form action="editadmin.jsp" method="post">
<input type="submit" value="Change admin credentials">
</form>
<%
}
%>


<%-- <jsp:forward page="adminindex.jsp"></jsp:forward> --%> 
</body>
</html>