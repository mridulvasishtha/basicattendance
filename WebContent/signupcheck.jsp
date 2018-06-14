<%@ page language="java" import="com.pojo.Users" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<jsp:useBean class="com.pojo.Users"  id="u1"></jsp:useBean>
<jsp:setProperty property="*" name="u1"/>
<%
int cnt=u1.insert();
if (cnt==1)
{
	out.print("Id Created successfully");
	%>
	<script>alert("Your account created successfully")</script>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%
}
else
{
	out.print("Id not Created successfully try again");
	%>
	<jsp:include page="signup.jsp"></jsp:include>
	<%
}
%>
</body>
</html>