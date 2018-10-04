<%@include file="Header.jsp"%>
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
<h3> <center> <b><font face="timesnewroman" color="gold">Thank you, Your order has been placed.</font></b></center></h3>
<%@include file="Footer.jsp"%>


