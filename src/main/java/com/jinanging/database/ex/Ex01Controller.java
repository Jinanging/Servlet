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

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		//usedGoods
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		//database 접속
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			
			//접속에 필요한 정보
			// 접속 주소,포트, 사용할 데이터베이스, 사용자이름, 비밀번호
			String url = "jdbc:mysql://localhost:3306/jinan";
			String username = "root";
			String password = "wlsghks123@";
			
			
			Connection connection = DriverManager.getConnection(url,username,password);
			
			//쿼리작성
			String query = "SELECT * FROM `used_goods`;";
			
			//쿼리 수행
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
			String title = resultSet.getString("title");
			
			// 제목 가격 설명 
			
				out.println("제목" + title);
			}
			query = "INSERT `used_goods`\n"
					+ "(`sellerId`,`title`, `price`, `description`)\n"
					+ "VALUE\n"
					+ "(3,'고양이 간식 팝니다',5000,'저희 고양이가 입맛이 까다로워서 안먹어요!');";
			
			
			
			statement = connection.createStatement();
			
			//Insert ,Update, Delete
			// 실행된 행의 개수
			
			int count = statement.executeUpdate(query);
			
			out.println("실행결과 :" + count);
			
			
			
			statement.close();
			connection.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	

}
