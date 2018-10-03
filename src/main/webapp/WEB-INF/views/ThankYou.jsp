
<%@include file="Header.jsp"%>
<br><br></br></br>
<table  align="center" class="table-bordered">
<tr bgcolor="white"><td colspan="5"><h3 align="center"><b><u>Your Order</u></b></h3></td></tr>
<tr bgcolor="white">
	<td><b><h4>Order Id</h4></b></td>
	<td><b><h4>Order Date</h4></b></td>
	<td><b><h4>&nbspTotal Amount&nbsp</h4></b></td>
	<td><b><h4>Payment Mode</h4></b></td>
</tr>
<tr bgcolor="white">
<td>&nbsp</td><td>&nbsp</td><td>&nbsp</td><td>&nbsp</td>
</tr>
<c:forEach items="${orderList}" var="orderList">
<tr bgcolor="white">
	<td>${orderList.orderId}</td>
	<td>${orderList.orderDate}</td>
	<td>&nbsp${orderList.totalShoppingAmount}&nbsp</td>
	<td>${orderList.pmode}</td>
</tr>
<tr bgcolor="white">
<td>&nbsp</td><td>&nbsp</td><td>&nbsp</td><td>&nbsp</td>
</tr>
</c:forEach>
</table>
</body>
<h5> <center> <b>Thank you, Your order has been placed.</b></center></h5>
<%@include file="Footer.jsp" %>
