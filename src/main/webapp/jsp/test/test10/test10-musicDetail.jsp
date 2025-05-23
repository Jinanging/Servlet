<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<title>Melong</title>
</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    String idSearch = (String)request.getParameter("id");
    String title = request.getParameter("title");
%>

<div id = "wrap">
	<header class ="d-flex">
		<div class ="d-flex align-items-center logo justify-content-center text-success"><h1>Melong</h1></div>
		<div class = "d-flex align-items-center search">
			<form class = "w-100" method = "get" action = "/jsp/test/test10/test10-musicDetail.jsp">
				<div class="input-group">
	  				<input type="text" name = "title" class="form-control" aria-describedby="button-addon2">
	  				<button class="btn btn-primary" type="submit" id="button-addon2">검색</button>
				</div>
			</form>		
		</div>
	</header>
	<nav>
		<ul class = "nav font-weight-bold py-1 px-4">
			<li class = "nav-item mx-3"><a href = "/jsp/test/test10/test10-musicDetail.jsp" target ="_blank" class = "nav-item text-dark">멜롱차트</a></li>
			<li class = "nav-item mx-3"><a href = "/jsp/test/test10/test10-musicDetail.jsp" target = "_blank" class = "nav-item text-dark">최신음악</a></li>
			<li class = "nav-item mx-3"><a href = "/jsp/test/test10/test10-musicDetail.jsp" target = "_blank" class = "nav-item text-dark">장르음악</a></li>
			<li class = "nav-item mx-3"><a href = "/jsp/test/test10/test10-musicDetail.jsp" target = "_blank" class = "nav-item text-dark">멜롱DJ</a></li>
			<li class = "nav-item mx-3"><a href = "/jsp/test/test10/test10-musicDetail.jsp" target = "_blank" class = "nav-item text-dark">뮤직어워드</a></li>
			
		</ul>
	
	</nav>
	<section>
		<div class ="d-flex singerInfo border border-success">
		<% for(Map<String,Object> musictarget : musicList){ 
			if((idSearch != null && musictarget.get("id").toString().equals(idSearch)) || (title!=null && title.equals(musictarget.get("title")))){%>
			
			<div class ="artistImage p-3">
				<% String imgSource = (String)musictarget.get("thumbnail"); %>
				<img width ="170" height = "170" alt ="앨범사진" src = "<%= imgSource %>">
			</div>
			<% int minute = (int)musictarget.get("time") / 60;
			   int second = (int)musictarget.get("time") % 60; %>
			<div class ="mt-3 pl-4 artistInfo">
				<h1><%= musictarget.get("title") %> </h1>
				<h4 class = "text-success"><%= musictarget.get("singer") %></h4>
				<div class ="small">앨범 &nbsp;&nbsp; <%= musictarget.get("album") %></div>
				<div class = "small">재생시간&nbsp;&nbsp; <%= minute %> : <%= second %> </div>
				<div class = "small">작곡가 &nbsp;&nbsp; <%= musictarget.get("composer") %> </div>
				<div class = "small">작사가 &nbsp;&nbsp; <%= musictarget.get("lyricist") %> </div>
				
			</div>
		<%	} 
		} %>
		</div>
		<div class = "singList mt-3">
			<h3 class ="mt-4 ml-3">가사</h3>
			<hr>
			<p class = "ml-3">가사 정보 없음</p>
			
		</div>
	</section>
	<hr>
	<footer class ="mt-3">Copyright 2025.melong All Rights Reserved</footer>
	
	
</div>


</body>
</html>