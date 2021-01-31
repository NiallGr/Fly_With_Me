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
			String FirstName = request.getParameter("First_name");  
			String LastName = request.getParameter("Last_name");  
			String Password = request.getParameter("User_password");  
			String email = request.getParameter("Email");  

			
			
			Connection con;
			PreparedStatement pst;
			ResultSet rs;
			

			String url = "********";
				String db = "customers?useSSL=FALSE";
				String driver = "com.mysql.cj.jdbc.Driver";
				Class.forName(driver);
				con = DriverManager.getConnection(url + db, "********", "********");  
          
			pst = con.prepareStatement("insert into customer(First_name,Last_name,User_password,Email) values (?, ?, ?, ?)");
			
			pst.setString(1, FirstName);
			pst.setString(2, LastName);
			pst.setString(3, Password);
			pst.setString(4, email);

			
			pst.executeUpdate();

			%>
			
			
		<script>
		alart("recorded added");
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
        <li class="active"><a href="adminCustomerPage.jsp">Customers </a></li>
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
        
        <p class="Flights_sideBar"><a class="Flight_sideBar_text" href="adminFlightPage.jsp">Flights</a></p>
        <p class="Customers_sideBar"><a class="Customers_sideBar_text" href="adminCustomers.html">Customers <img src="https://img.icons8.com/metro/26/000000/gender-neutral-user.png"/></a></p>
        <p class="AdminDetail_sideBar"><a class="AdminDetail_sideBar_text" href="adminDetailsPage.jsp">Administration</a></p>
    </div>
    <div class="col-sm-10 text-left"> 
      <h1>Customer Details</h1>
      <div class="row">
      		<div class="col-sm-3">
	      		<form class="card" method="POST" action="#">
	      		
	      		<div>
			      		<label class="from-label">First Name</label>
			      		<input type="text" class="form-control" placeholder="First Name" name="First_name" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Last Name</label>
			      		<input type="text" class="form-control" placeholder="Last Name" name="Last_name" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Password</label>
			      		<input type="text" class="form-control" placeholder="Password" name="User_password" id="" required >
	      		</div>
	      		
	      		<div>
			      		<label class="from-label">Email</label>
			      		<input type="text" class="form-control" placeholder="Email" name="Email" id="" required >
	      		</div>
	     
	      		
	      		<br>
	      		
	      		<div>
	      			<input type="submit" id="sumbit" value="submit" name="submit" class="btn btn-info"> 
	      			<input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning"> 
	      		</div>
	      		</form>
      		</div>
      			
      		<div class="col-sm-9">
      			<div class=panel-body">
      					<table id="tbl-flights" class="table table-responsize table-bordered" cellpadding ="0" width="100%">
      						<thead>
      							<tr>
      										<td ><b>First Name</b></td>
											<td><b>Last Name</b></td>
											<td><b>Password</b></td>
											<td><b>Email</b></td>
											<td><b>Edit</b></td>
											<td><b>Delete</b></td>
											

      							</tr>
      							
      							
      							<%
      							Connection con;
      							PreparedStatement pst;
      							ResultSet rs;
      							

      							String url = "********";
      							String db = "customers?useSSL=FALSE";
      							String driver = "com.mysql.cj.jdbc.Driver";
      							Class.forName(driver);
      							con = DriverManager.getConnection(url + db, "********", "********");  
      							
      							String query = "select * from customer";
      							Statement st = con.createStatement();
      							
      							rs = st.executeQuery(query);
      							
      							while(rs.next()){
      								
      								String id = rs.getString("id");
      							
      						
      							%>
      							
      							<tr>
      										<td><%=rs.getString("First_name") %></td>
      										<td><%=rs.getString("Last_name")  %></td>
      										<td><%=rs.getString("User_password")  %></td>
      										<td><%=rs.getString("Email")  %></td>
      										<td><a class="EditDeleteLink" href="adminCustomerUpdate.jsp?id=<%=id%>">Edit</a></td>
      										<td><a class="EditDeleteLink" href="adminCustomerDelete.jsp?id=<%=id%>">Delete</a></td>
											
      							<tr>
      							
      							<%
      							}
      							%>
      							</tr>
      						<thead>
      					
      					</table>
      			
      			</div>
      		</div>
      
      </div>
      
    </div>
   
</div>



</body>
</html>