<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Fly With Me</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">	
<link rel="stylesheet" href="css/stylesheet-index.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/parallax.min.js"></script>
<script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand" href="#"><img src="https://img.icons8.com/fluent/48/000000/around-the-globe.png" /><span class="Header-Logo-Title"><i>Fly With Me</i></span></a>

<button class="navbar-toggler" type="button" data-toggle="collapse"
	data-target="#navbarNav" aria-controls="navbarNav"
	aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
</button>

<p class="Airline-Navbar-text">airlines operating worldwide</p>
<div class="collapse navbar-collapse" id="navbarNav">
	<ul class="navbar-nav ml-auto">
		<li class="nav-item active"><a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a></li>
		<li class="nav-item"><a class="nav-link" href="#input">Booking</a></li>
		<li class="nav-item"><a class="nav-link" href="#containerC">Locations</a></li>
	</ul>
</div>
</nav>

<div class="Top_Break"></div>

<div id="outerContainer">
	<div id="carouselExampleIndicators" id="containerA"
		class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active "> <img class="d-block Carousel_Images parallax-window" id="Top_Break" data-parallax="scroll" speed="2" data-image-src="${pageContext.request.contextPath}/images/Holiday3.jpg" alt="">
			</div>
		</div>
	</div>
</div>

<div class="Top_Break"></div>

<div class="container" id="containerB">
	<form class="form-group" name="loginForm" method="post"
		action="customerFlightsSearch.jsp">

		<div id="form">
			<h3 class="text-white">Booking Details</h3>

			<div class="row" id="input" required>
				<!-- Input3-->
				<select name="Country" id="input-group">
					<option>Departure</option>
					<option value="Ireland">Ireland</option>
					<option value="United States">United States</option>
					<option value="Japan">Japan</option>
					<option value="United Kingdom">United Kingdom</option>
					<option value="France">France</option>
					<option value="China">China</option>
					<option value="Germany">Germany</option>
					<option value="India">India</option>
					<option value="Thailand">Thailand</option>
					<option value="Turkey">Turkey</option>
					<option value="Taiwan">Taiwan</option>
					<option value="United Arab Emirates">United Arab Emirates</option>
					<option value="Netherlands">Netherlands</option>
					<option value="South Korea">South Korea</option>
					<option value="Singapore">Singapore</option>
					<option value="indonesia">Indonesia</option>
					<option value="Mexico">Mexico</option>
					<option value="Russia">Russia</option>
					<option value="Australia">Australia</option>

				</select> <br /> <select name="Destination_Country" class="row"
					id="input-group" required>
					<option>Destination</option>
					<option required value="Ireland">Ireland</option>
					<option value="United States">United States</option>
					<option value="Japan">Japan</option>
					<option value="United Kingdom">United Kingdom</option>
					<option value="France">France</option>
					<option value="China">China</option>
					<option value="Germany">Germany</option>
					<option value="India">India</option>
					<option value="Thailand">Thailand</option>
					<option value="Turkey">Turkey</option>
					<option value="Taiwan">Taiwan</option>
					<option value="United Arab Emirates">United Arab Emirates</option>
					<option value="Netherlands">Netherlands</option>
					<option value="South Korea">South Korea</option>
					<option value="Singapore">Singapore</option>
					<option value="indonesia">Indonesia</option>
					<option value="Mexico">Mexico</option>
					<option value="Russia">Russia</option>
					<option value="Australia">Australia</option>
				</select>


			</div>
			<!--Input-->
			<div class="row" id="input">
				<!-- Input2-->
				<input type="number" id="input-group" placeholder="Passangers" required>
			</div>
			<!-- Input2-->

			<div class="row" id="input">
				<!-- Input3-->
				<input type="text" id="input-group" placeholder="Departure Date Format: (DD-MM-YYYY)" required>
				<input type="text" id="input-group" placeholder="Return Date Format: (DD-MM-YYYY)" required>
			</div>
			<!-- Input3-->

			<div class="row" id="input">
				<!-- Input4-->
				<button class="btn btn-primary" type="submit" value="Next">Search</button>
				<button type="reset" id="reset" value="reset" name="reset" class="btn btn-secondary reset">clear form</button>

			</div>
			<!-- Input4-->

		</div>
		<!--form-->
	</form>
	<!--form-->
