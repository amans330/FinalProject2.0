<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/business-casual.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<section class="page-section clearfix">
		<div class="form-container">
			<form id="contact" action="RegisterUser" method="post">
				<h3>Registration Form</h3>
				<fieldset>
					<input name="username" placeholder="Username" type="text" tabindex="1" required
						autofocus>
				</fieldset>
				<fieldset>
					<input name="email" placeholder="Your Email Address" type="email" tabindex="2"
						required>
				</fieldset>
				<fieldset>
					<input name="password" placeholder="Password" type="password" tabindex="3" required>
				</fieldset>
				<fieldset>
					<input name="password1" placeholder="Password" type="password" tabindex="4" required>
				</fieldset>
				<fieldset>
					<button name="submit" type="submit" id="contact-submit"
						data-submit="...Sending">Submit</button>
				</fieldset>
				<p>Already a User? <a href="login.jsp">Login</a></p>
			</form>
		</div>
	</section>
</body>
</html>