<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%--
		임시 로그인 처리용 jsp
	--%>
	<c:if test="${empty SID}">
		<%
			session.setAttribute("SID", "ania");
		%>
	</c:if>
	
	<c:redirect url="/" />
</body>
</html>