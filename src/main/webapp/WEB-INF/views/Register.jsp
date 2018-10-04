<head>
<title>Register</title>
</head>
<%@include file="Header.jsp"%>

<form action="addUser" modelAttribute="user" method="post">
<table align="center">
<h3 align="center"><font face="TimenewsRoman"color="black">Please Sign Up Here</font></h3>
<tr><td colspan="2"><center><b><h4><font face="TimenewsRoman"color="black">ENTER TO SIGNUP</font></b></h4></center></td></tr>
<br></br>
<tr><td><b><h4><font face="verdana" color="gold">Full Name</font></h4></b></td><td><input type="text" name="customerName"></td></tr>
<tr><td><b><h4><font face="verdana" color="gold">Username</font></h4></b></td><td><input type="text" name="username"></td></tr>
<tr><td><b><h4><font face="verdana" color="gold">Password</font></h4></b></td><td><input type="password" name="password"></td></tr>
<tr><td><b><h4><font face="verdana" color="gold">Email Id</font></h4></b></td><td><input type="text" name="emailId"></td></tr>
<tr><td><b><h4><font face="verdana" color="gold">Mobile Number</font></h4></b></td><td><input type="text" name="mobileNo"></td></tr>
<tr><td colspan="2"><input type="submit" value="Sign Up" class="btn btn-primary "></td></tr>
</table>
</form>
</body>
<%@include file="Footer.jsp" %>