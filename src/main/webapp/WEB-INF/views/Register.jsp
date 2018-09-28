<head>
<title>Login</title>
</head>
<%@include file="Header.jsp"%>

<form action="addUser" modelAttribute="user" method="post">
<table align="center">
<h3 align="center">Please Sign Up Here</h3>
<tr><td colspan="2"><center><h5><l>Enter TO Signup</l></b></h5></center></td></tr>
<br></br>
<tr><td><b><h4>Full Name</h4></b></td><td><input type="text" name="customerName"></td></tr>
<tr><td><b><h4>Username</h4></b></td><td><input type="text" name="username"></td></tr>
<tr><td><b><h4>Password</h4></b></td><td><input type="password" name="password"></td></tr>
<tr><td><b><h4>Email Id</h4></b></td><td><input type="text" name="emailId"></td></tr>
<tr><td><b><h4>Mobile Number</h4></b></td><td><input type="text" name="mobileNo"></td></tr>
<tr><td colspan="2"><input type="submit" value="Sign Up" class="btn "></td></tr>
</table>
</form>
</body>