<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Welcome <%=session.getAttribute("firstname")%> !!!
<form action="empinfo.jsp" method="post">
<input type="submit" value='Click here to get account details '/>
</form>
<form action="empattendance.jsp" method="post">
<input type="hidden" name="uid" value=<%=session.getAttribute("userid")%>>
<input type="submit" value='Check your attendance'/>
</form>
</body>
</html>