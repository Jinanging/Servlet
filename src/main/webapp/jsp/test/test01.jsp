<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Arrays" %>
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
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for(String result:scoreList){
		
		if(result.equals("O")){
			score += 100 / scoreList.size();
		}
		
	}
	%>
	
	<h3>채점결과는 <%= score %>점 입니다 </h3>
	
	<!--  함수 만들 -->
	
	<%!
		public int nSuming(int n){
			int sum = 0;
			for(int i = 1; i <= n; i++){
				sum += i;
			
			}
			return sum;
		
		}
	
	%>
	
	<h3>1부터 50까지의 합은 <%= nSuming(50) %></h3>
	
	<%
	String birthDay = "20010820";
	String year = birthDay.substring(0,4);
	int yearInt =  Integer.parseInt(year);
	int age = 2025 - yearInt + 1;
	
	
	
	%>
	
	<h3><%= birthDay %>의 나이는 <%= age %> 입니 </h3>
	
	
	

</body>
</html>