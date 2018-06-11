<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/theme/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/bootstrap.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/theme/fonts/font-awesome.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/theme/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/bootstrap.min.js" />"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary "> <a
		class="navbar-brand" href="#">Inventory Management System</a>


	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#"><i
					class="fa fa-home">&nbsp;</i>Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-user">&nbsp;</i>Logout</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	</nav>
	<h1>Home Page</h1>
	<center>
	<div class="container">
		<div class="card" style="width: 18rem; ">
			<img class="card-img-top" src="..." alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<form>
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter email"> <small
							id="emailHelp" class="form-text text-muted">We'll never
							share your email with anyone else.</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Password">
					</div>
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Check
							me out</label>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
	</center>

</body>
</html>