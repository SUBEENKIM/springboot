<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html lang="ko">

<head>
<title>Elements - Urban by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/registration.css" />

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
		<section class="wrapper">
			<div class="inner">
				<header class="align-center">
					<h2>My Page</h2>
					<p>자세한 정보를 등록하지 않으면 서비스 이용에 제한적일 수 있습니다.</p>
				</header>
			</div>
		</section>

		<section class="wrapper style1">
			<div class="inner">
				<div class="row">
					<div class="3u 12u$(medium)">
						<div class="box">
							<p align="center">
								<strong>'${loginBranchMaster.name}'</strong> 님 반갑습니다.
							</p>
							<a href="form.html" class="button special">로그인 페이지 이동</a> <a
								href="${pageContext.request.contextPath}/auth/logout.do"
								class="button alt">로그 아웃</a>
						</div>
						<div class="box">
							<ul class="actions vertical">
								<li><a href="#" class="button">패스워드수정</a></li>
								<!-- 모달창으로 구현? -->
								<li><a href="store_retouch.html" class="button">매장정보</a></li>
								<li><a href="iot_retouch.html" class="button">기기정보</a></li>
								<li><a href="menu_retouch.html" class="button">메뉴정보</a></li>
								<li><a href="writed_bd.html" class="button">내가 쓴 게시글</a></li>
								<li><a href="delete_user.html" class="button">회원탈퇴</a></li>
								<!-- 모달창으로 구현? -->
							</ul>
						</div>
					</div>
					
					<div class="9u$ 12u$(medium)">
						<div class="box">
							<form method="post" action="update">
								<div class="row uniform">


									<div class="2u 12u$(xsmall)">
										<h4>아이디</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="email" name="email" id="email"
											value="${loginBranchMaster.email}" placeholder="Id" readonly />
									</div>

									<div class="2u 12u$(xsmall)">
										<h4>성명</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text" name="name" id="name"
											value="${loginBranchMaster.name}" placeholder="Name" />
									</div>
									<div class="2u 12u$(xsmall)">
										<h4>개인연락처</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text" name="tel" id="tel"
											value="${loginBranchMaster.tel}" placeholder="휴대전화번호" />
									</div>
									<div class="2u 12u$(xsmall)">
										<h4>매장명</h4>
									</div>
									<div class="5u 12u$(xsmall)">
										<div class="select-wrapper">
											<select  id="branchSelect">
											
												<c:forEach items="${branchList}" var="branch">
												<option value="${branch.no}">${branch.name}</option>
												
												</c:forEach>
																		
											</select>
										</div>
									</div>
									
							    	<div class="2u 12u$(xsmall)">
										<h4>매장넘버</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text"  id="bno" placeholder="매장넘버"
											 readonly />
									</div>
									<div class="2u 12u$(xsmall)">
										<h4>매장연락처</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text"  id="btel"
											value="" placeholder="매장전화번호" readonly />
									</div>
								

									<div class="3u 12u$(xsmall)">
										<h4>기기등록상태</h4>
									</div>
									<div class="3u 12u$(small)">
										<input type="radio" id="priority-low" name="priority" checked>
										<label for="priority-low">등록완료</label>
									</div>
									<div class="3u 12u$(small)">
										<input type="radio" id="priority-normal" name="priority">
										<label for="priority-normal">일부만 등록</label>
									</div>
									<div class="3u$ 12u$(small)">
										<input type="radio" id="priority-high" name="priority">
										<label for="priority-high">미등록</label>
									</div>


									<!-- Break -->
									<div class="12u$">
										<ul class="actions">
											<li><input type="submit" value="회원정보수정" /></li>
											<li><input type="reset" value="취소" class="alt" /></li>
										</ul>
									</div>
								</div>
							</form>
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

    <script>
        var branchList = {};
        
        <c:forEach items="${branchList}" var="branch">
        branchList['${branch.no}'] = {
        	no: '${branch.no}',
        	name: '${branch.name}',
        	tel: '${branch.tel}'
        };
        </c:forEach>
        
        
        var branchNo = $('#branchSelect').prop('value');
        
        var bno = document.getElementById("bno");
        var btel = document.getElementById("btel");
        bno.value = (branchList[branchNo].no);
        btel.value = (branchList[branchNo].tel);
        
    	$('#branchSelect').on('change', function() {
    		var branchNo = $(this).prop('value');
    		
    		bno.value = (branchList[branchNo].no);
    		btel.value = (branchList[branchNo].tel);
    	})
    </script>
</body>
</html>