<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Flights</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/stylesheet-AdminHP.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<%@page import="java.sql.*"%>

<% 
		if(request.getParameter("submit")!=null)
			
		{
			String id = request.getParameter("id");
			String DepartureAirport = request.getParameter("Departure_Airport");  
			String Country = request.getParameter("Country");  
			String DepartureDate = request.getParameter("Departure_Date");  
			String DestinationAirport = request.getParameter("Destination_airport");  
			String DestinationCountry = request.getParameter("Destination_Country");  
			String ReturnDate = request.getParameter("Return_Date");  
			String Price = request.getParameter("Price");  
			
			
			Connection con;
			PreparedStatement pst;
			ResultSet rs;
			

			String url = "********";
			String db = "flight_data?useSSL=FALSE";
			String driver = "com.mysql.cj.jdbc.Driver";
			Class.forName(driver);
			con = DriverManager.getConnection(url + db, "******", "********");  
          
			pst = con.prepareStatement("UPDATE flights set Departure_Airport = ?,Country = ?,Departure_Date = ?,Destination_airport = ?,Destination_Country = ?,Return_Date = ?,Price = ? WHERE id = ?");
			
			pst.setString(1, DepartureAirport);
			pst.setString(2, Country);
			pst.setString(3, DepartureDate);
			pst.setString(4, DepartureAirport);
			pst.setString(5, DestinationCountry);
			pst.setString(6, ReturnDate);
			pst.setString(7, Price);
			pst.setString(8, id);
			
			pst.executeUpdate();

			%>
			
			
		<script>
			alert("record updated!");
		
		</script>	
			
			
<%
			
			}
			%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href=""><img src="https://img.icons8.com/fluent/40/000000/around-the-globe.png"/></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="adminHomepage.jsp">Home</a></li>
        <li class="active"><a href="adminFlightPage.jsp">Flights</a></li>
        <li><a href="adminCustomerPage.jsp">Customers</a></li>
        <li><a href="adminDetailsPage.jsp">Admin</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Log-out</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content"style="min-height: 100%">
    <div class="col-sm-2 sidenav">
        
        <p class="Flights_sideBar"><a class="Flight_sideBar_text" href="adminFlightPage.jsp">Flights <img src="https://img.icons8.com/ios-glyphs/30/000000/around-the-globe.png"/></a></p>
        <p class="Customers_sideBar"><a class="Customers_sideBar_text" href="adminCustomerPage.jsp">Customers</a></p>
        <p class="AdminDetail_sideBar"><a class="AdminDetail_sideBar_text" href="adminDetailsPage.jsp">Administration</a></p>
    </div>
   <div class="col-sm-10 text-left"> 
      <h1>Welcome</h1>
      <div class="row">
      		<div class="col-sm-3">
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
	      		<div>
			      		<label class="from-label">Departure Airport</label>
			      		<input type="text" class="form-control" placeholder="Departure Airport" value="<%= rs.getString("Departure_Airport")%>" name="Departure_Airport" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Country</label>
			      		<input type="text" class="form-control" placeholder="Country" value="<%= rs.getString("Country")%>" name="Country" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Departure_Date</label>
			      		<input type="text" class="form-control" placeholder="Departure Date" value="<%= rs.getString("Departure_Date")%>" name="Departure_Date" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Destination Airport</label>
			      		<input type="text" class="form-control" placeholder="Destination airport" value="<%= rs.getString("Destination_airport")%>" name="Destination_airport" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Destination Country</label>
			      		<input type="text" class="form-control" placeholder="Destination Country" value="<%= rs.getString("Destination_Country")%>" name="Destination_Country" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Return_Date</label>
			      		<input type="text" class="form-control" placeholder="Return Date" value="<%= rs.getString("Return_Date")%>" name="Return_Date" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Price (CAD)</label>
			      		<input type="text" class="form-control" placeholder="Price" value="<%= rs.getString("Price")%>" name="Price" id="" required >
	      		</div>
	      		
	      		<% 
	      		}
				
				
				%>
	      		<br>
	      		
	      		<div>
	      			<input type="submit" id="sumbit" value="submit" name="submit" class="btn btn-info"> 
	      			<input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning"> 
	      			
	      		</div> 
	  				<div align="right">
	  					<a class="Return_flight_link" href="adminFlightPage.jsp"> Return to flights</a>
	  				</div>
	      	
	      		</form>
      		</div>
      			
      		
    </div>
   <footer class="container-fluid text-center navbar-fixed-bottom">
  <p>Fly @ NiallGr</p>
</footer>
</div>



</body>
</html>