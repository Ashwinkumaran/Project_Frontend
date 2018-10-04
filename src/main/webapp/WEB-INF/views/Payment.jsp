<%@include file="Header.jsp"%>
<br></br>
<form action="PaymentProcess" method="post">
<table align="center" width="40%" class="table table-bordered">
	<tr><td colspan="2"><center><font face="timesnewroman" size="4" color="black">Payment Process</font></center></td></tr>
	<tr>
		<td><font face="timesnewroman" color="gold">Payment Mode</font></td>
		<td>
		<font face="timesnewroman" color="yellow">
			<input type="radio" name="pmode" value="CC">Credit Card
			<input type="radio" name="pmode" value="CD">Cash On Delivery
			</font>
		</td>
	</tr>
	<tr>
		<td><font face="timesnewroman" color="gold">Credit Card</font></td>
		<td input type="text" name="ccard"></td>	
	</tr>
	<tr>
		<td><font face="timesnewroman" color="gold">Validity<input type="text" name="validity"/></font></td>
		<td><font face="timesnewroman" color="gold">CVV<input type="text" name="cvv"/></font></td>
	</tr>
	<tr>
		<td><font face="timesnewroman" color="gold">Name on card</font></td>
		<td><input type="text" name="cname"/></td>
	</tr>
	<tr>
		<td colspan="2"><center><input type="submit" value="Payment Process"></center></td>
	</tr>
</table>
</form>
</body>
<%@include file="Footer.jsp" %>