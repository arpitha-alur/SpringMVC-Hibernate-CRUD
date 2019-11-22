package com.test.connection;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet("/TestDb")
public class TestDb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String driver = "com.mysql.jdbc.Driver";
		String jdbcUrl = "jdbc:mysql://localhost:3306/customer_demo?useSSL=false";
    	String user = "springcustomer";
    	String password = "springcustomer";
    	
    	try {
        	System.out.println("Connecting to databse"+jdbcUrl);
        	Class.forName(driver);
        	Connection myconn = 
        	  DriverManager.getConnection(jdbcUrl,user,password);
        	System.out.println("Connection successful");
        	myconn.close();
           } 
           catch(Exception e) {
        	   e.printStackTrace();
           }
	}

}
