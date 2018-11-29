<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/jsp_project/js/jquery-3.3.1.min.js"></script>
<script src="/jsp_project/mngr/managerMain.js"></script>
<title>managerMain.jsp</title>
</head>
<body>
	<c:if test="${empty sessionScope.id }">
		<div id="mList"></div>
	</c:if>
	<c:if test="${not empty sessionScope.id }">
		<div id="mList">
			<ul>
				<li>상품관련 작업
				<li><button id="registProduct">상품등록</button>
				<li><button id="updateProduct">상품수정/삭제</button>
			</ul>
			<ul>
				<li>구매된 상품관련 작업
				<li><button id="orderedProduct">전체구매목록 확인</button>
			</ul>
			<ul>
				<li>상품 QnA 작업
				<li><button id="qna">상품 QnA답변</button>
			</ul>
		</div>
	</c:if>

</body>
</html>