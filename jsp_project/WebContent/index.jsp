<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<link rel="stylesheet" href="../css/NewFile.css" type="text/css" />
=======
<link rel="stylesheet" href="/jsp_project/css/style.css"/>
>>>>>>> branch 'master' of https://github.com/Tak-kuen/jsp-term-project.git
<meta charset="UTF-8">
<title>Jsp Project</title>
</head>
<body>
<div id="header">
	<div id="logo" class="box">
		<!-- <img class="noborder" id="logo" src="/jsp_project/images/test.png"/> -->
	</div>
	<div id="auth" class="box">
		<c:if test="${type == 0}">
			<jsp:include page="mngr/logon/mLoginForm.jsp" />
		</c:if>
		<c:if test="${type == 1}">
			<jsp:include page="member/loginForm.jsp" />
		</c:if>
	</div>
</div>
<div id="content" class="box2">
	<jsp:include page="${cont}"/>
</div>

</body>
</html>