<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.Date" %>

<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class = "container">
	
		<%
		
			Date now = new Date();
		
			SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
			
			SimpleDateFormat timeFormatter = new SimpleDateFormat("현재시간 HH:mm:ss");
			
			
			String date = dateFormatter.format(now); 
			String time = timeFormatter.format(now);
			
			String what = request.getParameter("what");
			
			String type = null;
			
			if(what.equals("time")){
				type = time;
			}
			else{
				type = date;
			}
		%>
		
		<div class = "display-4"><%= type %></div>
		
	
	</div>

</body>
</html>