</div>

<!--  Small Photos and Parallax Photo -->
<div class="album bg-light pt-5" id="containerC">
	<div class="container">

		<div class="row">

			<div class="col-md-4 Thumbnial-Destination-Photos">
				<div class="card mb-4 box-shadow">
					<img class="card-img-top"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="Thumbnail [100%x225]"
						style="height: 225px; width: 100%; display: block;"
						src="${pageContext.request.contextPath}/images/Ireland.jpg"
						data-holder-rendered="true">
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt labore et
							dolore magna aliqua.</p>
						<div class="d-flex justify-content-between align-items-center">

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 Thumbnial-Destination-Photos">
				<div class="card mb-4 box-shadow">
					<img class="card-img-top"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="Thumbnail [100%x225]"
						src="${pageContext.request.contextPath}/images/Canada.jpg"
						data-holder-rendered="true"
						style="height: 225px; width: 100%; display: block;">
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt labore et
							dolore magna aliqua.</p>
						<div class="d-flex justify-content-between align-items-center">
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 Thumbnial-Destination-Photos">
				<div class="card mb-4 box-shadow">
					<img class="card-img-top"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="Thumbnail [100%x225]"
						src="${pageContext.request.contextPath}/images/China-Shanghai.jpg"
						data-holder-rendered="true"
						style="height: 225px; width: 100%; display: block;">
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt labore etdggdf
							dolore magna aliqua.</p>
					</div>
				</div>
			</div>
			<!-- Parralax Number 2 -->
			<div class="col-md-12 ">
				<div class="card mb-4 box-shadow ParallexImg2">
					<p class="Text-Over-Parallex">
						Book With <i>Fly With Me</i> <span class="delay-today-text">today.</span>
					</p>
				</div>
				<!-- Thumbnail 4 -->
			</div>
			<div class="col-md-4 Thumbnial-Destination-Photos">
				<div class="card mb-4 box-shadow">
					<img class="card-img-top"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="Thumbnail [100%x225]"
						style="height: 225px; width: 100%; display: block;"
						src="${pageContext.request.contextPath}/images/France-Paris.jpg"
						data-holder-rendered="true">
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt labore et
							dolore magna aliqua.</p>
						<div class="d-flex justify-content-between align-items-center">
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 Thumbnial-Destination-Photos">
				<div class="card mb-4 box-shadow">
					<img class="card-img-top"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="Thumbnail [100%x225]"
						src="${pageContext.request.contextPath}/images/singapore.jpg"
						data-holder-rendered="true"
						style="height: 225px; width: 100%; display: block;">
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt labore et
							dolore magna aliqua.</p>
						<div class="d-flex justify-content-between align-items-center">

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 Thumbnial-Destination-Photos">
				<div class="card mb-4 box-shadow">
					<img class="card-img-top"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="Thumbnail [100%x225]"
						src="${pageContext.request.contextPath}/images/Netherlands-Amsterdam.jpg"
						data-holder-rendered="true"
						style="height: 225px; width: 100%; display: block;">
					<div class="card-body">
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt labore etdggdf
							dolore magna aliqua..</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--OuterDiv end-->
	<footer class="container-fluid text-center navbar-fixed-bottom"
		id="containerD">
	<p>Fly @ NiallGr</p>
	<a href="bridge-AdminLogin.jsp">Administration Access</a> </footer>
</div>
	</body>
	<script>
 			 ScrollReveal().reveal('.Text-Over-Parallex',{ delay: 1250 } );
  			ScrollReveal().reveal('.delay-today-text',{ delay: 1750 } );
	</script>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>