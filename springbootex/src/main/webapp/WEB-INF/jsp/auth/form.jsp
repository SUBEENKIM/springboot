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
	<footer id="footer">
		<div class="copyright">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook" id = "loginBtn"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
			</ul>
			<p>
				&copy; Untitled. All rights reserved. Design: <a
					href="https://templated.co">TEMPLATED</a>. Images: <a
					href="https://unsplash.com">Unsplash</a>.
			</p>

		</div>
	</footer>

	<script>
		function getUserData() {
			/* FB.api('/me', function(response) {
			    document.getElementById('response').innerHTML = 'Hello ' + response.name;
			    console.log(response);
			}); */
			FB.api('/me', {
				fields : 'name,email,gender'
			}, function(response) {
				console.log(JSON.stringify(response));
				$("#name").text("이름 : " + response.name);
				$("#email").text("이메일 : " + response.email);
				$("#gender").text("성별 : " + response.gender);
				console.log('aaa');
			});
			console.log('bbb');
		}

		window.fbAsyncInit = function() {
			//SDK loaded, initialize it
			FB.init({
				appId : '1642835115777308',
				cookie : true, // enable cookies to allow the server to access
				// the session
				xfbml : true, // parse social plugins on this page
				version : 'v2.8' // use graph api version 2.8
			});

			//check user session and refresh it
			FB.getLoginStatus(function(response) {
				if (response.status === 'connected') {
					//user is authorized
					//document.getElementById('loginBtn').style.display = 'none';
					getUserData();
				} else {
					//user is not authorized
				}
			});
		};

		//load the JavaScript SDK
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {
				return;
			}
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.com/ko_KR/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		//add event listener to login button
		document.getElementById('loginBtn').addEventListener('click',
				function() {
					//do the login
					FB.login(function(response) {
						if (response.authResponse) {
							access_token = response.authResponse.accessToken; //get access token
							user_id = response.authResponse.userID; //get FB UID
							console.log('access_token = ' + access_token);
							console.log('user_id = ' + user_id);
							$("#access_token").text("접근 토큰 : " + access_token);
							$("#user_id").text("FB UID : " + user_id);
							//user just authorized your app
							//document.getElementById('loginBtn').style.display = 'none';
							getUserData();
						}
					}, {
						scope : 'email,public_profile',
						return_scopes : true
					});
				}, false);
	</script>

	<!-- Scripts -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>

</body>
</html>