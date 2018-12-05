<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/mLoginForm.css" type="text/css" />
<script src="/jsp_project/js/jquery-3.3.1.min.js"></script>
<script src="/jsp_project/user/logon/uLogin.js"></script>
<meta charset="UTF-8">
</head>
<body> 
	<c:if test="${empty sessionScope.num}">
		<div class="status">
			<h1>Log-in</h1>
			<span class="label">name&nbsp;</span><input id="name" name="name" type="text" size="20" maxlength="50"><br/>
			<span class="label">phone-number</span><input id="num" name="num" type="password" size="20" maxlength="16">
			<button id="login">로그인</button>
		</div>
		
	</c:if>
	<c:if test="${not empty sessionScope.num }">
		<div class="status2">
			<ul id="successlogin">
				<li>손님 로그인 성공!!
				<button id="logout">로그아웃</button>
			</ul>
		</div>
	</c:if>
</body>
</html>