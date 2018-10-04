
<%@include file="Header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:if test="${flag}">
<form:form action="addUserAdmin" modelAttribute="user" method="post">
<table align="center">

<tr>
	<td colspan="2"><center><b><font size="3" face="verdana" color="gold">Enter User Details</font></b><br></br></center></td>
</tr>
<tr>
	<td><b>Username</b></td>
	<td><form:input path="username"/></td>
</tr>
<tr>
	<td><b>Password</b></td>
	<td><form:input path="password"/></td>
</tr>
<tr>
	<td><b>Customer Name</b></td>
	<td><form:input path="customerName"/></td>
</tr>
<tr>
	<td><b>Email Id</b></td>
	<td><form:input path="emailId"/></td>
</tr>
<tr>
	<td><b>Mobile Number</b></td>
	<td><form:input path="mobileNo"/></td>
</tr>
<tr>
	<td><b>Enabled</b></td>
	<td><form:input path="enabled"/></td>
</tr>
<tr>
	<td><b>Role</b></td>
	<td><form:input path="role"/></td>
</tr>

<tr>
	<td colspan="4"><center></br>
	<input type="submit" value="Insert User" class="btn btn-success"/>
	</center>
	</td>

</tr>
</table>
</form:form>
</c:if>

<c:if test="${!flag}">
<form:form action="http://localhost:8080/Project_Frontend/UpdateUser/${user.userId}" modelAttribute="user" method="post">
<table align="center">

<tr>
	<td colspan="2"><center><b><u>Enter User Details</u></b><br></br></center></td>
</tr>
<tr>
	<td><b>Username</b></td>
	<td><form:input path="username"/></td>
</tr>
<tr>
	<td><b>Email Id</b></td>
	<td><form:input path="emailId"/></td>
</tr>
<tr>
	<td><b>Mobile Number</b></td>
	<td><form:input path="mobileNo"/></td>
</tr>
<tr>
	<td><b>Enabled</b></td>
	<td><form:input path="enabled"/></td>
</tr>
<tr>
	<td><b>Role</b></td>
	<td><form:input path="role"/></td>
</tr>

<tr>
	<td colspan="4"><center></br>
	<input type="submit" value="Update User" class="btn btn-success "/>
	</center>
	</td>

</tr>
</table>
</form:form>
</c:if>


<c:if test="${flag}">
<table align="center" class="table table-striped">
<tr><td colspan="7"><center><h3><b><font face="verdana" color="black">User Details</font></b></h3></center></td></tr>
<tr>

	<td><b><font face="verdana" color="gold">User Id</font></b></td>
	<td><b><font face="verdana" color="gold">Username</font></b></td>
	<td><b><font face="verdana" color="gold">Enabled</font></b></td>
	<td><b><font face="verdana" color="gold">Role</font></b></td>
	<td><b><font face="verdana" color="gold">Mobile Number</font></b></td>
	<td><b><font face="verdana" color="gold">Email Id</font></b></td>
	<td><b><font face="verdana" color="gold">Operation</font></b></td>
	</font>
</tr>
<c:forEach items="${userList}" var="user">
<tr>
	<td>${user.userId }</td>
	<td>${user.username }</td>
	<td>${user.enabled }</td>
	<td>${user.role }</td>
	<td>${user.mobileNo }</td>
	<td>${user.emailId }</td>
	<td>
	<a href="<c:url value="/deleteUser/${user.userId }"/>" class="btn btn-danger">Delete</a>
	<a href="<c:url value="/editUser/${user.userId }"/>" class="btn btn-success">Edit</a>	
	</td>
</tr>
</c:forEach>
</table>
</c:if>
</body>
<%@include file="Footer.jsp" %>