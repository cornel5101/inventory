<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='<c:url value="/resources/theme/css/bootstrap.min.css" />'rel="stylesheet">


<script src='<c:url value="/resources/theme/js/jquery-3.3.1.min.js" />'type="text/javascript"></script>
<script src='<c:url value="/resources/theme/js/bootstrap.min.js" />'
	type="text/javascript"></script>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary"> <a
		class="navbar-brand" href="#">Inventory Management System</a>


	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>

			<li class="nav-item"><a class="nav-link " href="#">Link</a></li>
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
		<div class="card mx-auto" style="width: 30rem;">
			<div class="card-header"><center><h3>Register</h3></center></div>
			<div class="card-body">
				<form id="register_form" onsubmit="return false" autucomplete="off">
					<div class="form-group">
						<label for="username">Username</label> 
						<input type="text" class="form-control" id="username" placeholder="Enter Username"> 
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter email"> <small
							id="emailHelp" class="form-text text-muted">We'll never
							share your email with anyone else.</small>
					</div>
					<div class="form-group">
						<label for="password1">Password</label> 
						<input type="password" class="form-control" id="password1"  placeholder="password"> 
					</div>
					<div class="form-group">
						<label for="password2">Re-enter Password</label> <input
							type="password" class="form-control" id="password2" placeholder="Password">
					</div>
					<div class="form-group">
						<label for="usertype">User Type</label>
						<select name="usertype" class="form-control" id="usertype">
							<option value="1">Admin</option>
							<option value="0">Other</option>
						</select>	
					</div>
					<button type="submit" class="btn btn-primary">Register</button>
					<button type="submit" class="btn">Login</button>
				
				</form>
			</div>
			<div class="card-footer text-muted"></div>
		</div>
</body>
</html>