<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sk broadband IPTV</title>
<link rel ="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    
    String what = request.getParameter("what");
%>

<div class = "col-10 container " id = "wrap">
	<header  class ="d-flex align-items-center justify-content-center">
		<h1><a class ="text-danger logo" href ="/jsp/test/test09/test09.jsp">Sk broadband IPTV</a></h1>
	</header>
	<nav  class = "main-menu pt-2 bg-danger ">
		<ul class = "nav nav-fill">
			<li class = "nav-item"><a href = "/jsp/test/test09/test09.jsp" class = "nav-item text-white">전체</a></li>
			<li class = "nav-item"><a href = "/jsp/test/test09/test09.jsp?what=지상파" class = "nav-item text-white">지상파</a></li>
			<li class = "nav-item"><a href = "/jsp/test/test09/test09.jsp?what=드라마" class = "nav-item text-white">드라마</a></li>
			<li class = "nav-item"><a href = "/jsp/test/test09/test09.jsp?what=예능" class = "nav-item text-white">예능</a></li>
			<li class = "nav-item"><a href = "/jsp/test/test09/test09.jsp?what=영화" class = "nav-item text-white">영화</a></li>
			<li class = "nav-item"><a href = "/jsp/test/test09/test09.jsp?what=스포츠" class = "nav-item text-white">스포츠</a></li>
		
		</ul>
	
	</nav>
	<section class = "contents">
		<table class ="table text-center">
			<thead>
				<tr>
					<th>채널</th>
					<th>채널명</th>
					<th>카테고리</th>
				</tr>
			</thead>
			<tbody>
			
			
			
			
			<% 
			
				for(Map<String, String> channel : list) {
	  
			       if(what == null || what.equals(channel.get("category"))){
			%>   	   
			    <tr>
					<td><%= channel.get("ch") %></td>
					<td><%= channel.get("name") %></td>
					<td><%= channel.get("category") %></td>
				</tr>
			    	   
			<%   	   
			       }
			       
			  	} 
			 %>
			</tbody>
		</table>
	</section>
	<footer class = "text-center">Copyright 2025. marondal All Right Reserved.</footer>

	

</div>

</body>
</html>