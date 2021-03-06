<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
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
      <a href="majorlist" class="w3-bar-item w3-button w3-blue"><i class="fa fa-home w3-margin-right"></i>StudySetter();</a>
      <a href="introduction" class="w3-bar-item w3-button w3-hide-small w3-hover-white">소개</a>
      <div class="w3-dropdown-hover w3-hide-small">
        <button class="w3-button" title="Category">학부 선택<i class="fa fa-caret-down"></i></button>
        <div class="w3-dropdown-content w3-card-4 w3-bar-block">
          <a href="board/global-leadershipschool.html" class="w3-bar-item w3-button">글로벌리더십학부</a>
          <a href="board/international-studies-languages-and-literature.html" class="w3-bar-item w3-button">국제어문학부</a>
          <a href="board/management-and-econmics.html" class="w3-bar-item w3-button">경영경제학부</a>
          <a href="board/school-of-law.html" class="w3-bar-item w3-button">법학부</a>
          <a href="board/school-of-communication-arts.html" class="w3-bar-item w3-button">커뮤니케이션학부</a>
          <a href="board/spatial-environment-system-engineering.html" class="w3-bar-item w3-button">공간환경시스템공학부</a>
          <a href="board/machanical-and-control-engineering.html" class="w3-bar-item w3-button">기계제어공학부</a>
          <a href="board/contents-convergence-design.html" class="w3-bar-item w3-button">콘텐츠융합디자인학부</a>
          <a href="board/life-sciences.html" class="w3-bar-item w3-button">생명과학부</a>
          <a href="board/computer-science-and-electrical-engineering.html" class="w3-bar-item w3-button">전산전자공학부</a>
          <a href="board/counselling-psychology-and-social-welfare.html" class="w3-bar-item w3-button">상담심리사회복지학부</a>
          <a href="board/global-entrepreneurship-and-ICT.html" class="w3-bar-item w3-button">ICT창업학부</a>
          <a href="board/school-of-creative-convergence-education.html" class="w3-bar-item w3-button">창의융합교육원</a>
          <a href="board/ai-convergence-education.html" class="w3-bar-item w3-button">AI융합교육원</a>
        </div>
      </div>
      <a href="#" onclick="document.getElementById('id01').style.display='block'" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-blue">Log in</a>
      <!-- log in clicked -->
      <div id="id01" class="w3-modal">
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
          <div class="w3-center"><br>
            <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
            <img src="src/person.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
          </div>
          <!-- TODO: action page -->
          <form class="w3-container" action="./WEB-INF/views/login.jsp" method="post">
            <div class="w3-section">
            <p class="w3-text-black w3-center">로그인 하시겠습니까?</p>
            <label><b>Id</b></label>
              <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Id" name="id" required>
              <label><b>Password</b></label>
              <input class="w3-input w3-border" type="text" placeholder="Enter Password" name="password" required>
              <button class="w3-button w3-block w3-blue w3-login w3-section w3-padding" type="submit">Login</button>
            </div>
          </form>
          <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
            <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
            <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
          </div>
        </div>
      </div>
    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
      <a href="introduction.html" class="w3-bar-item w3-button">소개</a>
      <div class="w3-dropdown-hover">
        <button class="w3-button" title="Category">학부 선택<i class="fa fa-caret-down"></i></button>
        <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="overflow-y: scroll; max-height: 50vh;">
          <a href="board/global-leadershipschool.html" class="w3-bar-item w3-button">글로벌리더십학부</a>
          <a href="board/international-studies-languages-and-literature.html" class="w3-bar-item w3-button">국제어문학부</a>
          <a href="board/management-and-econmics.html" class="w3-bar-item w3-button">경영경제학부</a>
          <a href="board/school-of-law.html" class="w3-bar-item w3-button">법학부</a>
          <a href="board/school-of-communication-arts.html" class="w3-bar-item w3-button">커뮤니케이션학부</a>
          <a href="board/spatial-environment-system-engineering.html" class="w3-bar-item w3-button">공간환경시스템공학부</a>
          <a href="board/machanical-and-control-engineering.html" class="w3-bar-item w3-button">기계제어공학부</a>
          <a href="board/contents-convergence-design.html" class="w3-bar-item w3-button">콘텐츠융합디자인학부</a>
          <a href="board/life-sciences.html" class="w3-bar-item w3-button">생명과학부</a>
          <a href="board/computer-science-and-electrical-engineering.html" class="w3-bar-item w3-button">전산전자공학부</a>
          <a href="board/counselling-psychology-and-social-welfare.html" class="w3-bar-item w3-button">상담심리사회복지학부</a>
          <a href="board/global-entrepreneurship-and-ICT.html" class="w3-bar-item w3-button">ICT창업학부</a>
          <a href="board/school-of-creative-convergence-education.html" class="w3-bar-item w3-button">창의융합교육원</a>
          <a href="board/ai-convergence-education.html" class="w3-bar-item w3-button">AI융합교육원</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Image Header -->
  <div class="w3-display-container w3-animate-opacity">
    <img src="../img/study.jpg" alt="boat" style="width:100%;min-height:350px;max-height:600px;">
    <div class="w3-container w3-display-bottomleft w3-margin-bottom">
      <button onclick="document.getElementById('id01').style.display='block'"
        class="w3-button w3-xxlarge w3-theme w3-hover-blue" title="Go To W3.CSS">StudySetter();</button>
    </div>
  </div>

  <!-- Category Container -->
  <div class="w3-container w3-padding-64 w3-center w3-padding-32" id="category">
    <h2>학부 목록</h2>
    <p>스터디 관련 학부를 클릭해주세요. (가나다 순)</p>

    <div class="w3-row w3-padding-32"><br>
      <div class="w3-quarter">
        <a href="board/global-leadershipschool.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_853-01.png" alt="Boss" style="width:70%;"
            class="w3-hover-opacity">
          <h3>글로벌리더십학부</h3>
          <p>예수님을 닮은 글로벌 리더</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/international-studies-languages-and-literature.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_856-01.png" alt="Boss" style="width:70%"
            class="w3-hover-opacity">
          <h3>국제어문학부</h3>
          <p>Global Bridge Builders for Christ</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/management-and-econmics.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_859-01.png" alt="Boss" style="width:70%;"
            class="w3-hover-opacity">
          <h3>경영경제학부</h3>
          <p>도전하라 지금, 하나님의방법으로</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/school-of-law.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_862-01.png" alt="Boss" style="width:70%"
            class="w3-hover-opacity">
          <h3>법학부</h3>
          <p>정의를 하수같이 공법을 물같이</p>
        </a>
      </div>
    </div>

    <div class="w3-row w3-padding-32"><br>
      <div class="w3-quarter">
        <a href="board/school-of-communication-arts.html">
          <img src="https://www.handong.edu/dcp/editor/images/sub_865-01-1.png" alt="Boss" style="width:70%;"
            class="w3-hover-opacity">
          <h3>커뮤니케이션학부</h3>
          <p>맑은 컨텐츠로 세상을 바꾼다</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/spatial-environment-system-engineering.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_868-01.png" alt="Boss" style="width:70%"
            class="w3-hover-opacity">
          <h3>공간환경시스템공학부</h3>
          <p>이웃을 위한 공간 환경 설계</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/machanical-and-control-engineering.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_871-01.png" alt="Boss" style="width:70%;"
            class="w3-hover-opacity">
          <h3>기계제어공학부</h3>
          <p>생각대로 움직인다. 낭만기계</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/contents-convergence-design.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_874-01.png" alt="Boss" style="width:70%"
            class="w3-hover-opacity">
          <h3>콘텐츠융합디자인학부</h3>
          <p>보시기에 좋았더라</p>
        </a>
      </div>
    </div>

    <div class="w3-row w3-padding-32"><br>
      <div class="w3-quarter">
        <a href="board/life-sciences.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_877-01.png" alt="Boss" style="width:70%;"
            class="w3-hover-opacity">
          <h3>생명과학부</h3>
          <p>생명의 지혜 생명을 살리는 열정</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="list" >
          <img src="https://www.handong.edu/site/handong/res/img/sub_880-01.png" alt="Boss" style="width:70%"
            class="w3-hover-opacity">
          <h3>전산전자공학부</h3>
          <p>하나님의 마음, 미래기술의 심장</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/counselling-psychology-and-social-welfare.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_883-01.png" alt="Boss" style="width:70%;"
            class="w3-hover-opacity">
          <h3>상담심리사회복지학부</h3>
          <p>주님 사랑! 사람 사랑!</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/global-entrepreneurship-and-ICT.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_886-01.png" alt="Boss" style="width:70%"
            class="w3-hover-opacity">
          <h3>ICT 창업학부</h3>
          <p>Creation beyond Technology</p>
        </a>
      </div>
    </div>

    <div class="w3-row w3-padding-32"><br>
      <div class="w3-quarter">
        <a href="board/school-of-creative-convergence-education.html">
          <img src="https://www.handong.edu/site/handong/res/img/sub_890-01.png" alt="Boss" style="width:70%;"
            class="w3-hover-opacity">
          <h3>창의융합교육원</h3>
          <p>협력하여 선을 이루는 창의 융합 교육원</p>
        </a>
      </div>
      <div class="w3-quarter">
        <a href="board/ai-convergence-education.html">
          <img src="https://www.handong.edu/dcp/editor/images/AI%E1%84%8B%E1%85%B2%E1%86%BC%E1%84%92%E1%85%A1%E1%86%B8%E1%84%80%E1%85%AD%E1%84%8B%E1%85%B2%E1%86%A8%E1%84%8B%E1%85%AF%E1%86%AB.jpg" alt="Boss" style="width:70%"
            class="w3-hover-opacity">
          <h3>AI융합교육원</h3>
          <p>인공지능 어깨 위에 올라 새로운 세상을 열라</p>
        </a>
      </div>
    </div>
  </div>
  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
    <p>If error occured Contact On</p>
    <p>22000036@handong.edu || 22000453@handong.edu</p><br>
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