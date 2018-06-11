<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='<c:url value="/resources/theme/css/bootstrap.min.css" />'
	rel="stylesheet">


<script src='<c:url value="/resources/theme/js/jquery-3.3.1.min.js" />'
	type="text/javascript"></script>
<script src='<c:url value="/resources/theme/js/bootstrap.min.js" />'
	type="text/javascript"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary"> <a
		class="navbar-brand" href="#" style="color: #FFFFFF;">Inventory
		Management System</a>


	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/neworder"
				style="color: #FFFFFF;">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#"
				style="color: #FFFFFF;">Link</a></li>

			<li class="nav-item"><a class="nav-link " href="#"
				style="color: #FFFFFF;">Link</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0" action="">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	</nav>

	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="..." alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Profile Info</h5>
						<p class="card-text">Cornelius</p>
						<p class="card-text">
							<i class="fa fa-user">&nbsp;</i>Admin
						</p>
						<p class="card-text">Last Login: xxxx-xx-xx</p>
						<a href="#" class="btn btn-primary">Edit Profile</a>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="jumbotron" style="width: 100%; heght: 100%;">
					<h2>Welcome Admin</h2>
					<div class="row">
						<div class="col-sm-6">
							<h3>Clock API</h3>
						</div>
						<div class="col-sm-6">
							<div class="card">
								<div class="card-header">New Orders Inventory</div>
								<div class="card-body">
									<h5 class="card-title">New Order</h5>
									<p class="card-text">Make Invoices and New Orders</p>
									<a href="#" class="btn btn-primary">New Orders</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Categories</h5>
						<p class="card-text">Here you can add manage categories</p>
						<a href="#" class="btn btn-primary btn-sm " data-toggle="modal"
							data-target="#categorymodal">Add</a> <a href="#"
							class="btn btn-success btn-sm">Manage</a>


					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Brands</h5>
						<p class="card-text">Here you can add and manage your brands</p>
						<a href="#" class="btn btn-primary btn-sm" data-toggle="modal"
							data-target="#brandmodal">Add</a> <a href="#"
							class="btn btn-success btn-sm">Manage</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Products</h5>
						<p class="card-text">Here you can add and manage your products</p>
						<a href="#" class="btn btn-primary btn-sm" data-toggle="modal"
							data-target="#productmodal">Add</a> <a href="#"
							class="btn btn-success btn-sm">Manage</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<!-- Category Modal -->
	<div class="modal fade" id="categorymodal" tabindex="-1" role="dialog"
		aria-labelledby="categorymodal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="categorymodal">Category</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<form>
						<div id="category_form" onsubmit="return false">
							<div class="form-group">
								<label>Category Name</label>
								<form:input path="categoryName" type="text" id="categoryName" placeholder="Enter Category" class="form-control" />
							</div>
							<div class="form-group">
								<label>Parent Category</label> 
								
				<form:select path="parentCat" id=" parentCat" class="form-control" >
                <form:option value="0">Root</form:option>
            </form:select>
							</div>
						</div>
						</form>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Brand Modal -->
	<div class="modal fade" id="brandmodal" tabindex="-1" role="dialog"
		aria-labelledby="brandmodal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="brandmodal">Brand</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="brand_form" onsubmit="return false">
						<div class="form-group">
							<label>Brand Name</label> <input type="text" class="form-control"
								name="category_name" id="category_name"
								placeholder="Enter Brand">
						</div>
						<button type="button" class="btn btn-primary">Add</button>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Product Modal -->
	<div class="modal fade" id="productmodal" tabindex="-1" role="dialog"
		aria-labelledby="productmodal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="productmodal">Product</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="product_form" onsubmit="return false">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Date</label> <input type="date" class="form-control"
									id="added_date" name="added_date">
							</div>
							<div class="form-group col-md-6">
								<label>Product Name</label> <input type="text"
									class="form-control" id="product_name" name="product_name"
									placeholder="Enter Product number">
							</div>
						</div>
						<div class="form-group">
							<label>Category</label> <select class="form-control"
								id="select_cat" name="select_cat">


							</select>
						</div>
						<div class="form-group">
							<label>Brand</label> <select class="form-control"
								id="select_brand" name="select_brand">


							</select>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Product Price</label> <input type="text"
									class="form-control" id="product_price" name="product_price"
									placeholder="Enter Product Price">
							</div>
							<div class="form-group col-md-4">
								<label>Quantity</label> <input type="text" class="form-control"
									id="quantity" name="quantiy" placeholder="Enter Quantity">
							</div>
						</div>
						</form>
						<button type="button" class="btn btn-primary">Add</button>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
</body>
</html>