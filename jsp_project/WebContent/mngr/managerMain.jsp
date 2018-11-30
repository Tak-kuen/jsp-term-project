<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/jsp_project/css/style.css"/>
<script src="/jsp_project/js/jquery-3.3.1.min.js"></script>
<script src="/jsp_project/mngr/managerMain.js"></script>
<title>managerMain.jsp</title>
</head>
<body>
	<c:if test="${empty sessionScope.id }">
		<div id="mList"></div>
		<div id="mMain"></div>
	</c:if>
	<c:if test="${not empty sessionScope.id }">
		<div id="mMain">
			<div id="dropdownMenu">
				<ul>
					<li id="menu"><a href="cafe/menuHandling.do">메뉴관리</a>
					<li id="mileage">적립금 관리
					<li id="customer">고객관리
					<li id="admin">직원관리
					<li id="sales">매출관리
					<li id="main">메인메뉴로
				</ul>
			</div>
			<div id="calc">
				<div id="orderctgr"></div>
				<div id="orderlist">
					<c:forEach var="menu" items="${sessionScope.menus}">
					<div class="menus">
						<p>${menu.menu_name}<br/>
						<p>${menu.menu_price}<br/>
						<p>${menu.menu_desc}<br/>
						<p>${menu.menu_image}<br/>
					</div><br/>
					</c:forEach>
				</div>
				<div id="paymentlist">
				
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>