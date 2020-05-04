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

	<section id="payment_container" style="width: 400px; margin: 20px">
		<h2>Make Payment</h2>
		<div class="form-group">
			<label> Amount</label> <input type="number" class="form-control"
				id="p_amount" placeholder="1000">
		</div>
		<div class="form-group">
			<label>Appoinment</label> <input type="number" class="form-control"
				id="p_appo_id" placeholder="1">
		</div>
		<div>
			<input type="radio" name="type" value="online"> <label>Online</label>
			<input type="radio" name="type" value="card"> <label>Card</label>
			<input type="radio" name="type" value="paypal"> <label>Paypal</label>
		</div>

		<div id="online_container">
			<h3>Online Payment</h3>
			<div class="form-group">
				<label>Ref number</label> <input type="text" class="form-control"
					id="p_online_ref" placeholder="1">
			</div>
		</div>
		<div id="card_container">
			<h3>Card Payment</h3>
			<div class="form-group">
				<label>Holder</label> <input type="number" class="form-control"
					id="p_card_holder" placeholder="Jhon">
			</div>
			<div class="form-group">
				<label>Card#</label> <input type="number" class="form-control"
					id="p_card_number" placeholder="48575425421542">
			</div>
			<div class="form-group">
				<label>Year</label> <input type="number" class="form-control"
					id="p_card_y" placeholder="2041">
			</div>
			<div class="form-group">
				<label>Month</label> <input type="number" class="form-control"
					id="p_card_m" placeholder="11">
			</div>
			<div class="form-group">
				<label>Security#</label> <input type="number" class="form-control"
					id="p_card_sec" placeholder="145">
			</div>
		</div>
		<div id="paypal_container">
			<h3>Paypal Payment</h3>
			<div class="form-group">
				<label>Ref number</label> <input type="text" class="form-control"
					id="p_paypal_ref" placeholder="1">
			</div>
		</div>
		<button type="button" onclick="doPay()" class="btn btn-primary">Submit</button>

	</section>

	<section id="refund_container" style="width: 400px; margin: 20px">
		<h2>Make Refund</h2>
		<div class="form-group">
			<label>Refund Amount</label> <input type="number"
				class="form-control" id="refund_amount" placeholder="1000">
		</div>
		<div class="form-group">
			<label>Appinment Id</label> <input type="number" class="form-control"
				id="refund_appo_id" readonly="readonly">
		</div>
		<button type="button" onclick="doRefund()" class="btn btn-primary">Submit</button>
		<button type="button" onclick="cancelRefund()" class="btn btn-danger">Cancel</button>
	</section>

	<table class="table" style="width: 1200px">
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