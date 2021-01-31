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
	<nav class="navbar navbar-expand-lg "> <a class="navbar-brand" href="index.jsp"><img src="https://img.icons8.com/fluent/48/000000/around-the-globe.png" /><span href="index.jsp" class="Header-Logo-Title"><i>Fly With Me</i></span></a>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<p class="Airline-Navbar-text">airlines operating worldwide</p>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item "><a class="nav-link disabled" href="">Flights </a></li>
			<li class="nav-item active"><a class="nav-link disabled" href=""><b>Registration</b></a></li>
			<li class="nav-item"><a class="nav-link disabled" href="">Payment</a></li>
			<li class="nav-item"><a class="nav-link disabled" href="">Confirmation</a></li>
		</ul>
	</div>
	</nav>

	<%
	      		Connection con;
				PreparedStatement pst;
				ResultSet rs;
				

				String url = "********";
				String db = "flight_data?useSSL=FALSE";
				String driver = "com.mysql.cj.jdbc.Driver";
				Class.forName(driver);
				con = DriverManager.getConnection(url + db, "********", "********");
				
				
			
				
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

	<div class="col-12 pt-3 text-left">
		<h1 class="pb-3 pl-3">Customer Registration</h1>
		<div class="row">
			<div class="col-sm-4">
				<form class="card" method="POST"
					action="customerPayment.jsp?id=<%=id%>">
			
					<div>
						<label class="from-label">Departure Airport</label> 
						<input disabled type="text" class="form-control" placeholder="Departure Airport" value="<%= rs.getString("Departure_Airport")%>"nname="Departure_Airport" id="" required>
					</div>

					<div>
						<label class="from-label">Country</label>
						 <input disabled type="text" class="form-control" placeholder="Country" value="<%= rs.getString("Country")%>" name="Country" id=""required>
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
						<input disabled	type="text" class="form-control" placeholder="Return Date" value="<%= rs.getString("Return_Date")%>" name="Return_Date" id="" required>
					</div>

					<div>
						<label class="from-label">Price (CAD)</label> <input disabled type="text" class="form-control" placeholder="Price" value="<%= rs.getString("Price")%>" name="Price" id="" required>
					</div>

					<% 
	      		}
				
				
				%>
					<br>
				</form>
			
			
				<% 
		if(request.getParameter("submit")!=null)
			
		{
			String FirstName = request.getParameter("First_name");  
			String LastName = request.getParameter("Last_name");  
			String Password = request.getParameter("User_password");  
			String email = request.getParameter("Email");  

		
	        String dbURL = "********";
	        String dbName = "customers?useSSL=FALSE"; 
	        String dbUsername = "********"; 
	        String dbPassword = "********"; 
	  
	
				Class.forName(driver);
				con = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);  
          
			pst = con.prepareStatement("insert into customer(First_name,Last_name,User_password,Email) values (?, ?, ?, ?)");
			
			pst.setString(1, FirstName);
			pst.setString(2, LastName);
			pst.setString(3, Password);
			pst.setString(4, email);

			
			pst.executeUpdate();
			
			%>

				<%
			}
			%>

			</div>
			<div class="col-sm-6">
				<form class="form-group" name="loginForm" method="post"
					href="customerPayment.jsp?id=<%=id%>">


					<div id="form">
						<!--form-->

						<span class="text-white pl-3 " id="Login-Registion-Headers">Please
							enter your details below to create an account</span>
						<div class="row" id="input">
							<!--Input-->
							<input class="CustomerName" id="input-group" type="text" name="First_name" placeholder="First Name" required /> <br /> 
							<input class="CustomerName" id="input-group" type="text" name="Last_name" placeholder="Last Name" required /> <br />


						</div>
						<!--Input-->
						<div class="row" id="input">
							<!-- Input2-->
							<input class="CustomerPassword" id="input-group" type="password" name="User_password" placeholder="Password" required /><br />
							<input class="CustomerEmail" type="text" id="input-group" name="Email" placeholder="Email" required>
						</div>
						<!-- Input2-->

						<div class="row" id="input">
							<!-- Input2-->
							<button class="btn customerRegBtn" name="submit" type="submit">Register</button>
							<button type="reset" id="reset" value="reset" name="reset"
								class="btn customerRegBtn">Reset</button>

						</div>
						<!-- Input2-->
				</form>
			</div>
			<br>

			<div id="form" class="loginBar" style="height: 40%">
				<form class="form-group" name="loginForm"
					action="customerPayment.jsp?id=<%=id%>" method="Post">
					<!--form-->

					<span class="text-white pl-3 " id="Login-Registion-Headers">Login</span>
					<div class="row" id="input">
						<!--Input-->
						<input class="CustomerName" id="input-group" type="text" name="First_name" placeholder="First Name" required /> <br /> 
						<input class="CustomerPassword" type="password" id="input-group" name="User_password" placeholder="Password" required>
					</div>
					<!-- Input2-->

					<div class="row" id="input">
						<button class="btn customerRegBtn" name="submit" type="submit">Login</button>
					</div>
				</form>
			</div>
			
			<!-- Input2-->

		</div>
		<!--form-->
		</div>
</body>
</html>