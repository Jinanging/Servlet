<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Get method bmi calculate</title>
</head>
<body>

	<%
		int weight = Integer.parseInt(request.getParameter("weight"));
		int height = Integer.parseInt(request.getParameter("height"));
		
		double bmi = weight / ((height / 100.0) * (height/ 100.0));
		
		String result = null;
		
		if(bmi < 18.5){
			result = "저체중";
			
		}
		else if(bmi < 25){
			result = "정상";
			
		}
		else if(bmi < 30){
			result = "과체중";
			
		}
		else{
			result = "비만";
			
		}
	
	
	%>

	<div class = "container">
		<h2>BMI 측정결과</h2>
		<div class = "display-4">당신은 <span class = "text-info"><%= result %></span>입니다</div>
		<div>BMI 수치 : <%= bmi %></div>
	</div>

</body>
</html>