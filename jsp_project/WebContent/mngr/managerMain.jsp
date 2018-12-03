<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/jsp_project/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="../css/NewFile.css" type="text/css" />
<script src="/jsp_project/mngr/managerMain.js"></script>
<title>managerMain.jsp</title>
</head>
<body>
	<c:if test="${empty sessionScope.id }">
		<div id="mList"></div>
		<div id="mList"></div>
		<div id="mMain"></div>
	</c:if>
	<c:if test="${not empty sessionScope.id }">
		<div id="mMain">
			<div id="calc">
				<div id="orderctgr"></div>
				<div id="orderlist" class="box">
					<c:forEach var="menu" items="${sessionScope.menus}">
					<div class="menus">
						<li>${menu.menu_name}</li>
						<li>${menu.menu_price}</li>
						<li>${menu.menu_desc}</li>
						<li>${menu.menu_image}</li>
					</div><br/>
					</c:forEach>
				</div>
				<div id="paymentlist" class="box">
					<p>ㅇ
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>