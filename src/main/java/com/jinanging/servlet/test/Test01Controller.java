package com.jinanging.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		//servlet header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		//body
		PrintWriter out = response.getWriter();
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 d일");
		String todayDate = formatter.format(now);
		out.println(todayDate);
		
		
		
	}

}
