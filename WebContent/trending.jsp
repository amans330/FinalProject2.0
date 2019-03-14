<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
	<link href="css/thumbnail-gallery.css" rel="stylesheet">


<style>

.fill {

    background-repeat: no-repeat;

  	background-position: 50% 50%;

  	background-size: cover;

}

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

	<div class="tz-gallery">
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="#">
                    <div class="fill">

                        <img src="img/onlytimewilltell1.jpg" width=100% alt="">

                    </div>

                    </a>

                    <div class="caption">

                        <h3>Only Time Will Tell</h3>

                        <p>This is a first part of the seven in Clifton Chronicles by Jeffrey Archer. The book was published worldwide in 2011. It was launched by Jeffrey Archer himself in Bangalore, India in March 2011.</p>

                    </div>

                </div>

            </div>

            <div class="col-sm-6 col-md-4">

                <div class="thumbnail">

                    <a class="lightbox" href="#">

                    <div class="fill">

                        <img src="img/meluha.jpg" width=100%  alt="">

                    </div>

                    </a>

                    <div class="caption">

                        <h3>The Immortals of Meluha</h3>

                        <p>This is the first novel of the Shiva trilogy series by Amish Tripathi. The story is set in the land of Meluha and starts with the arrival of the Shiva. The Meluhans believe that Shiva is their fabled saviour Neelkanth. </p>

                    </div>

                </div>

            </div>

            <div class="col-sm-6 col-md-4">

                <div class="thumbnail">

                    <a class="lightbox" href="#">

                    <div class="fill">

                        <img src="img/harrypotter1.jpg" width=100% alt="">

                    </div>

                    </a>

                    <div class="caption">

                        <h3>Harry Potter and the Deathly Hallows</h3>

                        <p>This is a fantasy novel written by J. K. Rowling and final novel of the series. The main character Harry Potter has struggled with difficulties of adolescence along with being famous as the only wizard to survive the Killing Curse. </p>

                    </div>

                </div>

            </div>

            <div class="col-sm-6 col-md-4">

                <div class="thumbnail">

                	<a class="lightbox" href="#">

                	<div class="fill">

                        <img src="img/obama.jpg" width=100% alt="">

                    </div>

                    </a>

                    <div class="caption">

                        <h3>Becoming</h3>

                        <p>This is the memoir of former US First Lady Michelle Obama published in 2018. Described as a deeply personal experience, the book talks about her roots and how she found her voice, her time in the White House and her role as a mother.</p>

                    </div>

                </div>

            </div>

            <div class="col-sm-6 col-md-4">

                <div class="thumbnail">

                    <a class="lightbox" href="#">

                        <div class="fill">

                        <img src="img/fireandblood.jpeg" width=100% alt="">

                    	</div>

                    </a>

                    <div class="caption">

                        <h3>Fire & Blood</h3>

                        <p>This is a fantasy book by American writer George R. R. Martin. It is a complete history of House Targaryen, a family from his cycle A Song of Ice and Fire. It is set to cover the history of Westeros from Aegon's Conquest to Aegon III Targaryen. </p>

                    </div>

                </div>

            </div>

            <div class="col-sm-6 col-md-4">

                <div class="thumbnail">

                    <a class="lightbox" href="#">

                        <div class="fill">

                        <img src="img/wind.jpeg" width=100% alt="">

                    	</div>

                    </a>

                    <div class="caption">

                        <h3>The Name of the Wind</h3>

                        <p>Also called The Kingkiller Chronicle: Day One, is a fantasy novel written by American author Patrick Rothfuss. He drew inspiration from the idea that he wanted a completely new kind of book that doesn't have the generic characteristics of fantasy.</p>

                    </div>

                </div>

            </div>

        </div>

    </div>
    
    <footer class="footer text-faded text-center py-5">

    <div class="container">

      <p class="m-0 small">Munna Book Bhandar Inc.</p>

    </div>

  </footer>
</body>
</html>