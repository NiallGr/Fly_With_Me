
	<%@page import="java.sql.*"%>
<% 
			
		{
			String id = request.getParameter("id");


			Connection con;
			PreparedStatement pst;
			ResultSet rs;
			

			String url = "********";
			String db = "customers?useSSL=FALSE";
			String driver = "com.mysql.cj.jdbc.Driver";
			Class.forName(driver);
			con = DriverManager.getConnection(url + db, "********", "********");  
          
			pst = con.prepareStatement("DELETE from customer WHERE id = ?");
			
			pst.setString(1, id);
			
			pst.executeUpdate();
			
			String redirectURL = "adminCustomerPage.jsp";
			response.sendRedirect(redirectURL);
			}
			%>