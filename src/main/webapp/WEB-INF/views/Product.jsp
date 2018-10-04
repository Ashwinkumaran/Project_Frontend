
<%@include file="Header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:if test="${flag}">
<form:form action="addProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<table align="center">

<tr>
	<td colspan="2"><center><b><u><font size="4" face="verdana" color="black">Enter Product Detail</font></u></b></br></center></td>
</tr>
<tr>
	<td><b>Product Name</b></td>
	<td>&nbsp<form:input path="productName"/></td>
</tr>
<tr>
	<td><b>Price</td>
	<td>&nbsp<form:input path="price"/></td>
</tr>
<tr>
	<td><b>Stock</b></td>
	<td>&nbsp<form:input path="quantity"/></td>
</tr>
<tr>
	<td><b>Category</b></td>
	<td>&nbsp<form:select path="categoryId">
	<form:option value="0" label="Select List"/>
	<form:options items="${categoryList }"/>
	</form:select></td>
</tr>
<tr>
	<td><b>Supplier</b></td>
	<td>&nbsp<form:input path="supplierId"/></td>
</tr>
<tr>
	<td><b>Product Description</b></td>
	<td>&nbsp<form:input path="productDesc"/></td>
</tr>
<tr>
<td><b>Product Image</b></td>
<td>&nbsp<form:input type="file" path="pimage"/></td>
</tr>

<tr>
	<td colspan="2"><center>
	</br><input type="submit" value="Insert Product" class="btn btn-primary"/>
	</center>
	</td>

</tr>
</table>
</form:form>
</c:if>

<c:if test="${!flag}">
<form:form action="http://localhost:8080/Project_Frontend/updateProduct/${product.productId}" modelAttribute="product" method="post" enctype="multipart/form-data">
<table align="center">

<tr>
	<td colspan="2"><center><b><u>Enter Product Detail</u></b></br></center></td>
</tr>
<tr>
	<td><b>Product Name</b></td>
	<td>&nbsp<form:input path="productName"/></td>
</tr>
<tr>
	<td><b>Price</b></td>
	<td>&nbsp<form:input path="price"/></td>
</tr>
<tr>
	<td><b>Stock</b></td>
	<td>&nbsp<form:input path="quantity"/></td>
</tr>
<tr>
	<td><b>Category</b></td>
	<td><form:select path="categoryId">
	<form:option value="0" label="Select List"/>
	<form:options items="${categoryList }"/>
	</form:select></td>
</tr>
<tr>
	<td><b>Supplier</b></td>
	<td>&nbsp<form:input path="supplierId"/></td>
</tr>
<tr>
	<td><b>Product Description</b></td>
	<td>&nbsp<form:input path="productDesc"/></td>
</tr>
<tr>
	<td colspan="2"><br></br><center>
	<input type="submit" value="Update Product" class="btn btn-info"/>
	</center>
	</td>

</tr>
</table>
</form:form>
</c:if>


<c:if test="${flag}">
<table align="center" class="table table-striped">
<tr><td colspan="8"><center><h3><b>Product Detail</b></h3></center></td></tr>
<tr>
	<td><b><font face="verdana" color="gold">Product Id</font></b></td>
	<td><b><font face="verdana" color="gold">Product Name</font></b></td>
	<td><b><font face="verdana" color="gold">Product Description</font></b></td>
	<td><b><font face="verdana" color="gold">Price</font></b></td>
	<td><b><font face="verdana" color="gold">Stock</font></b></td>
	<td><b><font face="verdana" color="gold">Category</font></b></td>
	<td><b><font face="verdana" color="gold">Supplier</font></b></td>
	<td><b><font face="verdana" color="gold">Operation</font></b></td>
</tr>
<c:forEach items="${productList}" var="product">
<tr>
	<td><font face="timesnewroman" color="yellow">${product.productId }</font></td>
	<td><font face="timesnewroman" color="yellow">${product.productName }</font></td>
	<td><font face="timesnewroman" color="yellow">${product.productDesc }</font></td>
	<td><font face="timesnewroman" color="yellow">${product.price }</font></td>
	<td><font face="timesnewroman" color="yellow">${product.quantity }</font></td>
	<td><font face="timesnewroman" color="yellow">${product.categoryId}</font></td>
	<td><font face="timesnewroman" color="yellow">${product.supplierId }</font></td>
	<td>
	<a href="<c:url value="/deleteProduct/${product.productId }"/>" class="btn btn-danger">Delete</a>
	<a href="<c:url value="/editProduct/${product.productId }"/>" class="btn btn-info">Edit</a>	
	</td>
</tr>
</c:forEach>
</table>
</c:if>
</body>
<%@include file="Footer.jsp" %>