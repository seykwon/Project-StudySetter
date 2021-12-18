<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO, java.util.*"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>

<head>
<title>StudySetter();</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<style>
a, p, h1, h2, h3, h5, div {
	font-family: 'Gowun Dodum', sans-serif;
	;
}
</style>
</head>

<body id="myPage">
	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-theme-d2 w3-left-align">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-theme-d2"
				href="javascript:void(0);" onclick="openNav()"><i
				class="fa fa-bars"></i></a> <a href="../index.jsp"
				class="w3-bar-item w3-button w3-blue"><i
				class="fa fa-home w3-margin-right"></i>StudySetter();</a> <a
				href="../introduction.jsp"
				class="w3-bar-item w3-button w3-hide-small w3-hover-white">소개</a>
			<div class="w3-dropdown-hover w3-hide-small">
				<button class="w3-button" title="Category">
					학부 선택<i class="fa fa-caret-down"></i>
				</button>
				<div class="w3-dropdown-content w3-card-4 w3-bar-block">
					<a href="global-leadershipschool.jsp" class="w3-bar-item w3-button">글로벌리더십학부</a>
					<a href="international-studies-languages-and-literature.jsp"
						class="w3-bar-item w3-button">국제어문학부</a> <a
						href="management-and-econmics.jsp" class="w3-bar-item w3-button">경영경제학부</a>
					<a href="school-of-law.jsp" class="w3-bar-item w3-button">법학부</a> <a
						href="school-of-communication-arts.jsp"
						class="w3-bar-item w3-button">커뮤니케이션학부</a> <a
						href="spatial-environment-system-engineering.jsp"
						class="w3-bar-item w3-button">공간환경시스템공학부</a> <a
						href="machanical-and-control-engineering.jsp"
						class="w3-bar-item w3-button">기계제어공학부</a> <a
						href="contents-convergence-design.jsp"
						class="w3-bar-item w3-button">콘텐츠융합디자인학부</a> <a
						href="life-sciences.jsp" class="w3-bar-item w3-button">생명과학부</a> <a
						href="computer-science-and-electrical-engineering.jsp"
						class="w3-bar-item w3-button">전산전자공학부</a> <a
						href="counselling-psychology-and-social-welfare.jsp"
						class="w3-bar-item w3-button">상담심리사회복지학부</a> <a
						href="global-entrepreneurship-and-ICT.jsp"
						class="w3-bar-item w3-button">ICT창업학부</a> <a
						href="school-of-creative-convergence-education.jsp"
						class="w3-bar-item w3-button">창의융합교육원</a> <a
						href="ai-convergence-education.jsp" class="w3-bar-item w3-button">AI융합교육원</a>
				</div>
			</div>
			<a href="login.jsp"
				onclick="document.getElementById('id01').style.display='block'"
				class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-blue">Log
				in</a>
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo"
			class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
			<a href="introduction.jsp" class="w3-bar-item w3-button">소개</a>
			<div class="w3-dropdown-hover">
				<button class="w3-button" title="Category">
					학부 선택<i class="fa fa-caret-down"></i>
				</button>
				<div class="w3-dropdown-content w3-card-4 w3-bar-block"
					style="overflow-y: scroll; max-height: 50vh;">
					<a href="global-leadershipschool.jsp" class="w3-bar-item w3-button">글로벌리더십학부</a>
					<a href="international-studies-languages-and-literature.jsp"
						class="w3-bar-item w3-button">국제어문학부</a> <a
						href="management-and-econmics.jsp" class="w3-bar-item w3-button">경영경제학부</a>
					<a href="school-of-law.jsp" class="w3-bar-item w3-button">법학부</a> <a
						href="school-of-communication-arts.jsp"
						class="w3-bar-item w3-button">커뮤니케이션학부</a> <a
						href="spatial-environment-system-engineering.jsp"
						class="w3-bar-item w3-button">공간환경시스템공학부</a> <a
						href="machanical-and-control-engineering.jsp"
						class="w3-bar-item w3-button">기계제어공학부</a> <a
						href="contents-convergence-design.jsp"
						class="w3-bar-item w3-button">콘텐츠융합디자인학부</a> <a
						href="life-sciences.jsp" class="w3-bar-item w3-button">생명과학부</a> <a
						href="computer-science-and-electrical-engineering.jsp"
						class="w3-bar-item w3-button">전산전자공학부</a> <a
						href="counselling-psychology-and-social-welfare.jsp"
						class="w3-bar-item w3-button">상담심리사회복지학부</a> <a
						href="global-entrepreneurship-and-ICT.jsp"
						class="w3-bar-item w3-button">ICT창업학부</a> <a
						href="school-of-creative-convergence-education.jsp"
						class="w3-bar-item w3-button">창의융합교육원</a> <a
						href="ai-convergence-education.jsp" class="w3-bar-item w3-button">AI융합교육원</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Board Container -->
	<div class="w3-container w3-padding-64 w3-center" id="board">

		<!-- Image Header -->
    <div class="w3-display-container w3-animate-opacity">
      <img src="../img/geometric.jpg" style="width:100%; min-height:100px; max-height:500px; filter: brightness(50%);;">
      <div class="w3-container w3-display-middle w3-text-white">
        <h1>기계제어공학부 게시판</h1>
        <p>원하는 스터디를 찾아보세요!</p>
      </div>
			<a href="#"
				onclick="document.getElementById('id02').style.display='block'"
				class="w3-button w3-large w3-blue w3-display-bottomright">글쓰기 <i
				class="fa fa-plus"></i>
			</a>
			
			<!-- 글쓰기 in clicked -->
			<div id="id02" class="w3-modal">
				<div class="w3-modal-content w3-card-4 w3-animate-zoom"
					style="max-width: 80py">
					<div class="w3-center">
						<br> <span
							onclick="document.getElementById('id02').style.display='none'"
							class="w3-button w3-xlarge w3-transparent w3-display-topright"
							title="Close Modal">×</span>
					</div>
					
					<!-- Form -->
					<form class="w3-container w3-padding" action="addok" method="post">
						<div class="w3-section w3-padding">
							<h5 class="w3-text-black w3-center w3-padding">게시글 작성</h5>
							<br> <label class="w3-left w3-margin-left"><b>제목</b></label>
							<input class="w3-input w3-border w3-margin-bottom" type="text"
								placeholder="형식 : 제목 #관련과목 #스터디형식 ..." name="title" required>
						</div>
						<div class="w3-section">
							<div class="col-sm-6 w3-half form-group">
								<label class="w3-left w3-margin-left"><b>작성자 이름</b></label> <input
									class="w3-input w3-border" type="text" placeholder="ex) 이달팽"
									name="name" required>
							</div>
							<div class="col-sm-6 w3-half form-group">
								<label class="w3-left w3-margin-left"><b>작성자 학번</b></label> <input
									class="w3-input w3-border" type="number" minlength="8" maxlength="8"
									placeholder="ex) 220XXXXX" name="studentNum" required>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-6 w3-half">
								<label class="w3-left w3-margin-left"><b>학부</b></label> <select
									class="w3-input w3-border" name="category" required>
									<option value="01">글로벌리더십학부
									<option value="02">국제어문학부
									<option value="03">경영경제학부
									<option value="04">법학부
									<option value="05">커뮤니케이션학부
									<option value="06">공간환경시스템공학부
									<option value="07">기계제어공학부
									<option value="08">콘텐츠융합디자인학부
									<option value="09">생명과학부
									<option value="10">전산전자공학부
									<option value="11">상담심리사회복지학부
									<option value="12">ICT창업학부
									<option value="13">창의융합교육원
									<option value="14">AI융합교육원
								</select>
							</div>
							<div class="col-sm-6 w3-half form-group">
								<label class="w3-left w3-margin-left"><b>스터디 이름</b></label> <input
									class="w3-input w3-border" type="text" placeholder="ex) 민달팽이"
									name="studyName" required><br>
							</div>
						</div>
						<div class="w3-section w3-padding">
							<label class="w3-left w3-margin-left"><b>오픈챗 링크 </b><a
								href="https://fervors.tistory.com/185" target="_blank"> 생성방법
									보러 가기</a></label> <input class="w3-input w3-border" type="text"
								placeholder="ex) https://open.kakao.com/a/bcdeF" name="chatLink"
								required>
						</div>
						<div class="w3-section">
							<div class="col-sm-6 w3-half form-group">
								<label class="w3-left w3-margin-left"><b>총 인원수</b></label> <input
									class="w3-input w3-border" type="number" min="2"
									placeholder="ex) 4" name="maxPerson" required><br>
							</div>
							<div class="col-sm-6 w3-half form-group">
								<label class="w3-left w3-margin-left"><b>모집 마감일</b></label> <input
									class="w3-input w3-border" type="date" name="dueDate" required><br>
							</div>
						</div>
						<div class="w3-section w3-padding w3-left-align">
							<label class="w3-margin-left"><b>스터디 타입 선택</b></label><br>
							<div class="w3-section">
								<input type="radio" name="type" checked> <label>
									시간 정하고 모여서 공부</label><br>
							</div>
							<div class="w3-section">
								<input type="radio" name="type"> <label> 한 사람씩
									돌아가면서 내용 설명</label><br>
							</div>
							<div class="w3-section">
								<input type="radio" name="type"> <label> 기타 (아래
									스터디 설명 란에서 설명해주세요!)</label>
							</div>
						</div>
						<div class="w3-section w3-padding">
							<label class="w3-left w3-margin-left"><b>스터디 설명</b></label> <input
								class="w3-input w3-border" type="text" style="height: 300px;"
								placeholder="어필도 좋습니다!" name="content" required>
						</div>
						<div class="w3-section w3-padding">
							<button
								class="w3-button w3-block w3-blue w3-login w3-section w3-padding"
								type="submit">Create Post</button>
						</div>
					</form>
					<div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
						<button
							onclick="document.getElementById('id02').style.display='none'"
							type="button" class="w3-button w3-red w3-left">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="table-responsive w3-padding-large w3-padding-32">
		<table class="table table-sm">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">제목</th>
					<th scope="col">스터디 이름</th>
					<th scope="col">모집 기간</th>
					<th scope="col">인원 수</th>
					<th scope="col">수정</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.getSeq()}</td>
						<td>${u.getTitle()}</td>
						<td>${u.getStudyName()}</td>
						<td>~ ${u.getDueDate()}</td>
						<td>${u.getMaxPerson()}</td>
						<td><a
							onclick="document.getElementById('id03').style.display='block'">Edit</a></td>
						<td><a onclick="delete_ok(${u.getSeq()})">Delete</a></td>

						<!-- Edit in clicked -->
		                <div id="id03" class="w3-modal">
		                  <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:80py">
		                    <div class="w3-center"><br>
		                      <span onclick="document.getElementById('id02').style.display='none'"
		                        class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
		                    </div>
		                    
		                    <!-- Edit Form -->
		                    <form class="w3-container w3-padding" action="/board/editpost/${u.getSeq()}">
		                      <div class="w3-section w3-padding">
		                        <h5 class="w3-text-black w3-center w3-padding">게시글 작성</h5><br>
		                        <label class="w3-left w3-margin-left"><b>제목</b></label>
		                        <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="${u.getTitle()}"
		                          name="title" required>
		                      </div>
		                      <div class="w3-section">
		                        <div class="col-sm-6 w3-half form-group">
		                          <label class="w3-left w3-margin-left"><b>작성자 이름</b></label>
		                          <input class="w3-input w3-border" type="text" placeholder="${u.getName()}" name="name" required>
		                        </div>
		                        <div class="col-sm-6 w3-half form-group">
		                          <label class="w3-left w3-margin-left"><b>작성자 학번</b></label>
		                          <input class="w3-input w3-border" type="text" placeholder="${u.getStudentNum()}" name="psw" required>
		                        </div>
		                      </div>
		                      <div class="form-group">
		                        <div class="col-sm-6 w3-half">
		                          <label class="w3-left w3-margin-left"><b>학부</b></label>
		                          <select class="w3-input w3-border" name="school" required>
		                            <option>글로벌리더십학부
		                            <option>국제어문학부
		                            <option>경영경제학부
		                            <option>법학부
		                            <option>커뮤니케이션학부
		                            <option>공간환경시스템공학부
		                            <option>기계제어공학부
		                            <option>콘텐츠융합디자인학부
		                            <option>생명과학부
		                            <option>전산전자공학부
		                            <option>상담심리사회복지학부
		                            <option>ICT창업학부
		                            <option>창의융합교육원
		                            <option>AI융합교육원
		                          </select>
		                        </div>
		                        <div class="col-sm-6 w3-half form-group">
		                          <label class="w3-left w3-margin-left"><b>스터디 이름</b></label>
		                          <input class="w3-input w3-border" type="text" placeholder="${u.getStudyName()}" name="studyName" required><br>
		                        </div>
		                      </div>
		                      <div class="w3-section w3-padding">
		                        <label class="w3-left w3-margin-left"><b>오픈챗 링크 </b><a href="https://fervors.tistory.com/185"
		                            target="_blank"> 생성방법 보러 가기</a></label>
		                        <input class="w3-input w3-border" type="text" placeholder="${u.getChatLink()}" name="name"
		                          required>
		                      </div>
		                      <div class="w3-section">
		                        <div class="col-sm-6 w3-half form-group">
		                          <label class="w3-left w3-margin-left"><b>총 인원수</b></label>
		                          <input class="w3-input w3-border" type="number" min="2" name="maxPerson"
		                            required><br>
		                        </div>
		                        <div class="col-sm-6 w3-half form-group">
		                          <label class="w3-left w3-margin-left"><b>모집 마감일</b></label>
		                          <input class="w3-input w3-border" type="date" name="dueDate" required><br>
		                        </div>
		                      </div>
		                      <div class="w3-section w3-padding w3-left-align">
		                        <label class="w3-margin-left"><b>스터디 타입 선택</b></label><br>
		                        <div class="w3-section">
		                          <input type="radio" name="type" checked>
		                          <label> 시간 정하고 모여서 공부</label><br>
		                        </div>
		                        <div class="w3-section">
		                          <input type="radio" name="type">
		                          <label> 한 사람씩 돌아가면서 내용 설명</label><br>
		                        </div>
		                        <div class="w3-section">
		                          <input type="radio" name="type">
		                          <label> 기타 (아래 스터디 설명 란에서 설명해주세요!)</label>
		                        </div>
		                      </div>
		                      <div class="w3-section w3-padding">
		                        <label class="w3-left w3-margin-left"><b>스터디 설명</b></label>
		                        <input class="w3-input w3-border" type="text" style="height: 300px;" placeholder="${u.getContent()}"
		                          name="content" required>
		                      </div>
		                      <div class="w3-section w3-padding">
		                        <button class="w3-button w3-block w3-blue w3-login w3-section w3-padding" type="submit">Create
		                          Post</button>
		                      </div>
		                    </form>
		                    <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
		                      <button onclick="document.getElementById('id03').style.display='none'" type="button"
		                        class="w3-button w3-red w3-left">Cancel</button>
		                    </div>
		                  </div>
						</div>
					  </div>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	

	<!-- Footer -->
	<footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
		<p>If error occured Contact On</p>
		<p>22000036@handong.edu || 22000453@handong.edu</p>
		<br>

		<div style="position: relative; bottom: 100px; z-index: 1;"
			class="w3-tooltip w3-right">
			<span class="w3-text w3-padding w3-blue w3-hide-small">Go To
				Top</span> <a class="w3-button w3-theme" href="#myPage"><span
				class="w3-xlarge"> <i class="fa fa-chevron-circle-up"></i></span></a>
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

      function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='/board/deleteok/' + id;
      }
    </script>
</body>

</html>