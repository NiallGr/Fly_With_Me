<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fly With Me</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stylesheet-customerRegistration.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="parallax.min.js"></script>
<script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

</head>

<%@page import="java.sql.*"%>

<body>
	<nav class="navbar navbar-expand-lg" id="navbar"> <a class="navbar-brand" href="index.jsp"><img src="https://img.icons8.com/fluent/48/000000/around-the-globe.png" /><span class="Header-Logo-Title"><i>Fly With Me</i></span></a>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<p class="Airline-Navbar-text">airlines operating worldwide</p>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item "><a class="nav-link disabled" href="">Flights</a></li>
			<li class="nav-item active"><a class="nav-link disabled" href="">Registration</a></li>
			<li class="nav-item"><a class="nav-link disabled" href="">Payment</a></li>
			<li class="nav-item"><a class="nav-link disabled" href=""><b>Confirmation</b></a></li>
		</ul>
	</div>
	</nav>
	
	<div class="col-12 pt-4 text-left">
		<h1 class="pb-3 pl-3 text-center">Congratulations!</h1>
		<div class="row ">
			<div class="col-sm-6" id="formPaymentConformation">
				<form class="card" method="POST" action="#">

		<%
	      		Connection con;
				PreparedStatement pst;
				ResultSet rs;
				

				String url = "*********";
				String db = "flight_data?useSSL=FALSE";
				String driver = "com.mysql.cj.jdbc.Driver";
				Class.forName(driver);
				con = DriverManager.getConnection(url + db, "******", "********");
				
				String id = request.getParameter("id");
				String DepartureAirport = request.getParameter("Departure_Airport");  
				String Country = request.getParameter("Country");  
				String DepartureDate = request.getParameter("Departure_Date");  
				String DestinationAirport = request.getParameter("Destination_airport");  
				String DestinationCountry = request.getParameter("Destination_Country");  
				String ReturnDate = request.getParameter("Return_Date");  
				String Price = request.getParameter("Price");  
	      		
				pst = con.prepareStatement("SELECT * FROM flights where id = ?");
				pst.setString(1, id);
				rs = pst.executeQuery();
				
				while(rs.next())
				{
					
	      		%>

					<div class="form" id="ConformationEmailText">
						<h3>
							<p>- Payment successful, Your flights are booked.</p>
							<br>
							<p>
								- You are departing from
								<%= rs.getString("Departure_Airport")%>
								on
								<%= rs.getString("Departure_Date")%>.
							</p>
							<br>
							<p>
								- Arrival Destination location of
								<%= rs.getString("Destination_airport")%>
								Return flight on
								<%= rs.getString("Return_Date")%>.
							</p>
							<br>
							<p>
								- From all of us at <i>'Fly With Me'</i>, We hope you have a
								wonderful trip.
							</p>
						</h3>
					</div>
					<% 
	      		}
				%>
				</form>
			</div>

			<div class="col-sm-6">
				<img class="img-fluid ml-5 pl-5"
					src="https://img.icons8.com/clouds/600/000000/airplane-take-off.png" />
			</div>
		</div>
		<!--OuterDiv end-->
	</div>

</body>
</html>