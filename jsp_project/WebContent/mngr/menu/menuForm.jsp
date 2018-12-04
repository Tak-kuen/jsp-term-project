<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/jsp_project/css/menuForm.css" type="text/css" />
<div class="category">
	<ul>
		<li><span id="coffee" class="menuLink" href="">Coffee</span></li>
		<li><span id="ade" class="menuLink" href="">Ade</span></li>
		<li><span id="ice" class="menuLink" href="">Icecream</span></li>
	</ul>
</div>
<div id="menuList">
	<c:forEach var="menu" items="${sessionScope.menus}">
		<c:if test="${menu.menu_ctgr == 1}">
		<div class="coffee">
			<div class="items">${menu.menu_name}</div>
			<div class="items">${menu.menu_price}</div>
			<div class="items">${menu.menu_desc}</div>
			<div class="items">${menu.menu_image}</div>
		</div>
		</c:if>
		<c:if test="${menu.menu_ctgr == 2}">
		<div class="ade">
			<div class="items">${menu.menu_name}</div>
			<div class="items">${menu.menu_price}</div>
			<div class="items">${menu.menu_desc}</div>
			<div class="items">${menu.menu_image}</div>
		</div>
		</c:if>
		<c:if test="${menu.menu_ctgr == 3}">
		<div class="ice">
			<div class="items">${menu.menu_name}</div>
			<div class="items">${menu.menu_price}</div>
			<div class="items">${menu.menu_desc}</div>
			<div class="items">${menu.menu_image}</div>
		</div>
		</c:if>
	</c:forEach>	
</div>
<div id="menuUpdate">

</div>
<script src="/jsp_project/js/index.js"></script>