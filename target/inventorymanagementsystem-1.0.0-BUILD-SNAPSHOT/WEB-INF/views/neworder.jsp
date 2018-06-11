<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='<c:url value="/resources/theme/css/bootstrap.min.css" />'
	rel="stylesheet">
<link href='<c:url value="/resources/theme/css/bootstrap.css" />'
	rel="stylesheet">
<script src='<c:url value="/resources/theme/js/bootstrap.js" />'
	type="text/javascript"></script>
<script src='<c:url value="/resources/bootstrap.min.js" />'
	type="text/javascript"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary"> <a
		class="navbar-brand" href="#" style="color: #FFFFFF;">Inventory Management System</a>


	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#" style="color: #FFFFFF;">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#" style="color: #FFFFFF;">Logout</a></li>

		</ul>
	</div>
	</nav>
	<div class="container">
		<br>
		<div class="row">
			<div class="col-sm-10 mx-auto">
				<div class="card" style="box-shadow: 0 0 25px 0 lightgrey;">
					<div class="card-header">
						<h4>New Orders</h4>
					</div>
					<div class="card-body">
						<form>
							<div class="form-group row">
								<label class="col-sm-3" align="right">Order Date</label>
								<div class="col-sm-6">
									<input text="" class="form-control form-control-sm"
										name="eventDate" value="yyy-mm-dd" readonly>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3" align="right">Customer Name</label>
								<div class="col-sm-6">
									<input text="" class="form-control form-control-sm"
										placeholder="Enter Your Name">
								</div>
							</div>

							<div class="card" style="box-shadow: 0 0 25px 0 lightgrey;">
								<div class="card-body">
									<h3>Make a order list</h3>
									<table class="table">
										<thead class="thead-dark">
											<tr>
												<th scope="col">ID</th>
												<th scope="col">Item Name</th>
												<th scope="col">Total Quantity</th>
												<th scope="col">Quantity</th>
												<th scope="col">Price</th>
												<th scope="col">Total</th>
											</tr>
										</thead>
										<tbody id="invoice_item">
											<tr>
												<td><b id-="number">1</b></td>
												<td><select name="pid[]" class="form-control form-control-sm">
												<option>Washing Machine</option>
												<option>Samsung TV</option>
												</select></td>
												<td><input name="tqty[]" type="text" class="form-control form-control-sm" readonly></td>
												<td><input name="qty[]" type="text" class="form-control form-control-sm"></td>
												<td><input name="price[]" type="text" class="form-control form-control-sm" readonly></td>
												<td>#.2500</td>
											</tr>
										</tbody>
									</table><!-- Table ends here -->
									<center>
									<button id="add" style="width:159px;" class="btn btn-success">Add</button>
									<button id="remove" style="width:159px;" class="btn btn-danger">Remove</button>
									</center>
								</div><!-- Card Body ends here -->
							</div><!-- Order card list ends here -->
							<br>
							<div class="form-group row">
							 <label for="gst" class="col-sm-3 col-form-label" align="right">Sub Total</label>
							 <div class="col-sm-6">
							 <input type="text" name="gst" class="form-control form-control-sm" id="sub_total">
							 </div>
							</div>
							<div class="form-group row">
							 <label for="gst" class="col-sm-3 col-form-label" align="right">GST (18%)</label>
							 <div class="col-sm-6">
							 <input type="text" name="gst" class="form-control form-control-sm" id="gst">
							 </div>
							</div>
							<div class="form-group row">
							 <label for="discount" class="col-sm-3 col-form-label" align="right">Discount</label>
							 <div class="col-sm-6">
							 <input type="text" name="discount" class="form-control form-control-sm" id="discount">
							 </div>
							</div>
							<div class="form-group row">
							 <label for="net_total" class="col-sm-3 col-form-label" align="right">Net Total</label>
							 <div class="col-sm-6">
							 <input type="text" name="net_total" class="form-control form-control-sm" id="net_total">
							 </div>
							</div>
							<div class="form-group row">
							 <label for="paid" class="col-sm-3 col-form-label" align="right">Paid</label>
							 <div class="col-sm-6">
							 <input type="text" name="paid" class="form-control form-control-sm" id="paid">
							 </div>
							</div>
							<div class="form-group row">
							 <label for="due" class="col-sm-3 col-form-label" align="right">Due</label>
							 <div class="col-sm-6">
							 <input type="text" name="due" class="form-control form-control-sm" id="gst">
							 </div>
							</div>
							<div class="form-group row">
							 <label for="payment_type" class="col-sm-3 col-form-label" align="right">Payment Method</label>
							 <div class="col-sm-6">
							 <select  name="payment_type" class="form-control form-control-sm" id="payment_type">
							 	<option>Cash</option>
							 	<option>Card</option>
							 	<option>Draft</option>
							 	<option>Cheque</option>
							 </select>
							 </div>
							</div>
							<center>
							<input type="submit" id="order_form" style="width:150px;" class="btn btn-info" value="Order">
							<input type="submit" id="print_invoice" style="width:150px;" class="btn btn-success d-none" value="Print">
							</center>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>


</body>
</html>