package com.admin;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;


public class AdminValidate {
    public static boolean checkUser(String admin_login,String admin_password) 
    {
        boolean st =false;
        try {
			Connection con = null;
			String url = "********";
			String db = "adminstration?useSSL=FALSE";
			String driver = "com.mysql.cj.jdbc.Driver";
			String dbUsername = "********"; 
		     String dbPassword = "********"; 
		       
			Class.forName(driver);
			con = DriverManager.getConnection(url + db, dbUsername, dbPassword); 
            PreparedStatement ps = con.prepareStatement("select * from adminstration.adminstration_details where admin_login=? and admin_password=?");
            ps.setString(1, admin_login);
            ps.setString(2, admin_password);
            ResultSet rs =ps.executeQuery();
            st = rs.next();

        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return st;                  
    }  
}
