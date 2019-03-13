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

<style>



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



	body {

 	 background-color: #91ced4;

	}

	img {

 	 border-radius: 30%;

	}

	.table-users {

 	 border: 1.5px solid #000000;

  	border-radius: 10px;

  	box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);

  	max-width: calc(100% - 2em);

  	margin: 1em auto;

  	overflow: hidden;

  	width: 800px;

	}

	table {

 	 width: 100%;

	}

	table td, table th {

  	color: #2b686e;

    padding: 10px;

	}

	table td {

  	text-align: center;

  	vertical-align: middle;

	}

	table td:last-child {

  	font-size: 0.95em;

  	line-height: 1.4;

  	text-align: left;

	}

	table th {

  	background-color: #CD853F; ----

  	font-weight: 300;

	}

	table tr {

  	background-color: #FFEBCD;

	}

	table th{

 	 color:#000000; 

	}

	table td{

  	color:#000000; 

	}
	
	.frm {

  border-radius: 5px;
	
  background-color: #FFEBCD;

  

}

	

input[type=text], select {

  width: 65%;

  padding: 12px 12px;

  margin: 8px 0;

  display: inline-block;

  border: 1px solid black;

  border-radius: 4px;

  box-sizing: border-box;

}



input[type=submit] {

  

  background-color: #CD853F;

  color: white;

  padding: 14px 20px;

  margin: 8px 0;

  border: none;

  border-radius: 3px;

  cursor: pointer;

}

}



 </style>

</head>
<body>
	 <h1 class="site-heading text-center text-white d-none d-lg-block">

   	 <span class=""></span>

   	 <span class=" site-heading-upper text-primary mb-3 site-heading-lower"><b>Munna Book Bhandar</b></span>

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
						class="nav-link text-uppercase text-expanded" href="index.jsp">Trending</a>

						<span class="sr-only">(current)</span> </a></li>

					<div class="dropdown">
						<li class="nav-item active px-lg-4"><a
							class="nav-link text-uppercase text-expanded" href="index.jsp">Genres</a>
							<div class="dropdown-content">
								<a href="MyServlet?genre=children">Children</a> <a
									href="genredetails.html">Drama</a> <a href="genredetails.html">Non-Fiction</a>
								<a href="genredetails.html">Fantasy</a> <a
									href="MyServlet?genre=horror">Horror</a> <a
									href="MyServlet?genre=comics">Comics</a> <a
									href="genredetails.html">Political</a>
							</div></li>
					</div>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="publish.jsp">Publish</a></li>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="getChats">Community</a></li>

				</ul>

			</div>

		</div>

	</nav>
	

	<section class="page-section clearfix">
		<div class="form-container">
			<form id="contact" action="publishbook" method="post">
				<h3>Upload Books</h3>
				<fieldset>
					<input name="bookname" placeholder="Bookname" type="text" tabindex="1" required
						autofocus>
				</fieldset>
				<fieldset>
					<input name="author" placeholder="Author Name" type="text" tabindex="2"
						required>
				</fieldset>
				<fieldset>
					<input name="genre" placeholder="Genre" type="text" tabindex="3" required>
				</fieldset>
				<fieldset>
					<input name="description" placeholder="Description" type="text" tabindex="4" required>
				</fieldset>
				<fieldset>
					<input name="publisheddate" placeholder="Published On" type="text" tabindex="5" required>
				</fieldset>
				<fieldset>
					<button name="submit" type="submit" id="contact-submit"
						data-submit="...Sending">Publish</button>
				</fieldset>
			</form>
		</div>
	</section>

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