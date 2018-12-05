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
			<div class="items"><img src="/jsp_project/images${menu.menu_image}"/></div>
			<div class="items">${menu.menu_name}</div>
			<div class="items">${menu.menu_price}</div>
			<div class="items">${menu.menu_desc}</div>
			
		</div>
		</c:if>
		<c:if test="${menu.menu_ctgr == 2}">
		<div class="ade">
			<div class="items"><img src="/jsp_project/images${menu.menu_image}"/></div>
			<div class="items">${menu.menu_name}</div>
			<div class="items">${menu.menu_price}</div>
			<div class="items">${menu.menu_desc}</div>
			
		</div>
		</c:if>
		<c:if test="${menu.menu_ctgr == 3}">
		<div class="ice">
			<div class="items"><img src="/jsp_project/images${menu.menu_image}"/></div>
			<div class="items">${menu.menu_name}</div>
			<div class="items">${menu.menu_price}</div>
			<div class="items">${menu.menu_desc}</div>
			
		</div>
		</c:if>
	</c:forEach>	
</div>
<div id="menuUpdate">
	<div id="menuEdit">
		<div id="menuName">
			<span class="menuLeft">메뉴명</span>
		</div>
		<div id="menuPrice">
			<span class="menuLeft">가격</span><span class="menuRight"></span>
		</div>
		<div id="menuDesc">
			<span class="menuLeft">이미지</span><span class="menuRight"></span>
		</div>
		<div id="menuImage">
			<span class="menuLeft"></span><span class="menuRight"></span>
		</div>
	</div>
</div>
<script src="/jsp_project/js/index.js"></script>