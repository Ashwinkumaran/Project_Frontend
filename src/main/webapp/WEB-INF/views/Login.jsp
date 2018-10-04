<head>
<title>Login</title>
</head>

<%@include file="Header.jsp"%>

<form action="perform_login" method="post">
<table align="center">
<tr><td><b><h4><font face="TimenewsRoman"color="black">Please Log In or <a href="<c:url value="/Register"/>"><font color="white">Register Here</font></a></font></h4></b></td></tr>
<tr><td colspan="2"><center>${errorInfo}</center></td></tr>
<tr><td colspan="2"><center><h3><b><font face="timesnewroman" color="gold">Login Cerdentials</font></b></h3></center></td></tr>
<br></br>
<tr><td><b><h4><font face="TimenewsRoman"color="yellow"> Enter Your Username</font></h4></b></td><td><input type="text" name="username" maxlength="15" required="required" ></td></tr>
<tr><td><b><h4><font face="TimenewsRoman"color="yellow"> Enter Your Password</font></h4></b></td><td><input type="password" name="password" required="required" ></td></tr>
<tr><td colspan="2"><input type="submit" value="Log-In" class="btn btn-primary "></td></tr>
</table>
</form>
</body>
<%@include file="Footer.jsp" %>