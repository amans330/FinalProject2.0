<!DOCTYPE html>

<html lang="en">



<head>



  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <meta name="description" content="">

  <meta name="author" content="">



  <title>Business Casual - Start Bootstrap Theme</title>



  <!-- Bootstrap core CSS -->

  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">



  <!-- Custom fonts for this template -->

  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">



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
						class="nav-link text-uppercase text-expanded" href="index.jsp">Home</a>
						<span class="sr-only">(current)</span>
					</li>
					
					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded" href="trending.jsp">Trending</a>
					</li>

					<div class="dropdown">
						<li class="nav-item active px-lg-4"><a
							class="nav-link text-uppercase text-expanded" href="index.jsp">Genres</a>
							<div class="dropdown-content">
								<a href="MyServlet?genre=children">Children</a> <a
									href="MyServlet?genre=drama">Drama</a> 
									<a href="MyServlet?genre=nonfiction">Non-Fiction</a>
								<a href="MyServlet?genre=fantasy">Fantasy</a> <a
									href="MyServlet?genre=horror">Horror</a> <a
									href="MyServlet?genre=comics">Comics</a> <a
									href="MyServlet?genre=political">Political</a>
							</div></li>
					</div>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="publish.jsp">Publish</a></li>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="getChats">Community</a></li>

					<li class="nav-item active px-lg-4"><a
						class="nav-link text-uppercase text-expanded"
						href="logout">Logout</a></li>
				</ul>

			</div>

		</div>

	</nav>

  <section class="page-section about-heading">

    <div class="container">

      <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="img/about.jpg" alt="">

      <div class="about-heading-content">

        <div class="row">

          <div class="col-xl-9 col-lg-10 mx-auto">

            <div class="bg-faded rounded p-5">

              <h2 class="section-heading mb-4">

                <span class="section-heading-upper">So many books, so little time!</span>

                <span class="section-heading-lower">About Our Book Bhandar</span>

              </h2>

              <p>Founded in 1950s by the <b>Solanki household</b>, our establishment has been the source of great books by both local and international writers from various regions of the world. We are dedicated to finding the best book and bringing back to you.</p>



            </div>

          </div>

        </div>

      </div>

    </div>

  </section>



  <footer class="footer text-faded text-center py-5">

    <div class="container">

      <p class="m-0 small">Munna Book Bhandar Inc.</p>

    </div>

  </footer>



  <!-- Bootstrap core JavaScript -->

  <script src="vendor/jquery/jquery.min.js"></script>

  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>



</body>



</html>