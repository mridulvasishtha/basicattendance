<%@ page language="java" import="com.connection.DConnection,java.util.Date,java.util.Calendar,com.pojo.Users" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int i=Integer.parseInt(request.getParameter("id"));
session.setAttribute("marked"+i,"yes");
DConnection dc=new DConnection();
String[] users =dc.getAllRowsForSingleColumn("select * from users");	
String attend=(String)request.getParameter(users[i]);
Date dt=new Date();
Calendar calendar = Calendar.getInstance();
calendar.setTime(dt);
int day=(calendar.get(Calendar.DAY_OF_MONTH));
int month=(calendar.get(Calendar.MONTH)+1);
int year=calendar.get(Calendar.YEAR);
int userid=Users.gettingUserid(users[i]);
boolean check=Users.checkavailable(userid,day,month,year);
if(check==true)
{
int cnt=dc.setData("insert into attending values('"+userid+"','"+attend+"','"+day+"','"+month+"','"+year+"','"+users[i]+"')");
System.out.print("Insertion is success if "+cnt);
}
else
{
	int cnt=dc.setData("update attending set attend='"+attend+"' where userid='"+userid+"' and day='"+day+"' and month='"+month+"' and year='"+year+"'");
	System.out.print("Update is success if "+cnt);
}

%>

<jsp:forward page="adminindex.jsp"></jsp:forward> 

</body>
</html>