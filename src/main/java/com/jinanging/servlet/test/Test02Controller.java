package com.jinanging.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		// header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		//body
		PrintWriter out = response.getWriter();
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("현재시간은 HH시 mm분 ss초입니다");
		String hourString = formatter.format(now);
		out.println(hourString);
		
	}

}
