<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fly With Me</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/stylesheet-customerRegistration.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="parallax.min.js"></script>
<script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
</head>

<%@page import="java.sql.*"%>
<body>
	<nav class="navbar navbar-expand-lg "> <a class="navbar-brand" href="index.jsp"><img src="https://img.icons8.com/fluent/48/000000/around-the-globe.png" /><span class="Header-Logo-Title"><i>Fly With Me</i></span></a>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<p class="Airline-Navbar-text">airlines operating worldwide</p>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item "><a class="nav-link disabled" href="">Flights </a></li>
			<li class="nav-item active"><a class="nav-link disabled" href="">Registration</a></li>
			<li class="nav-item"><a class="nav-link disabled" href=""><b>Payment</b></a></li>
			<li class="nav-item"><a class="nav-link disabled" href="">Confirmation</a></li>
		</ul>
	</div>
	</nav>

	<div class="col-12 pt-3 text-left">

		<%
	      		
	      		Connection connection = null;
	      		Statement statement = null;
	      		ResultSet resultSet = null;
			
	

		
	        String dbURL = "********";
	        String dbName = "customers?useSSL=FALSE"; 
	        String dbUsername = "********"; 
	        String dbPassword = "********"; 
	        String FirstName = request.getParameter("First_name");  

	        
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);  
		
	      		
				String query1 = "select * from customer WHERE First_name = '" + FirstName + "' ";
				Statement st1 = connection.createStatement();
				
				resultSet = st1.executeQuery(query1);
				
				resultSet.next();
				{
					
					
				
	%>

		<h1 class="pb-3 pl-3">
			Hello,
			<%= resultSet.getString("First_name")%><span class="Payment-Heading">Below
				is your flight information</span>
		</h1>
		<%
				}
      %>
      </div>
		<div class="row">
			<div class="col-sm-4">
				<form class="card" method="POST" action="#">


					<%
	      		Connection con;
				PreparedStatement pst;
				ResultSet rs;
				

				String url = "jdbc:mysql://localhost:3306/";
				String db = "flight_data?useSSL=FALSE";
				String driver = "com.mysql.cj.jdbc.Driver";
				Class.forName(driver);
				con = DriverManager.getConnection(url + db, "root", "Vancouver13");
				
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
					<h2></h2>
					<div>
						<label class="from-label">Departure Airport</label>
						 <input	disabled type="text" class="form-control"placeholder="Departure Airport" value="<%= rs.getString("Departure_Airport")%>" name="Departure_Airport" id="" required>
					</div>

					<div>
						<label class="from-label">Country</label>
						 <input disabled type="text" class="form-control" placeholder="Country"value="<%= rs.getString("Country")%>" name="Country" id="" required>
					</div>

					<div>
						<label class="from-label">Departure_Date</label>
						 <input disabled type="text" class="form-control" placeholder="Departure Date" value="<%= rs.getString("Departure_Date")%>" name="Departure_Date" id="" required>
					</div>

					<div>
						<label class="from-label">Destination Airport</label> 
						<input disabled type="text" class="form-control" placeholder="Destination airport" value="<%= rs.getString("Destination_airport")%>" name="Destination_airport" id="" required>
					</div>

					<div>
						<label class="from-label">Destination Country</label>
						 <input disabled type="text" class="form-control" placeholder="Destination Country" value="<%= rs.getString("Destination_Country")%>" name="Destination_Country" id="" required>
					</div>

					<div>
						<label class="from-label">Return_Date</label>
						<input disabled type="text" class="form-control" placeholder="Return Date" value="<%= rs.getString("Return_Date")%>" name="Return_Date" id="" required>
					</div>

					<div>
						<label class="from-label">Price (CAD)</label>
						 <input disabled type="text" class="form-control" placeholder="Price" value="<%= rs.getString("Price")%>" name="Price" id="" required>
					</div>
					<br>
			</div>
			<div class="col-sm-6">
				<form class="form-group" name="loginForm" method="post"
					action="Page4">
					<div class="creditCardForm">
						<div class="heading">

							<h1>
								Total Amount Due :
								<%= rs.getString("Price")%></h1>
						</div>

						<%
				}
			
				%>
						<div class="payment">
							<form>
								<div class="form-group owner">
									<label for="owner">Owner</label> <input type="text" class="form-control" id="owner" required>
								</div>
								<div class="form-group CVV">
									<label for="cvv">CVV</label> <input type="text" class="form-control" id="cvv" required>
								</div>
								<div class="form-group" id="card-number-field">
									<label for="cardNumber">Card Number</label> <input type="text" class="form-control" id="cardNumber" required>
								</div>
								<div class="form-group" id="expiration-date">
									<label>Expiration Date</label> <select>
										<option value="01">January</option>
										<option value="02">February</option>
										<option value="03">March</option>
										<option value="04">April</option>
										<option value="05">May</option>
										<option value="06">June</option>
										<option value="07">July</option>
										<option value="08">August</option>
										<option value="09">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select> <select>
										<option value="21">2021</option>
										<option value="22">2022</option>
										<option value="23">2023</option>
										<option value="24">2024</option>
									</select>
								</div>
								<div class="form-group" id="credit_cards">
									<img src="images/visa.jpg" id="visa"> <img
										src="images/mastercard.jpg" id="mastercard"> <img
										src="images/amex.jpg" id="amex">
								</div>
								<div class="form-group" id="pay-now">
									<a type="submit" class="btn btn-default"
										href="customerConformation.jsp?id=<%=id%>" value="next"
										id="confirm-purchase">Confirm</a>
								</div>
							</form>
						</div>
					</div>
					<!--form-->
				</form>
				</form>
				<!--form-->
				</div>
			</div>
</body>
</html>