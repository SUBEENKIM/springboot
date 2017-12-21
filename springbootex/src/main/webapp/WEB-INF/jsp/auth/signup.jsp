<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>회원가입</title>

</head>
<body>

<h1>회원가입</h1>
<form action='add.do' method='POST' >
이메일:<input type='text' name='email'><br>
암호:<input type='password' name='password'><br>
암호확인:<input type='password' name='passwordchk'><br>
<button>가입</button>
</form>

</body>
<script></script>

</html>