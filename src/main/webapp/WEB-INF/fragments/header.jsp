<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Spring Boot Rocks</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/webjars/datatables/1.10.19/css/jquery.dataTables.min.css">

<link rel="stylesheet" href="/webjars/font-awesome/5.3.1/css/all.css">
<link href="${contextPath}/resources/css/main.css" rel="stylesheet">
<link rel="stylesheet"
	href="/webjars/datatables/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="/webjars/font-awesome/5.3.1/css/all.css">

<header>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar-brand" href="#">SPRING ENTERPRISE</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">
				<!-- 				<li class="nav-item active"><a class="nav-link" -->
				<!-- 					href="/registration">Register</a></li> -->
				
					<li class="nav-item active"><a class="nav-link" href="/">Home
							<span class="sr-only">(current)</span>
					</a></li>

					<li class="nav-item dropdown active"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Drop Down List</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
							<div class="dropdown-divider"></div>
							<h6 class="text-muted" href="#">Group1</h6>
							<a class="dropdown-item" href="#"> Somelink </a> <a
								class="dropdown-item" href="#"> Somelink </a> <a
								class="dropdown-item" href="#"> Somelink </a> <a
								class="dropdown-item" href="#"> Search </a> <a
								class="dropdown-item" href="#"> Delegate</a> <a
								class="dropdown-item" href="#"> Messages</a>
							<h6 class="text-muted" href="#">Reports</h6>
							<a class="dropdown-item" href="#"> This Month</a> <a
								class="dropdown-item" href="#"> Last quarter</a> <a
								class="dropdown-item" href="#"> Yearly </a>
						</div></li>


					<!-- 					<li class="nav-item active"><a class="nav-link active" -->
					<!-- 						href="/userlist">Manage Users</a></li> -->


					<!--<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>	</li> -->
			</ul>


			<div class="btn-group">
				<button type="button" class="btn btn-danger dropdown-toggle btn-sm"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Super Admin</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/">Manage Users</a> 
						
						<a class="dropdown-item" href="#">More Actions</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">And Some More</a>
				</div>
			</div>


			
			<form class="form-inline mt-2 mt-md-0">
				<input class="form-control form-control-sm mr-sm-2" type="text"
					placeholder="Search" aria-label="Search">
				<button class="btn  btn-sm btn-success my-2 my-sm-0" type="submit">Search</button>
			</form>
			<a href="${contextPath}/" class="btn btn-warning btn-sm" 
				role="button" aria-pressed="true"><i class="fas fa-sign-out-alt"></i>
				Logout</a>
			
		</div>
	</nav>
</header>

<!-- <nav class="col-md-100 d-none d-md-block bg-light sidebar"> -->
<!-- 	<div class="sidebar-sticky"> -->
<!-- 		<br> -->
<!-- 		<h6 -->
<!-- 			class="sidebar-heading justify-content-between align-items-center px-3 text-muted"> -->
<!-- 			<span>Activities</span> <a -->
<!-- 				class="d-flex align-items-center text-muted" href="#"> </a> -->
<!-- 		</h6> -->
<!-- 		<ul class="nav flex-column"> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					All Cases <span class="sr-only">(current)</span> -->
<!-- 			</a></li> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					Assigned to my role </a></li> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					Assigned to my group </a></li> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					Search Cases </a></li> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					Delegate </a></li> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					Messages </a></li> -->
<!-- 		</ul> -->

<!-- 		<h6 -->
<!-- 			class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted"> -->
<!-- 			<span>Reports</span> <a class="d-flex align-items-center text-muted" -->
<!-- 				href="#"> </a> -->
<!-- 		</h6> -->
<!-- 		<ul class="nav flex-column mb-2"> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					This month </a></li> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					Last quarter </a></li> -->
<!-- 			<li class="nav-item"><a class="nav-link active" href="#"> -->
<!-- 					Year-end report </a></li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
<!-- </nav> -->

</head>
