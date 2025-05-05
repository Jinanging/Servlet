<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과제 1</title>
</head>
<body>

	<% int[] scores = {80, 90, 100, 95, 80}; 
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
	    	sum += scores[i];
		}
		
		double average = (double)sum / scores.length;
		
	
	
	%>
	<h3>제 점수의 평균은 <%= average %> 입니다.</h3>
	
	

</body>
</html>