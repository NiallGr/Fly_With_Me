<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fly With Me</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/stylesheet-flights.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/parallax.min.js"></script>
<script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
</head>

<%@page import="java.sql.*"%>

<body>
	<nav class="navbar navbar-expand-lg "><a class="navbar-brand" href="index.jsp"><img src="https://img.icons8.com/fluent/48/000000/around-the-globe.png" /><span class="Header-Logo-Title"><i>Fly With Me</i></span></a>
		
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<p class="Airline-Navbar-text">airlines operating worldwide</p>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link disabled"
					href="">Flights <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link disabled" href="">Registration</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="">Payment</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="">Confirmation</a></li>
			</ul>
		</div>
	</nav>
		<%
	
	String driver = "com.mysql.cj.jdbc.Driver";
	String Url = "********";
	String db = "flight_data?useSSL=FALSE";
	String userId = "********";
	String password = "********";
	String Country = request.getParameter("Country");  
		
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
	

	<div class="container" id="containerB">
		<form class="form-group" name="loginForm" method="post" action="BookingPage">
			
			<div id="form">
				<h2 class="pl-3 flightHeadings">Search Results</h2>
				
				<table id="tbl-flights" class="table table-responsize pt-5"
					cellpadding="0" width="100%">
					<thead>
						<tr>
							<td><b>Departure Airport</b></td>
							<td><b>Country</b></td>
							<td><b>Departure_Date</b></td>
							<td><b>Destination Airport</b></td>
							<td><b>Destination Country</b></td>
							<td><b>Return_Date</b></td>
							<td><b>Price (CAD)</b></td>
							<td><b>Add to Basket</b></td>

						</tr>


						<%
      							Connection con;
      							PreparedStatement pst;
      							ResultSet rs;
      							

      							
      							Class.forName(driver);
      							con = DriverManager.getConnection(Url + db, userId, password);  
      					
      				      		
      							String query = "select * from flights WHERE Country = '" + Country + "' ";
      							Statement st = con.createStatement();
      							
      							rs = st.executeQuery(query);
      							
      							while(rs.next()){
      								
      								String id = rs.getString("id");
      							
      						
      							%>

						<tr>
							<td class="col1"><%=rs.getString("Departure_Airport") %></td>
							<td class="col2"><%=rs.getString("Country")  %></td>
							<td class="col3"><%=rs.getString("Departure_Date")  %></td>
							<td class="col4"><%=rs.getString("Destination_airport")  %></td>
							<td class="col5"><%=rs.getString("Destination_Country")  %></td>
							<td class="col6"><%=rs.getString("Return_Date")  %></td>
							<td class="col7"><%=rs.getString("Price")  %></td>
							<td class="col8"><a type="submit" class="btn btn-default"
								id="confirm-purchase" href="customerRegistration.jsp?id=<%=id%>"><img
									style="width: 50%"
									src="https://img.icons8.com/fluent/100/000000/add-basket.png" /></a></td>
						<tr>

							<%
      							}
      							%>
						</tr>
					<thead>
				</table>
			</div>
		</form>
		<form>
			<div id="form">
				<h2 class="pl-3 flightHeadings">All Flights</h2>

				<table id="tbl-flights" class="table table-responsize"
					cellpadding="0" width="100%">
					<thead>
						<tr>
							<td><b>Departure Airport</b></td>
							<td><b>Country</b></td>
							<td><b>Departure_Date</b></td>
							<td><b>Destination Airport</b></td>
							<td><b>Destination Country</b></td>
							<td><b>Return_Date</b></td>
							<td><b>Price (CAD)</b></td>
							<td><b>Add to Basket</b></td>

						</tr>


						<%
      					

      							Class.forName(driver);
      							con = DriverManager.getConnection(Url + db, userId, password);  
      					
      				      		
      							String query1 = "select * from flights";
      							Statement st1 = con.createStatement();
      							
      							rs = st1.executeQuery(query1);
      							
      							while(rs.next()){
      								
      								String id = rs.getString("id");
      							
      						
      							%>

						<tr>
							<td class="col1"><%=rs.getString("Departure_Airport") %></td>
							<td class="col2"><%=rs.getString("Country")  %></td>
							<td class="col3"><%=rs.getString("Departure_Date")  %></td>
							<td class="col4"><%=rs.getString("Destination_airport")  %></td>
							<td class="col5"><%=rs.getString("Destination_Country")  %></td>
							<td class="col6"><%=rs.getString("Return_Date")  %></td>
							<td class="col7"><%=rs.getString("Price")  %></td>
							<td class="col8"><a type="submit" class="btn btn-default"
								id="confirm-purchase" href="customerRegistration.jsp?id=<%=id%>"><img
									style="width: 100%"
									src="https://img.icons8.com/fluent/100/000000/add-basket.png" /></a></td>
						<tr>

							<%
      							}
      							%>
						</tr>
					<thead>
				</table>
				</div>
		</form>
	</div>
	
	<script>
  	ScrollReveal().reveal('.col1',{ interval: 20} );
  	ScrollReveal().reveal('.col2',{ interval: 20} );
  	ScrollReveal().reveal('.col3',{ interval: 20} );
  	ScrollReveal().reveal('.col4',{ interval: 20} );
  	ScrollReveal().reveal('.col5',{ interval: 20} );
  	ScrollReveal().reveal('.col6',{ interval: 20} );
  	ScrollReveal().reveal('.col7',{ interval: 20} );
</script>

</body>