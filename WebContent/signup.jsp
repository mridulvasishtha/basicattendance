<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
	function validate() {
	    var pass1 = document.getElementById("pass1").value;
	    var pass2 = document.getElementById("pass2").value;
	    if (pass1 != pass2) {
	        document.getElementById("pass1").style.borderColor = "#E34234";
	        document.getElementById("pass2").style.borderColor = "#E34234";
	    }
	}
	function myFunction() {
	    var pass1 = document.getElementById("pass1").value;
	    var pass2 = document.getElementById("pass2").value;
	    var firnam= document.getElementById("fn").value;
	    var lasnam= document.getElementById("ln").value;
	    var usenam= document.getElementById("un").value;
	    var ret = true;
	    var ret1=true;
	    var ret2=true;
	    var ret3=true;
	    var ret4=true;
	    var ret5=true;
	   /*  if (!pass1 || !fn ) {
	        alert("Please write "+document.getElementById("fn").name);
	        ret1 = false;
	    }
	    if (pass1 != pass2) {
	        alert("Passwords Do not match");
	        ret2 = false;
	    }
	    if(ret1==false || ret2==false)
	    	{
	    ret=false;
	    	} */
	    	if (!firnam ) {
		        alert("Please write "+document.getElementById("fn").name);
		        ret1 = false;
	    	}
	    	else if (!lasnam ) {
		        alert("Please write "+document.getElementById("ln").name);
		        ret2 = false;
	    	}
	    	else if (!usenam ) {
		        alert("Please write "+document.getElementById("un").name);
		        ret3 = false;
	    	}
	    	else if (!pass1 ) {
		        alert("Please write "+document.getElementById("pass1").name);
		        ret4 = false;
	    	}
	    	else if (pass1 != pass2) {
		        alert("Passwords Do not match");
		        ret5 = false;
		    }
	    	if(ret1==false || ret2==false || ret3==false || ret4==false || ret5==false)
	    	{
	    ret=false;
	    	}
		   return ret;    
	}

	
	</script>

</head>
<body>

<body>
<%-- <%
	session=request.getSession(false);
	if(session==null || session.getAttribute("username")==null || session.getAttribute("username")=="")
	{
%>
 --%>
 <form onsubmit="return myFunction()" method="post" action="signupcheck.jsp">
 <div>Enter Firstname*<input type="text" name="firstname" id="fn" ></div>
 <div>Enter Lastname*<input type="text" name="lastname" id="ln"></div>
 <div>Enter Username*<input type="text" name="username" id="un"></div>
 <div>Enter Email<input type="email" name="email" ></div>
 <div>Enter Password*<input type="password" name="password" id="pass1"></div>
 <div>Re-type password<input type="password" onblur="validate()" name="pass2" id="pass2"></div>
 <div><button type="submit" >Sign Up</button></div>
</form>
'*' <span style="color:#900;">denotes mandatory fields</span>
<%-- <%
	}
	else
	{
%>
		<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>

 --%></body>
</html>