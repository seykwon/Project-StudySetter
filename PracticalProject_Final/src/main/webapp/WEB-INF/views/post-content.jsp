<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO, java.util.*" %>

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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
  <style>
    a, p, h1, h2, h3, h5, div {
      font-family: 'Gowun Dodum', sans-serif;
    }
  </style>
</head>

<body id="myPage">
  <!-- Navbar -->
  <div class="w3-top">
    <div class="w3-bar w3-theme-d2 w3-left-align">
      <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-theme-d2"
        href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
      <a href="../index.html" class="w3-bar-item w3-button w3-blue"><i
          class="fa fa-home w3-margin-right"></i>StudySetter();</a>
      <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white">소개</a>
      <div class="w3-dropdown-hover w3-hide-small">
        <button class="w3-button" title="Notifications">학부 선택<i class="fa fa-caret-down"></i></button>
        <div class="w3-dropdown-content w3-card-4 w3-bar-block">
          <a href="#" class="w3-bar-item w3-button">글로벌리더십학부</a>
          <a href="#" class="w3-bar-item w3-button">국제어문학부</a>
          <a href="#" class="w3-bar-item w3-button">경영경제학부</a>
          <a href="#" class="w3-bar-item w3-button">법학부</a>
          <a href="#" class="w3-bar-item w3-button">커뮤니케이션학부</a>
          <a href="#" class="w3-bar-item w3-button">공간환경시스템공학부</a>
          <a href="#" class="w3-bar-item w3-button">기계제어공학부</a>
          <a href="#" class="w3-bar-item w3-button">콘텐츠융합디자인학부</a>
          <a href="#" class="w3-bar-item w3-button">생명과학부</a>
          <a href="#" class="w3-bar-item w3-button">전산전자공학부</a>
          <a href="#" class="w3-bar-item w3-button">상담심리사회복지학부</a>
          <a href="#" class="w3-bar-item w3-button">ICT창업학부</a>
          <a href="#" class="w3-bar-item w3-button">창의융합교육원</a>
          <a href="#" class="w3-bar-item w3-button">AI융합교육원</a>
        </div>
      </div>
      <a href="#" onclick="document.getElementById('id01').style.display='block'"
        class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-blue" title="Search">Log in</a>
      <!-- log in clicked -->
      <div id="id01" class="w3-modal">
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
          <div class="w3-center"><br>
            <span onclick="document.getElementById('id01').style.display='none'"
              class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
            <img src="../src/person.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
          </div>
          <!-- TODO: action page -->
          <form class="w3-container" action="/action_page.php">
            <div class="w3-section">
              <p class="w3-text-black w3-center">로그인 하시겠습니까?</p>
              <label><b>Id</b></label>
              <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Id" name="usrname"
                required>
              <label><b>Password</b></label>
              <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="psw" required>
              <button class="w3-button w3-block w3-blue w3-login w3-section w3-padding" type="submit">Login</button>
              <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me
            </div>
          </form>
          <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
            <button onclick="document.getElementById('id01').style.display='none'" type="button"
              class="w3-button w3-red">Cancel</button>
            <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
          </div>
        </div>
      </div>
    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
      <a href="#" class="w3-bar-item w3-button">소개</a>
      <div class="w3-dropdown-hover">
        <button class="w3-button" title="Category">학부 선택<i class="fa fa-caret-down"></i></button>
        <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="overflow-y: scroll; max-height: 50vh;">
          <a href="#" class="w3-bar-item w3-button">글로벌리더십학부</a>
          <a href="#" class="w3-bar-item w3-button">국제어문학부</a>
          <a href="#" class="w3-bar-item w3-button">경영경제학부</a>
          <a href="#" class="w3-bar-item w3-button">법학부</a>
          <a href="#" class="w3-bar-item w3-button">커뮤니케이션학부</a>
          <a href="#" class="w3-bar-item w3-button">공간환경시스템공학부</a>
          <a href="#" class="w3-bar-item w3-button">기계제어공학부</a>
          <a href="#" class="w3-bar-item w3-button">콘텐츠융합디자인학부</a>
          <a href="#" class="w3-bar-item w3-button">생명과학부</a>
          <a href="#" class="w3-bar-item w3-button">전산전자공학부</a>
          <a href="#" class="w3-bar-item w3-button">상담심리사회복지학부</a>
          <a href="#" class="w3-bar-item w3-button">ICT창업학부</a>
          <a href="#" class="w3-bar-item w3-button">창의융합교육원</a>
          <a href="#" class="w3-bar-item w3-button">AI융합교육원</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Post Container -->
  <div class="w3-container w3-padding-64 w3-padding-large w3-center" id="post" style="width:70%; margin:auto">
    <%
    BoardDAO boardDAO = new BoardDAO();
      String id=request.getParameter("id");	
      BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
    %>
    <div class="w3-section w3-padding">
      <h2 class="w3-text-black w3-center w3-padding"><%= u.getTitle()%></h2><br>
    </div>
    <p class="w3-right-align"><b>작성자 이름 : <%= u.getName()%></b></p>
    <p class="w3-right-align"><b>작성자 학번 : <%= u.getStudentNum()%></b></p>

    <div class="section w3-padding">
      <div class="w3-half">
        <p class="w3-left"><b>학부 : <%= u.getCategory()%></b></p>
      </div>
      <div class="w3-half">
        <p class="w3-left"><b>스터디 이름 : <%= u.getStudyName()%></b></p>
      </div>
    </div>
    
    <div class="w3-section w3-padding">
      <div class="w3-half">
        <p class="w3-left"><b>총 인원수 : <%= u.getMaxPerson()%></b></p>
      </div>
      <div class="w3-half">
        <p class="w3-left"><b>모집 마감일 : <%= u.getDueDate()%></b></p>
      </div>  
    </div>
    <div class="w3-section w3-padding">
      <p class="w3-left"><b>오픈챗 링크 : <%= u.getChatLink()%></b></p><br><br>
    </div>
    <div class="w3-section w3-padding">
      <p class="w3-left"><b>스터디 설명</b></p><br><br>
      <label class="w3-input w3-border" type="text" style="height: 300px;" name="content"><%= u.getContent()%></label>
    </div>
    <div class="w3-section w3-padding">
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