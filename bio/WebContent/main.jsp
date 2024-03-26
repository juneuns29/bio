<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="/resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="/resources/css/user.css">
<script type="text/javascript" src="/resources/js/jquery-3.7.1.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#login').click(function(){
			$(location).attr('href', '/loginProc.jsp');
		});
		
		$('#logout').click(function(){
			$(location).attr('href', '/logoutProc.jsp');
		});
	});
</script>
</head>
<body>
	<div class="w3-content mxw650 w3-center">
		<h1 class="w3-pink w3-padding w3-card-4">아냐 메인</h1>
		<div class="w3-col mgt10">
<!-- 로그인에 성공하면 session에 SID라는 속성으로 아이디를 기억시켜 놓을 것이므로 -->
<%--
<c:if test="${not empty SID}">
			<div class="w3-button w3-small w3-orange w3-left" id="logout">로그아웃</div>
</c:if>
<c:if test="${empty SID}">
			<div class="w3-button w3-small w3-blue w3-right" id="join">회원가입</div>
			<div class="w3-button w3-small w3-green w3-right" id="login">로그인</div>
</c:if>
--%>
<c:choose>
	<c:when test="${not empty SID}">
			<div class="w3-button w3-small w3-orange w3-left" id="logout">로그아웃</div>
	</c:when>
	<c:when test="${empty SID}">
			<div class="w3-button w3-small w3-blue w3-right" id="join">회원가입</div>
			<div class="w3-button w3-small w3-green w3-right" id="login">로그인</div>
	</c:when>
</c:choose>
		</div>
	</div>
</body>
</html>