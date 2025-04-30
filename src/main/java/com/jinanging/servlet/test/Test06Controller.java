package com.jinanging.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		int number1Int = Integer.parseInt(number1String);
		int number2Int = Integer.parseInt(number2String);
		
		int add = number1Int + number2Int;
		int sub = number1Int - number2Int;
		int multi = number1Int * number2Int;
		int div = number1Int / number2Int;
		
		
		PrintWriter out = response.getWriter();
		
		//{"addition":"135","subtraction":"105","multiplication":"1800","division":"8"}
		out.println("{\"addition\":\"" + add + "\",\"subtraction\":\"" + sub + "\",\"multiplication\":\"" + multi +"\",\"division\":\"" + div + "\"}");
	}

}
