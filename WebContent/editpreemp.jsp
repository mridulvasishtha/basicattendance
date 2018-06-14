<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function myFunction() {
	    var pass1 = document.getElementById("chkdata").value;
	    var ret = true;
	    if (!pass1) {
	        alert("Please write something");
	        ret = false;
	    }
	    return ret;
	}
	</script>
</head>
<body>
<%=session.getAttribute("userid") %>
 Enter the new value for <%=request.getParameter("userclick") %>
 <%-- <%=session.setAttribute("userclick",) %> --%>
<form onsubmit="return myFunction()"  action="editemp.jsp" method="post">
<input type="hidden" name="userclick"  value=<%=request.getParameter("userclick") %>> 
<input type="hidden" name="empid" value=<%=session.getAttribute("userid") %>>
<input type="text" name="data" id="chkdata">


<input type="submit" value="Edit">

</form></body>
</html>