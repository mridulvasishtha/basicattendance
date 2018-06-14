<%@ page language="java" import="com.connection.DConnection" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DConnection dc=new DConnection();
String[] users =dc.getAllRowsForSingleColumn("select * from users");	
//String users[]=new String[]{"manu","sonal","neeru","anand"};
String a[]=new String[]{"present","absent"};
loop1:for(int j=0;j<users.length;j++)
{
%>
For user <%=users[j]%>

<%
if((session.getAttribute("marked"+j)).equals("yes"))
	{out.print("Marked");
	
%><br>
<%
	continue loop1;
	}
	%>
<form action="attenfrmadmin.jsp" method="post">
<select name=<%=users[j]%>> 
<% 
for(int i=0;i<a.length;i++)
{
%>
	<option value=<%=a[i]%>><%=a[i]%></option>
	
<%
}
%>
</select>
<input type="hidden" name="id" value=<%=j%>>
<input type="submit" value="mark">

	
</form>
<br>
<%
}
%>
<form action="newadminindex.jsp" method="post">
<input type="submit" value="Get back to main menu">
</form>


</body>
</html>