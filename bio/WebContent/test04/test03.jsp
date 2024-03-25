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
<%
	String[] color = {
			"w3-red", "w3-pink", "w3-purple", "w3-deep-purple", "w3-indigo",
		    "w3-blue", "w3-aqua", "w3-teal", "w3-green", "w3-light-green", 
		    "w3-lime", "w3-khaki", "w3-yellow", "w3-amber", "w3-orange", "w3-deep-orange"
	};
	session.setAttribute("COLORLIST", color);
	
	String[] memb = {
		"아냐", "로이드", "요르", "본드", "몰라요"	
	};
	
	session.setAttribute("LIST", memb);
%>
</script>
</head>
<body>
	<div class="w3-content mxw650 w3-center">
<c:forEach var="DATA" items="${LIST}" varStatus="st">
		<div class="${COLORLIST[st.index]} inblock imgBox">${DATA}</div>
</c:forEach>
		<hr>
<c:forEach var="i" begin="0" end="10">
		<div class="${COLORLIST[i]} inblock imgBox">${i}</div>
</c:forEach>
	</div>
</body>
</html>