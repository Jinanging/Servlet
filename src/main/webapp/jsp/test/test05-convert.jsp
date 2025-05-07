<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
<meta charset="UTF-8">
<title>convert result page</title>
</head>
<body>
	<%
	    int centimeter = Integer.parseInt(request.getParameter("centimeter"));
	
	    double inch = centimeter / 2.54;
	    double yard = centimeter * 0.0109361;
	    double feet = centimeter / 30.48;
	    double meter = centimeter / 100.0;
	
	    String[] convertType = request.getParameterValues("convert");
	%>

<div class="container mt-5">
    <div class="display-4">변환 결과</div>
    <p><strong><%=centimeter %> cm</strong></p>
    <hr>

	<% 
    if (convertType != null) {
        for (int i = 0; i < convertType.length; i++) {
            if (convertType[i].equals("inch")) {
	%>
	
                <div><%=inch %> in</div>
	<%
            } 
            else if (convertType[i].equals("yard")) {
	%>
	
                <div><%=yard %> yd</div>
	<%
            } 
            else if (convertType[i].equals("feet")) {
	%>
	
                <div><%=feet %> ft</div>
	<%
            } 
            else if (convertType[i].equals("meter")) {
	%>
	
                <div><%=meter %> m</div>
	<%
            }
        }
    }
	%>
</div>
</body>
</html>
