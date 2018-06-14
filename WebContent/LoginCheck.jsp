<%@ page language="java" import ="java.util.*,com.connection.DConnection" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if((request.getParameter("usertype")).equals("employee"))
{
%>
<jsp:useBean class="com.pojo.Users"  id="u1"></jsp:useBean>
<jsp:setProperty property="*" name="u1"/>
<%
	 boolean b=u1.check();
	if(b==false)
	{
		%>
		<jsp:forward page="index.jsp">
		<jsp:param value="wrongcredential" name="logincheckreply"/>
		</jsp:forward>
		<%
	}
	else
	{
		HttpSession session=request.getSession();
		session.setAttribute("userid",u1.getUserid());
		session.setAttribute("username",u1.getUsername());
		session.setAttribute("firstname",u1.getFirstname());
		response.sendRedirect("success.jsp");// <-----------------------------
    }
		/* if((request.getParameter("usertype")).equals("admin"))
		{
			HttpSession session=request.getSession();
			response.sendRedirect("adminindex.jsp");
		} */
}
if((request.getParameter("usertype")).equals("admin"))
{
%>
	<jsp:useBean class="com.pojo.Admins"  id="a1"></jsp:useBean>
<jsp:setProperty property="*" name="a1"/>
<%
	 boolean b1=a1.checkAdmin();
	if(b1==false)
	{
		
		%>
		<jsp:forward page="index.jsp">
		<jsp:param value="wrongcredential" name="logincheckreply"/>
		</jsp:forward>
		<%
	}
	else
	{
		
		HttpSession session=request.getSession();
		session.setAttribute("user",a1.getUsername());
		session.setAttribute("password",a1.getPassword());
 		response.sendRedirect("newadminindex.jsp");
	}
}
%>
</body>
</html>