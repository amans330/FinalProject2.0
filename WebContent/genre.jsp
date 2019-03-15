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
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
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
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
.dropdown {

 	 position: relative;

 	 display: inline-block;

	}



	.dropdown-content {

 	 display: none;

 	 position: absolute;

 	 background-color: #FFEBCD;

 	 min-width: 140px;

 	 box-shadow: white;

 	 z-index: 1;

	}



	.dropdown-content a {

	  color: black;

 	 padding: 10px 10px;

 	 position: relative;

 	 text-decoration: none;

 	 text-align: left;

  	display: block;

	}

	.dropdown:hover .dropdown-content {display: block;}

	.dropdown-content a:hover {background-color: #CD853F;}

.myButton {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #cd863f
		), color-stop(1, #c4792f));
	border-radius: 10px;
	border: 1.5px solid #0b0d0c;
	display: inline-block;
	cursor: pointer;
	color: #fff1db;
	padding: 7px 13px;
}

.myButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c4792f
		), color-stop(1, #cd863f));
}

.myButton:active {
	position: relative;
	top: 1px;
}

.starrating > input {display: none;}  /* Remove radio buttons */

.starrating > label:before { 
  content: "\f005"; /* Star */
  margin: 2px;
  font-size: 2em;
  font-family: FontAwesome;
  display: inline-block; 
}

.starrating > label
{
  color: #222222; /* Start color when not clicked */
}

.starrating > input:checked ~ label
{ color: #ffca08 ; } /* Set yellow color when star checked */

.starrating > input:hover ~ label
{ color: #ffca08 ;  } /* Set yellow color when star hover */

a[href], a[href]:hover {color: black;  text-decoration: none}
</style>
</head>
<body>
	<h1 class="site-heading text-center text-white d-none d-lg-block">

		<span class=""></span> <span
			class=" site-heading-upper text-primary mb-3 site-heading-lower"><b>Munna
				Book Bhandar</b></span>

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
						class="nav-link text-uppercase text-expanded" href="index.jsp">Home</a>
						<span class="sr-only">(current)</span></li>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="trending.jsp">Trending</a>
					</li>

					<div class="dropdown">
						<li class="nav-item active px-lg-4"><a
							class="nav-link text-uppercase text-expanded" href="index.jsp">Genres</a>
							<div class="dropdown-content">
								<a href="MyServlet?genre=children">Children</a> <a
									href="MyServlet?genre=drama">Drama</a> <a
									href="MyServlet?genre=nonfiction">Non-Fiction</a> <a
									href="MyServlet?genre=fantasy">Fantasy</a> <a
									href="MyServlet?genre=horror">Horror</a> <a
									href="MyServlet?genre=comics">Comics</a> <a
									href="MyServlet?genre=political">Political</a>
							</div></li>
					</div>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="publish.jsp">Publish</a></li>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="getChats">Community</a></li>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="logout">Logout</a></li>
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
				<li style="background-color: #ffebcd"><a href="#"
					class="product-photo"> <img src="img/bookimg.jpg" height="160"
						alt="iPhone 6" />
				</a>
					<div class="product-details">
						<h4><b><%=book.getBookname()%></b></h4>
						<div class="mycontainer">
							<div
								class="starrating risingstar d-flex justify-content-center flex-row-reverse">
								<input type="radio" id="star5" name="rating" value="5" /><label
									for="star5" title="5 star"></label> <input type="radio"
									id="star4" name="rating" value="4" /><label for="star4"
									title="4 star"></label> <input type="radio" id="star3"
									name="rating" value="3" /><label for="star3" title="3 star"></label>
								<input type="radio" id="star2" name="rating" value="2" /><label
									for="star2" title="2 star"></label> <input type="radio"
									id="star1" name="rating" value="1" /><label for="star1"
									title="1 star"></label>
							</div>
						</div>
						<div class="product-rating"> 
							<div>
								<span class="product-stars" style="width: 60px"> <i
									class="fa fa-star"></i><i class="fa fa-star"></i><i
									class="fa fa-star"></i><i class="fa fa-star"></i><i
									class="fa fa-star"></i>
								</span>
							</div>
							<h2>
								-by
								<%=book.getAuthor_name()%></h2>
						</div>
						<p class="product-description"><%=book.getDescription()%></p>
						<p>
						<h2>
							Genre:
							<%=book.getGenre()%></h2>
						</p>
						<p>
							Published On:
							<%=book.getPublishedDate()%></p>
						<b>GET A COPY</b>
						<form action="/action_page.php" method="get">
							<p class="myButton">
								<a href="https://www.amazon.com/">Amazon</a>
							</p>
							<p class="myButton">
								<a href="https://library.pdx.edu/">Library</a>
							</p>
							<p class="myButton">
								<a href="https://www.gutenberg.org/">Download eBook</a>
							</p>
						</form>
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