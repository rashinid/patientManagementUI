<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payments</title>
<script src="https://code.jquery.com/jquery-3.5.0.min.js"
	integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

</head>
<body>

	<table class="table" style="width: 900px">
		<thead>
			<tr>
				<th scope="col">Type</th>
				<th scope="col">Amount</th>
				<th scope="col">Appo Id</th>
				<th scope="col">PaymentDate</th>
				<th scope="col">RefundAmount</th>
				<th scope="col">Refunded</th>
				<th scope="col">Online Ref#</th>
				<th scope="col">Action</th>
			</tr>

		</thead>
		 <tbody id="payments_details">
		 
		 </tbody>
	</table>

	<script src="js/payments.js"></script>
</body>
</html>