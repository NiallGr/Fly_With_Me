
	<%@page import="java.sql.*"%>
<% 
			
		{
			String id = request.getParameter("id");


			Connection con;
			PreparedStatement pst;
			ResultSet rs;
			

			String url = "********";
				String db = "adminstration?useSSL=FALSE";
				String driver = "com.mysql.cj.jdbc.Driver";
				Class.forName(driver);
				con = DriverManager.getConnection(url + db, "********", "********");  
          
			pst = con.prepareStatement("DELETE from adminstration_details WHERE id = ?");
			
			pst.setString(1, id);
			
			pst.executeUpdate();
			
			String redirectURL = "adminDetailsPage.jsp";
			response.sendRedirect(redirectURL);
			}
			%>