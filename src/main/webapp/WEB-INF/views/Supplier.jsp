
<%@include file="Header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:if test="${flag}">
<form:form action="addSupplier" modelAttribute="supplier" method="post">
<table align="center">

<tr>
	<td colspan="2"><center><b><font size="4" face="verdana" color="black">Enter Supplier Details</font></b><br></br></center></td>
</tr>
<tr>
	<td><b>Supplier Name</b></td>
	<td>&nbsp<form:input path="supplierName"/></td>
</tr>
<tr>
	<td><b>Supplier Address</b></td>
	<td>&nbsp<form:input path="address"/></td>
</tr>

<tr>
	<td colspan="2"></br><center>
	<input type="submit" value="Insert Supplier" class="btn btn-primary"/>
	</center>
	</td>

</tr>
</table>
</form:form>
</c:if>

<c:if test="${!flag}">
<form:form action="http://localhost:8080/Project_Frontend/UpdateSupplier/${supplier.supplierId}" modelAttribute="supplier" method="post">
<table align="center">

<tr>
	<td colspan="2"><center><b><u> Enter Supplier Details</u></b><br></br></center></td>
</tr>
<tr>
	<td><b>Supplier Name</b></td>
	<td>&nbsp<form:input path="supplierName"/></td>
</tr>
<tr>
	<td><b>Supplier Address</b></td>
	<td>&nbsp<form:input path="address"/></td>
</tr>

<tr>
	<td colspan="2"><center></br>
	<input type="submit" value="Update Supplier" class="btn btn-primary"/>
	</center>
	</td>

</tr>
</table>
</form:form>
</c:if>


<c:if test="${flag}">
<table align="center" class="table table-striped">

<tr><td colspan="8"><center><h3><b>Supplier Detail</b></h3></center></td></tr>

<tr>
	<td><b><font face="verdana" color="gold">Supplier Id</font></b></td>
	<td><b><font face="verdana" color="gold">Supplier Name</font></b></td>
	<td><b><font face="verdana" color="gold">Supplier Address</font></b></td>
	<td><b><font face="verdana" color="gold">Operation</font></b></td>
</tr>
<c:forEach items="${supplierList}" var="supplier">
<tr>
	<td><font face="timesnewroman" color="yellow">${supplier.supplierId }</font></td>
	<td><font face="timesnewroman" color="yellow">${supplier.supplierName }</font></td>
	<td><font face="timesnewroman" color="yellow">${supplier.address }</font></td>
	<td>
	<a href="<c:url value="/deleteSupplier/${supplier.supplierId }"/>"class="btn btn-danger">Delete</a>
	<a href="<c:url value="/editSupplier/${supplier.supplierId }"/>"class="btn btn-info">Edit</a>	
	</td>
</tr>
</c:forEach>
</table>
</c:if>
</body>
<%@include file="Footer.jsp" %>