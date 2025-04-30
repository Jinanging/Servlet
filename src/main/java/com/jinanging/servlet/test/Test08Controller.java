package com.jinanging.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String keyword = request.getParameter("keyword");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요.",
		        "맛집을 갔더니 맛집이네요"));
		
		out.println(""
				+"<html>\n"
				+"	<head><title>검색하기</title></head>\n"
				+"	<body>");
		
		Iterator<String> iter = list.iterator();
		
		while(iter.hasNext()) {
			String subject = iter.next();
			if(subject.contains(keyword)) {
				String[] splitSubject = subject.split(keyword);
				//맛집 키워드가 2개 이상 있다면???
				out.println("<div>" );
				for(int i = 0; i < splitSubject.length; i++) {
					if(i == splitSubject.length -1) {
						out.println(splitSubject[i]);
					}
					else {
						out.println(splitSubject[i] +"<b>" + keyword + "</b>");
					}
				}
				out.println("</div>\n"
						+"<hr>");
				
				
			}
			
			
		}
		
		
		out.println(""
				+"	</body>\n"
				+"</html>");
		
	}

}
