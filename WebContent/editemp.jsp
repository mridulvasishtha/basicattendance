<%@ page language="java" import="com.pojo.DetailEdit" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%
out.print(session.getAttribute("userid"));
out.print(request.getParameter("userclick"));
out.print(request.getParameter("empid"));
out.print(request.getParameter("data"));
%>
<jsp:useBean class="com.pojo.DetailEdit"  id="u1"></jsp:useBean>
<jsp:setProperty property="*" name="u1"/>
<%
int cnt=u1.insert();
if (cnt==1)
{
	out.print("Id Created successfully");
	%>
	<script>alert("Your data updated successfully")</script>
<jsp:forward page="empinfo.jsp"></jsp:forward> 
	
	<%
}
else
{
	out.print("Updation not done!!! Try again");
}	
%>

<form action="empinfo.jsp" method="get">
<input type="submit" value="click here">
</form>
</body>
</html>