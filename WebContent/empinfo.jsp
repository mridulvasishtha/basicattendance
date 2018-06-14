<%@ page language="java" import="com.connection.DConnection,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String username=(String)(session.getAttribute("username"));
//System.out.print("arrey mannnu ban gayi baat "+(session.getAttribute("")));
DConnection dc=new DConnection();
Vector<String> v1 =dc.getSingleRow("select * from users where username='"+username+"' ");
%>
	
FirstName  :	<%=v1.elementAt(1)%>
	<form action="editpreemp.jsp" method="post">
	<input type="hidden" name="userclick" value="firstname">
	<input type="hidden" name="empid" value=<%=v1.elementAt(0)%>>
	<input name="elementid" type="submit" value="Edit">
	</form>
LastName  :	<%=v1.elementAt(2)%>
	<form action="editpreemp.jsp" method="post">
	<input type="hidden" name="userclick" value="lastname">
	<input type="hidden" name="empid" value=<%=v1.elementAt(0)%>>
	<input name="elementid" type="submit" value="Edit">
	</form>
UserName  :	<%=v1.elementAt(3)%>
	<form action="editpreemp.jsp" method="post">
	<input type="hidden" name="userclick" value="username">
	<input name="elementid" type="submit" value="Edit">
	</form>

Email id  :	<%=v1.elementAt(4)%>
	<form action="editpreemp.jsp" method="post">
	<input type="hidden" name="userclick" value="email">
	<span><input name="elementid" type="submit" value="Edit"></span>
	</form>

Password  :	<%=v1.elementAt(5)%>
	<form action="editpreemp.jsp" method="post">
	<input type="hidden" name="userclick" value="password">
	<input name="elementid" type="submit" value="Edit">
</form>
<form action="index.jsp" method="post">
<%
session.invalidate();
%>
<input type="submit" value="Logout">
</form>
</body>
</html>