<%@include file="Header.jsp"%>
<br></br>
<form action="PaymentProcess" method="post">
<table align="center" width="40%" class="table table-bordered">
	<tr><td colspan="2">Payment Process</td></tr>
	<tr>
		<td>Payment Mode</td>
		<td>
			<input type="radio" name="pmode" value="CC">Credit Card
			<input type="radio" name="pmode" value="CD">Cash On Delivery
		</td>
	</tr>
	<tr>
		<td>Credit Card</td>
		<td input type="text" name="ccard"></td>	
	</tr>
	<tr>
		<td>Validity<input type="text" name="validity"/></td>
		<td>CVV<input type="text" name="cvv"/></td>
	</tr>
	<tr>
		<td>Name on card</td>
		<td><input type="text" name="cname"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Payment Process"></td>
	</tr>
</table>
</form>
</body>
<%@include file="Footer.jsp" %>