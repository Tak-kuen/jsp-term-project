<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="/jsp_project/js/jquery-3.3.1.min.js"></script>
<script src="/jsp_project/mngr/logon/mLogin.js"></script>
<meta charset="UTF-8">
<title>mLoginForm</title>
</head>
<body>
	<c:if test="${empty sessionScope.id}">
		<div id="status">
			<ul>
				<li>아이디<input id="id" name="id" type="email" size="20" maxlength="50">
				비밀번호<input id="passwd" name="passwd" type="password" size="20" maxlength="16">
				<button id="login">로그인</button>
			</ul>
		</div>
	</c:if>
	<c:if test="${not empty sessionScope.id }">
		<div id="status">
			<ul>
				<li>관리자 로그인 성공!!.. 작업중
				<button id="logout">로그아웃</button>
			</ul>
		</div>
	</c:if>
</body>
</html>