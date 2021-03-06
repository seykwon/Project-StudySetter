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
            class="w3-bar-item w3-button w3-hide-small w3-hover-white">??????</a>
          <div class="w3-dropdown-hover w3-hide-small">
            <button class="w3-button" title="Category">
              ?????? ??????<i class="fa fa-caret-down"></i>
            </button>
            <div class="w3-dropdown-content w3-card-4 w3-bar-block">
              <a href="global-leadershipschool.jsp" class="w3-bar-item w3-button">????????????????????????</a>
              <a href="international-studies-languages-and-literature.jsp"
                class="w3-bar-item w3-button">??????????????????</a> <a
                href="management-and-econmics.jsp" class="w3-bar-item w3-button">??????????????????</a>
              <a href="school-of-law.jsp" class="w3-bar-item w3-button">?????????</a> <a
                href="school-of-communication-arts.jsp"
                class="w3-bar-item w3-button">????????????????????????</a> <a
                href="spatial-environment-system-engineering.jsp"
                class="w3-bar-item w3-button">??????????????????????????????</a> <a
                href="machanical-and-control-engineering.jsp"
                class="w3-bar-item w3-button">?????????????????????</a> <a
                href="contents-convergence-design.jsp"
                class="w3-bar-item w3-button">??????????????????????????????</a> <a
                href="life-sciences.jsp" class="w3-bar-item w3-button">???????????????</a> <a
                href="computer-science-and-electrical-engineering.jsp"
                class="w3-bar-item w3-button">?????????????????????</a> <a
                href="counselling-psychology-and-social-welfare.jsp"
                class="w3-bar-item w3-button">??????????????????????????????</a> <a
                href="global-entrepreneurship-and-ICT.jsp"
                class="w3-bar-item w3-button">ICT????????????</a> <a
                href="school-of-creative-convergence-education.jsp"
                class="w3-bar-item w3-button">?????????????????????</a> <a
                href="ai-convergence-education.jsp" class="w3-bar-item w3-button">AI???????????????</a>
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
          <a href="introduction.jsp" class="w3-bar-item w3-button">??????</a>
          <div class="w3-dropdown-hover">
            <button class="w3-button" title="Category">
              ?????? ??????<i class="fa fa-caret-down"></i>
            </button>
            <div class="w3-dropdown-content w3-card-4 w3-bar-block"
              style="overflow-y: scroll; max-height: 50vh;">
              <a href="global-leadershipschool.jsp" class="w3-bar-item w3-button">????????????????????????</a>
              <a href="international-studies-languages-and-literature.jsp"
                class="w3-bar-item w3-button">??????????????????</a> <a
                href="management-and-econmics.jsp" class="w3-bar-item w3-button">??????????????????</a>
              <a href="school-of-law.jsp" class="w3-bar-item w3-button">?????????</a> <a
                href="school-of-communication-arts.jsp"
                class="w3-bar-item w3-button">????????????????????????</a> <a
                href="spatial-environment-system-engineering.jsp"
                class="w3-bar-item w3-button">??????????????????????????????</a> <a
                href="machanical-and-control-engineering.jsp"
                class="w3-bar-item w3-button">?????????????????????</a> <a
                href="contents-convergence-design.jsp"
                class="w3-bar-item w3-button">??????????????????????????????</a> <a
                href="life-sciences.jsp" class="w3-bar-item w3-button">???????????????</a> <a
                href="computer-science-and-electrical-engineering.jsp"
                class="w3-bar-item w3-button">?????????????????????</a> <a
                href="counselling-psychology-and-social-welfare.jsp"
                class="w3-bar-item w3-button">??????????????????????????????</a> <a
                href="global-entrepreneurship-and-ICT.jsp"
                class="w3-bar-item w3-button">ICT????????????</a> <a
                href="school-of-creative-convergence-education.jsp"
                class="w3-bar-item w3-button">?????????????????????</a> <a
                href="ai-convergence-education.jsp" class="w3-bar-item w3-button">AI???????????????</a>
            </div>
          </div>
        </div>
      </div>
    
      <!-- Board Container -->
      <div class="w3-container w3-padding-64 w3-center" id="board">
    
        <!-- Image Header -->
        <div class="w3-display-container w3-animate-opacity">
          <img src="../img/ai.jpg" style="width:100%; min-height:100px; max-height:500px; filter: brightness(50%);;">
          <div class="w3-container w3-display-middle w3-text-white">
            <h1>AI??????????????? ?????????</h1>
            <p>????????? ???????????? ???????????????!</p>
          </div>
          <a href="#"
            onclick="document.getElementById('id02').style.display='block'"
            class="w3-button w3-large w3-blue w3-display-bottomright">????????? <i
            class="fa fa-plus"></i>
          </a>
              
          <!-- ????????? in clicked -->
          <div id="id02" class="w3-modal">
            <div class="w3-modal-content w3-card-4 w3-animate-zoom"
              style="max-width: 80py">
              <div class="w3-center">
                <br> <span
                  onclick="document.getElementById('id02').style.display='none'"
                  class="w3-button w3-xlarge w3-transparent w3-display-topright"
                  title="Close Modal">??</span>
              </div>
              
              <!-- Form -->
              <form class="w3-container w3-padding" action="addok" method="post">
                <div class="w3-section w3-padding">
                  <h5 class="w3-text-black w3-center w3-padding">????????? ??????</h5>
                  <br> <label class="w3-left w3-margin-left"><b>??????</b></label>
                  <input class="w3-input w3-border w3-margin-bottom" type="text"
                    placeholder="?????? : ?????? #???????????? #??????????????? ..." name="title" required>
                </div>
                <div class="w3-section">
                  <div class="col-sm-6 w3-half form-group">
                    <label class="w3-left w3-margin-left"><b>????????? ??????</b></label> <input
                      class="w3-input w3-border" type="text" placeholder="ex) ?????????"
                      name="name" required>
                  </div>
                  <div class="col-sm-6 w3-half form-group">
                    <label class="w3-left w3-margin-left"><b>????????? ??????</b></label> <input
                      class="w3-input w3-border" type="number" minlength="8" maxlength="8"
                      placeholder="ex) 220XXXXX" name="studentNum" required>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-6 w3-half">
                    <label class="w3-left w3-margin-left"><b>??????</b></label> <select
                      class="w3-input w3-border" name="category" required>
                      <option value="01">????????????????????????
                      <option value="02">??????????????????
                      <option value="03">??????????????????
                      <option value="04">?????????
                      <option value="05">????????????????????????
                      <option value="06">??????????????????????????????
                      <option value="07">?????????????????????
                      <option value="08">??????????????????????????????
                      <option value="09">???????????????
                      <option value="10">?????????????????????
                      <option value="11">??????????????????????????????
                      <option value="12">ICT????????????
                      <option value="13">?????????????????????
                      <option value="14">AI???????????????
                    </select>
                  </div>
                  <div class="col-sm-6 w3-half form-group">
                    <label class="w3-left w3-margin-left"><b>????????? ??????</b></label> <input
                      class="w3-input w3-border" type="text" placeholder="ex) ????????????"
                      name="studyName" required><br>
                  </div>
                </div>
                <div class="w3-section w3-padding">
                  <label class="w3-left w3-margin-left"><b>????????? ?????? </b><a
                    href="https://fervors.tistory.com/185" target="_blank"> ????????????
                      ?????? ??????</a></label> <input class="w3-input w3-border" type="text"
                    placeholder="ex) https://open.kakao.com/a/bcdeF" name="chatLink"
                    required>
                </div>
                <div class="w3-section">
                  <div class="col-sm-6 w3-half form-group">
                    <label class="w3-left w3-margin-left"><b>??? ?????????</b></label> <input
                      class="w3-input w3-border" type="number" min="2"
                      placeholder="ex) 4" name="maxPerson" required><br>
                  </div>
                  <div class="col-sm-6 w3-half form-group">
                    <label class="w3-left w3-margin-left"><b>?????? ?????????</b></label> <input
                      class="w3-input w3-border" type="date" name="dueDate" required><br>
                  </div>
                </div>
                <div class="w3-section w3-padding w3-left-align">
                  <label class="w3-margin-left"><b>????????? ?????? ??????</b></label><br>
                  <div class="w3-section">
                    <input type="radio" name="type" checked> <label>
                      ?????? ????????? ????????? ??????</label><br>
                  </div>
                  <div class="w3-section">
                    <input type="radio" name="type"> <label> ??? ?????????
                      ??????????????? ?????? ??????</label><br>
                  </div>
                  <div class="w3-section">
                    <input type="radio" name="type"> <label> ?????? (??????
                      ????????? ?????? ????????? ??????????????????!)</label>
                  </div>
                </div>
                <div class="w3-section w3-padding">
                  <label class="w3-left w3-margin-left"><b>????????? ??????</b></label> <input
                    class="w3-input w3-border" type="text" style="height: 300px;"
                    placeholder="????????? ????????????!" name="content" required>
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
              <th scope="col">??????</th>
              <th scope="col">????????? ??????</th>
              <th scope="col">?????? ??????</th>
              <th scope="col">?????? ???</th>
              <th scope="col">??????</th>
              <th scope="col">??????</th>
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
                                class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">??</span>
                            </div>
                            
                            <!-- Edit Form -->
                            <form class="w3-container w3-padding" action="/board/editpost/${u.getSeq()}">
                              <div class="w3-section w3-padding">
                                <h5 class="w3-text-black w3-center w3-padding">????????? ??????</h5><br>
                                <label class="w3-left w3-margin-left"><b>??????</b></label>
                                <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="${u.getTitle()}"
                                  name="title" required>
                              </div>
                              <div class="w3-section">
                                <div class="col-sm-6 w3-half form-group">
                                  <label class="w3-left w3-margin-left"><b>????????? ??????</b></label>
                                  <input class="w3-input w3-border" type="text" placeholder="${u.getName()}" name="name" required>
                                </div>
                                <div class="col-sm-6 w3-half form-group">
                                  <label class="w3-left w3-margin-left"><b>????????? ??????</b></label>
                                  <input class="w3-input w3-border" type="text" placeholder="${u.getStudentNum()}" name="psw" required>
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="col-sm-6 w3-half">
                                  <label class="w3-left w3-margin-left"><b>??????</b></label>
                                  <select class="w3-input w3-border" name="school" required>
                                    <option>????????????????????????
                                    <option>??????????????????
                                    <option>??????????????????
                                    <option>?????????
                                    <option>????????????????????????
                                    <option>??????????????????????????????
                                    <option>?????????????????????
                                    <option>??????????????????????????????
                                    <option>???????????????
                                    <option>?????????????????????
                                    <option>??????????????????????????????
                                    <option>ICT????????????
                                    <option>?????????????????????
                                    <option>AI???????????????
                                  </select>
                                </div>
                                <div class="col-sm-6 w3-half form-group">
                                  <label class="w3-left w3-margin-left"><b>????????? ??????</b></label>
                                  <input class="w3-input w3-border" type="text" placeholder="${u.getStudyName()}" name="studyName" required><br>
                                </div>
                              </div>
                              <div class="w3-section w3-padding">
                                <label class="w3-left w3-margin-left"><b>????????? ?????? </b><a href="https://fervors.tistory.com/185"
                                    target="_blank"> ???????????? ?????? ??????</a></label>
                                <input class="w3-input w3-border" type="text" placeholder="${u.getChatLink()}" name="name"
                                  required>
                              </div>
                              <div class="w3-section">
                                <div class="col-sm-6 w3-half form-group">
                                  <label class="w3-left w3-margin-left"><b>??? ?????????</b></label>
                                  <input class="w3-input w3-border" type="number" min="2" name="maxPerson"
                                    required><br>
                                </div>
                                <div class="col-sm-6 w3-half form-group">
                                  <label class="w3-left w3-margin-left"><b>?????? ?????????</b></label>
                                  <input class="w3-input w3-border" type="date" name="dueDate" required><br>
                                </div>
                              </div>
                              <div class="w3-section w3-padding w3-left-align">
                                <label class="w3-margin-left"><b>????????? ?????? ??????</b></label><br>
                                <div class="w3-section">
                                  <input type="radio" name="type" checked>
                                  <label> ?????? ????????? ????????? ??????</label><br>
                                </div>
                                <div class="w3-section">
                                  <input type="radio" name="type">
                                  <label> ??? ????????? ??????????????? ?????? ??????</label><br>
                                </div>
                                <div class="w3-section">
                                  <input type="radio" name="type">
                                  <label> ?????? (?????? ????????? ?????? ????????? ??????????????????!)</label>
                                </div>
                              </div>
                              <div class="w3-section w3-padding">
                                <label class="w3-left w3-margin-left"><b>????????? ??????</b></label>
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
            var a = confirm("????????? ??????????????????????");
            if(a) location.href='/board/deleteok/' + id;
          }
        </script>
    </body>
    
    </html>