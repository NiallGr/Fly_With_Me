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
			String login = request.getParameter("admin_login");
			String Password = request.getParameter("admin_password");    

			
			
			Connection con;
			PreparedStatement pst;
			ResultSet rs;
			

			String url = "*********";
			String db = "adminstration?useSSL=FALSE";
			String driver = "com.mysql.cj.jdbc.Driver";
			Class.forName(driver);
			con = DriverManager.getConnection(url + db, "*****", "******");   
          
			pst = con.prepareStatement("UPDATE adminstration_details set admin_login = ?,admin_password = ? WHERE id = ?");
			
			pst.setString(1, login);
			pst.setString(2, Password);
			pst.setString(3, id);
			
			pst.executeUpdate();

			%>
	<script>
		alart("recorded updated");
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
        <li><a href="adminFlightPage.jsp">Flights</a></li>
        <li><a href="adminCustomerPage.jsp">Customers</a></li>
        <li class="active"><a href="adminDetailsPage.jsp">Admin</a></li>
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
        
        <p class="Flights_sideBar"><a class="Flight_sideBar_text" href="adminFlightPage.jsp">Flights</a></p>
        <p class="Customers_sideBar"><a class="Customers_sideBar_text" href="adminCustomerPage.jsp">Customers <img src="https://img.icons8.com/metro/26/000000/gender-neutral-user.png"/></a></p>
        <p class="AdminDetail_sideBar"><a class="AdminDetail_sideBar_text" href="adminDetailsPage.jsp">Administration</a></p>
    </div>
    <div class="col-sm-10 text-left"> 
      <h1>Update Admin Details</h1>
      <div class="row">
      		<div class="col-sm-3">
	      		<form class="card" method="POST" action="#">
	      		
	      		    		<%
	      		Connection con;
				PreparedStatement pst;
				ResultSet rs;
				
					String url = "***********";
					String db = "adminstration?useSSL=FALSE";
					String driver = "com.mysql.cj.jdbc.Driver";
					Class.forName(driver);
					con = DriverManager.getConnection(url + db, "******", "********");   
				
				String id = request.getParameter("id");
				String login = request.getParameter("admin_login");
				String Password = request.getParameter("admin_password");  

				
	      		
				pst = con.prepareStatement("SELECT * FROM adminstration_details where id = ?");
				pst.setString(1, id);
				rs = pst.executeQuery();
				
				while(rs.next())
				{
					
					%>	
	      		
	      		<div>
			      		<label class="from-label">Login</label>
			      		<input type="text" class="form-control" placeholder="Login" value="<%= rs.getString("admin_login")%>" name="admin_login" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Password</label>
			      		<input type="text" class="form-control" placeholder="password" value="<%= rs.getString("admin_password")%>" name="admin_password" id="" required >
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
	  					<a class="Return_flight_link" href="adminDetailsPage.jsp"> Return to Administration</a>
	  				</div>
	      		</form>
      		</div>

   </div>
   <footer class="container-fluid text-center navbar-fixed-bottom">
  <p>Fly @ NiallGr</p>
</footer>


</body>
</html>