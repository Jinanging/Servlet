<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>convertInput page</title>
</head>
<body>

	<div class = "container">
		<h3>길이 변환</h3>
		<form method = "post" action = "/jsp/test/test05-convert.jsp">
			<input type = "text" name = "centimeter"><label>cm</label><br>
			<label>인치<input type = "checkbox" name = "convert" value = "inch"></label>
			<label>야드<input type = "checkbox" name = "convert" value = "yard"></label>
			<label>피트<input type = "checkbox" name = "convert" value = "feet"></label>
			<label>미터<input type = "checkbox" name = "convert" value = "meter"></label><br>
			<button class = "btn btn-primary" type = "submit">변환</button>
		</form>
	
	
	
	</div>

</body>
</html>