<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>search menu</title>
</head>
<body>

	<div class = "container">
		<h1>메뉴 검색</h1>
		
		<form method = "get" action = "/jsp/test/test07.jsp">
			<div class ="d-flex align-items-baseline">
				<input name = "search" class = "col-3 mr-2 my-2 form-control"  type = "text">
				<label><input type = "checkbox" name = "check" value = "exception">4점 이하 제외</label>
			</div>
			<button class = "btn btn-primary" type = "submit">검색</button>
		</form>
		

	
	</div>




</body>
</html>