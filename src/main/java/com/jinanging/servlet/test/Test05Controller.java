package com.jinanging.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String numberString = request.getParameter("number");
		int number = Integer.parseInt(numberString);
		
		
		PrintWriter out = response.getWriter();
		
		out.println(""
				+"<html>\n"
				+"	<head><title>test05</title></head>\n"
				+"	<body>\n"
				+"		<ul>\n");
			for(int i = 1; i < 10; i++) {
				int sum = number * i;
				out.println(
						"		<li>" + number + "x" + i + "=" + sum + "</li>\n"
						);
			
		}
		
		out.println(
				"		</ul>\n"	
				+"	</body>"
				+"</html>"
				);
	}

}
