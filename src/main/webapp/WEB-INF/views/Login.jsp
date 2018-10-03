<head>
<title>Login</title>
</head>

<%@include file="Header.jsp"%>

<form action="perform_login" method="post">
<table align="center">
<tr><td><b><h4>Please Log In or <a href="<c:url value="/Register"/>">Register Here</a></h4></b></td></tr>
<tr><td colspan="2"><center>${errorInfo}</center></td></tr>
<tr><td colspan="2"><center><h4><b>Login Cerdentials</b></h4></center></td></tr>
<br></br>
<tr><td><b><h5>Enter Your Username</h5></b></td><td><input type="text" name="username" maxlength="15" required="required" ></td></tr>
<tr><td><b><h5>Enter Your Password</h5></b></td><td><input type="password" name="password" required="required" ></td></tr>
<tr><td colspan="2"><input type="submit" value="Log-In" class="btn btn-primary "></td></tr>
</table>
</form>
</body>
<%@include file="Footer.jsp" %>