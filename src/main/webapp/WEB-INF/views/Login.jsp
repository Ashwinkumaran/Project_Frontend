<head>
<title>Login</title>
</head>
<
<%@include file="Header.jsp"%>

<form action="perform_login" method="post">
<table align="center">
<tr><td><h4>Please Log In or <a href="<c:url value="/Register"/>">Register Here</a></h4></td></tr>
<tr><td colspan="2"><center>${errorInfo}</center></td></tr>
<tr><td colspan="2"><center><h4><b>Login Cerdentials</b></h4></center></td></tr>
<br></br>
<tr><td><h6>Enter Your Username</h6></td><td><input type="text" name="username"></td></tr>
<tr><td><h6>Enter Your Password</h6></td><td><input type="password" name="password"></td></tr>
<tr><td colspan="2"><input type="submit" value="Log-In" class="btn "></td></tr>
</table>
</form>
</body>