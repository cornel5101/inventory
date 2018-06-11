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
		class="navbar-brand" href="#"  style="color: #FFFFFF;">Inventory Management System</a>


	<div class="collapse navbar-collapse" id="navbarSupportedContent" >
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active" ><a class="nav-link" href="#" style="color: #FFFFFF;"><b>Home</b>
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link " href="#" style="color: #FFFFFF;"><b>Logout</b></a></li>
		</ul>
		
	</div>
	</nav>
	<div class="container">
  <h2>Manage Brand</h2>          
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>#</th>
        <th>Brand</th>
         <th>Status</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Electronics</td>
        <td><a href="#" class="btn btn-success btn-sm">Active</a></td>
         <td> 
        <a href="#" class="btn btn-danger btn-sm">Delete</a>
        <a href="#" class="btn btn-info btn-sm">Edit</a></td>
      
      
     
      </tr>
    </tbody>
  </table>
</div>
	

</body>
</html>