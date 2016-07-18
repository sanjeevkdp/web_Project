<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<spring:url value="/resources/css/bootstrap.min.css" var="mainCss" />
	<spring:url value="/resources/js/jquery.min.js" var="jqueryJs" />
	<spring:url value="/resources/js/npm.js" var="mainJs" />
	
	<link href="${mainCss}" rel="stylesheet" />
    <script src="${jqueryJs}"></script>
    <script src="${mainJs}"></script>
</head>
<body>
<div role="navigation" class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" data-target="#navbarCollapse"
					data-toggle="collapse" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Gallery</a>
			</div>
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="log.jsp">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="#">Service</a></li>
					<li class="active"><a  href="#">Login</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<!--login form-->
			<div class="col-sm-4 col-lg-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<b>Login</b>
					</div>
					<div class="panel-body">
						<form role="form" action="loginSuccess" method="post">
							<label for="email">Email:</label> <input type="email"
								class="form-control" name="email" id="email"
								placeholder="Enter email" required=""> <label for="pwd">Password:</label>
							<input type="password" class="form-control" name="password"
								id="pwd" placeholder="Enter password" required="">
							<div class="checkbox">
								<label><input type="checkbox"> Remember me</label>
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>
					</div>
				</div>
			</div>
			<!--SignUp Form-->
			<div class="col-sm-7 col-sm-offset-1 col-lg-7 col-lg-offset-1">
				<div class="panel panel-success">
					<div class="panel-heading" id="panelHeading">Sign Up</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form">
							<label for="name">Name:</label> <input type="text"
								class="form-control" id="name" placeholder="Enter Name"
								required=""> <label for="Contact">Contact
								Number:</label> <input type="text" class="form-control" id="contact"
								placeholder="Enter Contact Number" required=""> <label
								for="dateOfBirth">Date Of Birth:</label> <input type="date"
								class="form-control" id="dateOfBirth"
								placeholder="Enter Date of Birth"> <label for="gender"
								class="control-label">Gender:</label>
							<div>
								<label for="maleGender" class="radio-inline  label-control">
									<input type="radio" name="gender" id="maleGender" required>Male
								</label> <label for="femaleGender" class="radio-inline label-control">
									<input type="radio" name="gender" id="femaleGender" required>Female
								</label>
							</div>
							<label for="email">Email:</label> <input type="email"
								class="form-control" id="email" placeholder="Enter email"
								required=""> <label for="pwd">New Password:</label> <input
								type="password" class="form-control" id="pwd"
								placeholder="New password" required=""> <label for="pwd">Confirm
								Password:</label> <input type="password" class="form-control" id="pwd"
								placeholder="Confirm password" required="">
							<div class="checkbox">
								<label><input type="checkbox"> Remember me</label>
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>