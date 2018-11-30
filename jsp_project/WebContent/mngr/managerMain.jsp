<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/NewFile.css" type="text/css" />
<script src="/jsp_project/js/jquery-3.3.1.min.js"></script>
<script src="/jsp_project/mngr/managerMain.js"></script>
<title>managerMain.jsp</title>
</head>
<body>
	<c:if test="${empty sessionScope.id }">
<<<<<<< HEAD
		<div id="mList"></div>
=======
		<div id="mList"></div>

>>>>>>> refs/remotes/origin/master
		<div id="mMain"></div>
	</c:if>
	<c:if test="${not empty sessionScope.id }">
		<div id="mMain">
			<div id="dropdownMenu">
				<ul>
					<dl><button id="menu"><a href="cafe/menuHandling.do">메뉴관리</a></button>
					<dl><button id="mileage"><li>적립금</li><li>관리</li></button>
					<dl><button id="customer">고객관리</button>
					<dl><button id="admin">직원관리</button>
					<dl><button id="sales">매출관리</button>
					<dl><button id="main">메인메뉴</button>
				</ul>
			</div>
			<div id="calc">
				<div id="orderctgr"></div>
				<div id="orderlist">
					<c:forEach var="menu" items="${sessionScope.menus}">
					<div class="menus">
						<li>${menu.menu_name}</li>
						<li>${menu.menu_price}</li>
						<li>${menu.menu_desc}</li>
						<li>${menu.menu_image}</li>
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