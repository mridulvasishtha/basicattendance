<%@ page language="java" import="com.connection.DConnection" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

HttpSession session=request.getSession();
session.setAttribute("marked","no");
DConnection dc=new DConnection();
String[] user =dc.getAllRowsForSingleColumn("select * from users");	
//String a[]=new String[]{"present","absent"};
for(int j=0;j<user.length;j++)
{
			session.setAttribute("marked"+(j),"no");
System.out.print("marked"+(j));
}
//System.out.print(user.length);
response.sendRedirect("adminindex.jsp");

%>
</body>
</html>