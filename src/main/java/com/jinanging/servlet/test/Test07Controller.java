package com.jinanging.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		out.println(""
				+"<html>\n"
				+"	<head><title>주문내역</title><head>\n"
				+"	<body>\n");
		if(!(address.contains("서울시"))) {
			out.println("<div>배달 불가 지역입니다</div>\n");
		}
		else if(card.equals("신한카드")) {
			out.println("<div>결제 불가 카드입니다.</div>\n");
			
		}
		else {
			out.println(""
					+"		<h4>" + address + "</h4>\n"
					+"<hr>"
					+"<div> 결제금액 : " + price + "</div>\n"
					);
			}
		
		out.println(""
				+"	</body>\n"
				+"</html>"
				);
		
		
		
	}

}
