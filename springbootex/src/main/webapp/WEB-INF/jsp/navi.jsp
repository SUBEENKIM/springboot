<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class='navir'>
	<nav id="menu">
		<ul class="links">
			<li><c:choose>
					<c:when test="${loginBranchMaster == null}">
						<a href="form.html">로그인 </a>
					</c:when>
					<c:when test="${loginBranchMaster != null}">
						<a href='${pageContext.request.contextPath}/auth/logout.do'>로그아웃 </a>
						<div id='login'>
							${loginBranchMaster.name}(${loginBranchMaster.email}) 
								
						</div>
					</c:when>
				</c:choose> </a></li>

			<li><a href="index.html">메인</a></li>
			<li><a href="generic.html">내용1</a></li>
			<li><a href="elements.html">튜토리얼</a></li>
			<li><a href="menu_info.html">메뉴소개</a></li>
			<li><a href="noticeboard.html">게시판</a></li>
			<li><a href="adminmain.html">Admin Only</a></li>
		</ul>
	</nav>
</div>