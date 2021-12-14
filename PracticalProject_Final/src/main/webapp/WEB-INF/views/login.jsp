<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<title>StudySetter();</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
	<style>
	a, p, h1, h2, h3, div {
		font-family: 'Gowun Dodum', sans-serif;
		text-decoration: none;
	}
	</style>
</head>

<body id="myPage">
	<!-- Navbar -->
	<div class="w3-top">
	<div class="w3-bar w3-theme-d2 w3-left-align">
		<a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-theme-d2"
		href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
		<a href="index.jsp" class="w3-bar-item w3-button w3-blue"><i class="fa fa-home w3-margin-right"></i>StudySetter();</a>
		<a href="introduction.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">소개</a>
		<div class="w3-dropdown-hover w3-hide-small">
		<button class="w3-button" title="Category">학부 선택<i class="fa fa-caret-down"></i></button>
		<div class="w3-dropdown-content w3-card-4 w3-bar-block">
			<a href="board/global-leadershipschool.jsp" class="w3-bar-item w3-button">글로벌리더십학부</a>
			<a href="board/international-studies-languages-and-literature.jsp" class="w3-bar-item w3-button">국제어문학부</a>
			<a href="board/management-and-econmics.jsp" class="w3-bar-item w3-button">경영경제학부</a>
			<a href="board/school-of-law.jsp" class="w3-bar-item w3-button">법학부</a>
			<a href="board/school-of-communication-arts.jsp" class="w3-bar-item w3-button">커뮤니케이션학부</a>
			<a href="board/spatial-environment-system-engineering.jsp" class="w3-bar-item w3-button">공간환경시스템공학부</a>
			<a href="board/machanical-and-control-engineering.jsp" class="w3-bar-item w3-button">기계제어공학부</a>
			<a href="board/contents-convergence-design.jsp" class="w3-bar-item w3-button">콘텐츠융합디자인학부</a>
			<a href="board/life-sciences.jsp" class="w3-bar-item w3-button">생명과학부</a>
			<a href="board/computer-science-and-electrical-engineering.jsp" class="w3-bar-item w3-button">전산전자공학부</a>
			<a href="board/counselling-psychology-and-social-welfare.jsp" class="w3-bar-item w3-button">상담심리사회복지학부</a>
			<a href="board/global-entrepreneurship-and-ICT.jsp" class="w3-bar-item w3-button">ICT창업학부</a>
			<a href="board/school-of-creative-convergence-education.jsp" class="w3-bar-item w3-button">창의융합교육원</a>
			<a href="board/ai-convergence-education.jsp" class="w3-bar-item w3-button">AI융합교육원</a>
		</div>
		</div>
	</div>

	<!-- Navbar on small screens -->
	<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
		<a href="introduction.jsp" class="w3-bar-item w3-button">소개</a>
		<div class="w3-dropdown-hover">
		<button class="w3-button" title="Category">학부 선택<i class="fa fa-caret-down"></i></button>
		<div class="w3-dropdown-content w3-card-4 w3-bar-block" style="overflow-y: scroll; max-height: 50vh;">
			<a href="board/global-leadershipschool.jsp" class="w3-bar-item w3-button">글로벌리더십학부</a>
			<a href="board/international-studies-languages-and-literature.jsp" class="w3-bar-item w3-button">국제어문학부</a>
			<a href="board/management-and-econmics.jsp" class="w3-bar-item w3-button">경영경제학부</a>
			<a href="board/school-of-law.jsp" class="w3-bar-item w3-button">법학부</a>
			<a href="board/school-of-communication-arts.jsp" class="w3-bar-item w3-button">커뮤니케이션학부</a>
			<a href="board/spatial-environment-system-engineering.jsp" class="w3-bar-item w3-button">공간환경시스템공학부</a>
			<a href="board/machanical-and-control-engineering.jsp" class="w3-bar-item w3-button">기계제어공학부</a>
			<a href="board/contents-convergence-design.jsp" class="w3-bar-item w3-button">콘텐츠융합디자인학부</a>
			<a href="board/life-sciences.jsp" class="w3-bar-item w3-button">생명과학부</a>
			<a href="board/computer-science-and-electrical-engineering.jsp" class="w3-bar-item w3-button">전산전자공학부</a>
			<a href="board/counselling-psychology-and-social-welfare.jsp" class="w3-bar-item w3-button">상담심리사회복지학부</a>
			<a href="board/global-entrepreneurship-and-ICT.jsp" class="w3-bar-item w3-button">ICT창업학부</a>
			<a href="board/school-of-creative-convergence-education.jsp" class="w3-bar-item w3-button">창의융합교육원</a>
			<a href="board/ai-convergence-education.jsp" class="w3-bar-item w3-button">AI융합교육원</a>
		</div>
		</div>
	</div>
	</div>

	<div class="w3-model w3-padding-64" style="width: 60%; margin: auto;">
	<!-- <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px"> -->
	<h2 class="w3-center">로그인 하시겠습니까?</h2>
	<div class="w3-center"><br>
		<span onclick="document.getElementById('id01').style.display='none'"
		class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
		<img src="src/person.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
	</div>
	<!-- TODO: action page -->
	<form class="w3-container" action="./WEB-INF/views/login.jsp" method="post">
		<div class="w3-section">
		<div class="w3-padding-32">
			<h5><b>Id</b></h5>
			<input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Id" name="id" required><br>
			<h5><b>Password</b></h5>
			<input class="w3-input w3-border" type="text" placeholder="Enter Password" name="password" required>
		</div>
		<button class="w3-button w3-block w3-blue w3-login w3-section w3-padding" type="submit">Login</button>
		</div>
	</form>
	</div>

	<!-- Footer -->
	<footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
	<p>If error occured Contact On</p>
	<p>22000035@handong.edu || 22000453@handong.edu</p><br>
	<div style="position:relative;bottom:100px;z-index:1;" class="w3-tooltip w3-right">
		<span class="w3-text w3-padding w3-blue w3-hide-small">Go To Top</span>
		<a class="w3-button w3-theme" href="#myPage"><span class="w3-xlarge">
			<i class="fa fa-chevron-circle-up"></i></span></a>
	</div>
	</footer>

	<script>
	// Script for side navigation
	function w3_open() {
		var x = document.getElementById("mySidebar");
		x.style.width = "300px";
		x.style.paddingTop = "10%";
		x.style.display = "block";
	}

	// Close side navigation
	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
	}

	// Used to toggle the menu on smaller screens when clicking on the menu button
	function openNav() {
		var x = document.getElementById("navDemo");
		if (x.className.indexOf("w3-show") == -1) {
		x.className += " w3-show";
		} else {
		x.className = x.className.replace(" w3-show", "");
		}
	}
	</script>
</body>
</html>