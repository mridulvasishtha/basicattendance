<%@ page language="java" import ="java.util.*,com.pojo.Users,com.connection.DConnection" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uid=request.getParameter("uid");
String username=Users.gettingUsername(uid);
HttpSession session=request.getSession();
session.setAttribute("userid",uid);
session.setAttribute("username",username);
response.sendRedirect("empinfo.jsp");
%>
</body>
</html>