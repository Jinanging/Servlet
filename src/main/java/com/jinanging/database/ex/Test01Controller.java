package com.jinanging.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/jinan";
			String username = "root";
			String password = "wlsghks123@";
			
			Connection connection = DriverManager.getConnection(url,username,password);
			
			String query = "INSERT `real_estate`\n"
					+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)\n"
					+ "VALUE\n"
					+ "(3,'헤라펠리스 101동 5305호',350,'매매',1500000,NULL);";
			
			Statement statement = connection.createStatement();
		    statement.executeUpdate(query);
			
			
			query = "SELECT `realtorId`,`address`,`area`,`type`,`price`,`rentPrice` FROM `real_estate`\n"
					+ "WHERE `id` <= 10\n"
					+"ORDER BY `id` DESC;";
			
			ResultSet resultSet = statement.executeQuery(query);
			
			
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + " 면적 : " + area + " 타입 : " + type);
				
			}
			
			statement.close();
			connection.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
