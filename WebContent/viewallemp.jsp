<%@ page language="java" import="com.connection.DConnection,java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DConnection dc=new DConnection();
ResultSet rst=dc.getResultSet("select * from users ");
int count=0;
while(rst.next())
{
	count++;
}
ResultSetMetaData rsmt=rst.getMetaData();
int colmcnt=rsmt.getColumnCount();
//System.out.print("column da count "+colmcnt+" records da count "+count);
String t[]=new String[count];
%>
Id Attendance day month year firstname
<%
for(int i=0;i<count;i++)
{
	%>
	<br>
	<% 
	for(int j=0;j<colmcnt;j++)
	{
		rst.absolute(i+1);
		%>
		<%=rst.getString(j+1)%>
		
		<!-- System.out.print(rst.getString(j+1)+" "); -->
		<% 
	}
}	

 /*for(int i=0;i<vs.size();i++)
{
	for(int j=0;j<cnt;j++)
	{	
		System.out.print(vs.elementAt(j)+"  ");
	}
	System.out.println();
}   */
%>
<form action="newadminindex.jsp" method="post">
<input type="submit" value="Return to main menu">
</form>
</body>
</html>