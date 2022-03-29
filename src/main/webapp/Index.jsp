<%@page import="Model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>당신 곁에, 복순이</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>

<body class="landing is-preload">

	<%
		UserDTO udto = (UserDTO)session.getAttribute("udto");
	%>

	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1>
				<a href="Index.jsp">복순이&nbsp;&nbsp;</a>by dr.boksun
			</h1>
			
			<nav id="nav" style="text-align:right;">
			<!-- 유저 아이콘 -->
			<!-- 봉투 아이콘 -->
			<i class="fa-regular fa-envelope" style="color:white;margin-top:20px;"></i> 
			<!-- 하트 아이콘 -->
			<i class="fa-solid fa-heart" style="color:white;margin-left:20px;"></i> 
			<!-- 연필 아이콘 -->
			<i class="fa-regular fa-pen-to-square" style="color:white;margin-left:20px;"></i> 
			
			<i class="fa-solid fa-user" style="color:white;margin-left:20px;"></i>
			<sup style="color:yellow;font-weight:500;font-size:small; vertical-align:sub;">User님 환영합니다!</sup>
			
			
				<ul>
					<li><a href="Index.jsp">홈</a></li>
					<li><a href="select_handi.jsp">정보 등록 및 조회&nbsp;&nbsp;&nbsp;<i
							class='icon solid fa fa-angle-down'></i>
					</a>
						<ul>
							<li><a href="reg_handi.jsp">회원 정보 등록</a></li>
							<li><a href="reg_box.jsp">보관함 등록 및 조회</a></li>
						</ul></li>
					<li class='sub-menu'><a href="#">커뮤니티&nbsp;&nbsp;&nbsp;<i
							class='fa fa-angle-down'></i></a>
						<ul>
							<li><a href="qnaMain.jsp">문의하기</a></li>
							<li><a href="storyMain.jsp">정보 공유</a></li>
						</ul></li>
					<li class='sub-menu'><a href="Mypage.jsp">마이페이지&nbsp;&nbsp;&nbsp;<i
							class='fa fa-angle-down'></i></a>
						<ul>
							<li><a href="edit_info.jsp">내 정보 수정</a></li>
							
							<% if(udto != null){ %>
								<li><a href="edit_pw_next.jsp?user_id=<%= udto.getUser_id()%>">비밀번호 재설정</a></li>
							<%} else{ %>
								<li><a href="edit_pw.jsp">비밀번호 변경</a></li>
							<%} %>
							<li><a href="select_user0.jsp">담당 복지사 조회</a></li>
							<li><a href="select_user1.jsp">보호자 조회</a></li>
						</ul></li>

					<% if(udto != null){ %>
						<li><a href="LogoutServiceCon.do" class="button">로그아웃</a></li>
					<%} else{%>
						<li><a href="Login.jsp" class="button">로그인</a></li>
					<%} %>

				</ul>
			</nav>
		</header>
		

		<!-- Banner -->
		<section id="banner">
			<h2>당신 곁에, 복순이</h2>
			<p>
				버튼만 누르면 먹을 약을 알려주는<br>스마트한 약 보관함
			</p>

			<% if(udto != null){ %>
			<h3 style="color: black"><%= udto.getUser_name() %>님 반갑습니다.
			</h3>
			<a href="Explain.jsp" class="button">제품 설명 및 사용 방법</a>
			</li>
			<%} else{%>
			<a href="Join.jsp" class="button primary">가입하기</a>
			</li> <a href="Explain.jsp" class="button">제품 설명 및 사용 방법</a>
			</li>
			<%} %>


		</section>

		<!-- Main -->


		<!-- CTA -->
		<section id="cta">

			<h2>복순이</h2>
			<p>복순이 서비스를 이용하세요!</p>

			<form>
				<div class="row gtr-50 gtr-uniform">
					<div class="col-8 col-12-mobilep">
						<input type="email" name="email" id="email"
							placeholder="Email Address" />
					</div>
					<div class="col-4 col-12-mobilep">
						<input type="submit" value="Sign Up" class="fit" />
					</div>
				</div>
			</form>

		</section>


		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span
						class="label">Github</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon brands fa-google-plus"><span
						class="label">Google+</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>

	</div>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- awesome font -->
	<script src="https://kit.fontawesome.com/8b21a455c5.js" crossorigin="anonymous"></script>

</body>
</html>