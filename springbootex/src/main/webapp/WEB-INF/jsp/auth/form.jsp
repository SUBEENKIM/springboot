<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html lang="ko">
<head>
<title>Bigdata3</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/main.css" />
<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
</head>
<body class="subpage">

	<!-- Header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="../navi.jsp"></jsp:include>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">

				<header class="align-center">
					<h2>로그인</h2>
					<p>Email이나 SNS로 로그인 하실 수 있습니다.</p>

				</header>

				<hr class="major" />

				<!-- Login Form -->
				<div class="row 200%">
					<div class="6u 12u$(medium)">

						<h4>Login into Your Email</h4>
						<form action='login.do' method='POST'>

							<div class="4u 12u$(small)">
								<input type="radio" id="priority-low" name="userType"
									value="manager" checked> <label for="priority-low">관리자</label>
							</div>
							<div class="4u 12u$(small)">
								<input type="radio" id="priority-normal" name="userType"
									value="branchMaster"> <label for="priority-normal">점주</label>
							</div>
							<form method="post" action="#">
								<div class="row uniform">
									<div class="10u$">
										<i class="fa fa-key"></i> <input type="email" name="email"
											id="email" value='${cookie.email.value}' placeholder="Email" />
									</div>
									<div class="10u$">
										<input type="password" name="password" id="password" value=""
											placeholder="password" />
									</div>
									<!-- checkbox -->
									<div class="6u 12u$(small)">
										<input type="checkbox" id="copy" name="saveEmail"> <label
											for="copy">Remember me</label>
									</div>
									<div class="12u$">
										<ul class="actions">
											<li><input type="submit" value="Sign-In" /></li>
											<li><a href="#" class="button special icon fa-search">Forgot
													Password</a></li>
										</ul>
									</div>
									<div class="12u$">
										<ul class="actions">
											<li><a href="#" class="button icon fa-download">Create
													New Account</a></li>
										</ul>
									</div>
								</div>
							</form>
					</div>

					<div class="6u 12u$(medium)">
						<h4>Facebook Chatbot</h4>
						<div class="col align-center">
							<div class="image round fit">
								<img
									src="${pageContext.servletContext.contextPath}/images/fb-chatbot.png"
									alt="" />
							</div>

							<a href="https://www.mfacebook.com/messages/t/1214050375393430"
								class="button">Run Chatbot</a>
						</div>

					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- Footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

	<!-- Scripts -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>

</body>
</html>