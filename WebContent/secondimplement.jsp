<%@ page language="java" import="com.pojo.Admins" contentType="text/html; charset=ISO-8859-1"
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
String change=request.getParameter("change");
int i=0;
i=Admins.updateAdmin(choice,change);
if(i!=0)
{
out.print(i+"Record updated successfully");
}
response.sendRedirect("newadminindex.jsp");
%>

</body>
</html>