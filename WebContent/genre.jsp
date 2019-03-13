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
<title>BookReview</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/business-casual.min.css" rel="stylesheet">
<link href="css/product-list-vertical.css" rel="stylesheet">

<style>
.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 140px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 10px 10px;
	text-decoration: none;
	display: block;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}
</style>
</head>
<body>
	<a class="dropdown-item" href="MyServlet?genre=children">Children</a>

	<h1 class="site-heading text-center text-white d-none d-lg-block">
		<span class="site-heading-upper text-primary mb-3">Munna Book
			Bhandar</span> <span class="site-heading-lower">Read On!! </span>
	</h1>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
		<div class="container">
			<!--<a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a> -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav mx-auto">

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="index.html">Trending</a>

						<span class="sr-only">(current)</span> </a></li>

					<div class="dropdown">
						<li class="nav-item active px-lg-4"><a
							class="nav-link text-uppercase text-expanded" href="about.html">Genres</a>
							<div class="dropdown-content">
								<a href="MyServlet?genre=children">Children</a> <a
									href="genredetails.html">Drama</a> <a href="genredetails.html">Non-Fiction</a>
								<a href="genredetails.html">Fantasy</a> <a
									href="MyServlet?genre=horror">Horror</a> <a
									href="genredetails.html">Mystery</a> <a
									href="genredetails.html">Political</a>
							</div></li>
					</div>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="membership.html">Membership</a></li>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="getChats">Community</a></li>

				</ul>

			</div>

		</div>

	</nav>

	<div class="container">
		<%@page import="com.project.Books"%>
		<%@page import="java.util.ArrayList"%>

		<%
			ArrayList<Books> books = (ArrayList<Books>) request.getAttribute("booklist");
			if (books != null) {
				for (Books book : books) {
		%>

		<section class="page-section about-heading">
			<ul class="product-list-vertical">
				<li><a href="#" class="product-photo"> <img
						src="img/bookimg.jpg" height="160" alt="iPhone 6" />
				</a>
					<div class="product-details">
						<h2><%=book.getBookname()%></h2>
						<div class="product-rating">
							<div>
								<span class="product-stars" style="width: 60px"> <i
									class="fa fa-star"></i><i class="fa fa-star"></i><i
									class="fa fa-star"></i><i class="fa fa-star"></i><i
									class="fa fa-star"></i>
								</span>
							</div>
							<h4><%=book.getAuthor_name()%></h4>
						</div>
						<p class="product-description"><%=book.getDescription()%></p>
						<p>
						<h4><%=book.getGenre()%></h4>
						</p>
						<p><%=book.getPublishedDate()%></p>
					</div></li>
			</ul>
		</section>
		<%
			}
			}
		%>
	</div>

	<footer class="footer text-faded text-center py-5">

		<div class="container">

			<p class="m-0 small">Mumma Book Bhandar Inc.</p>

		</div>

	</footer>



	<!-- Bootstrap core JavaScript -->

	<script src="vendor/jquery/jquery.min.js"></script>

	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>