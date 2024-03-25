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

</script>
<%--
	// 이전 파일에서 세션에 저장해놓았으므로 여기서는 생략하기로 한다.
	String[] color = {
			"w3-red", "w3-pink", "w3-purple", "w3-deep-purple", "w3-indigo",
		    "w3-blue", "w3-aqua", "w3-teal", "w3-green", "w3-light-green", 
		    "w3-lime", "w3-khaki", "w3-yellow", "w3-amber", "w3-orange", "w3-deep-orange"
	};
	session.setAttribute("COLORLIST", color);
--%>
<%
	request.setAttribute("NAME", "ANIA");
%>
</head>
<body>
	<div class="w3-content mxw750 w3-center">
		<h1 class="w3-indigo w3-padding w3-card-4">${NAME} 구구단 - ${param.subj}</h1>
		<div class="w3-col">
<c:forEach var="dan" begin="2" end="9" varStatus="st">
			<div class="inblock w3-card-4 mgb10" style="width: 150px;">
				<h3 class="${COLORLIST[st.count - 1]} mgh0">${dan} 단</h3>
	<c:forEach var="gop" begin="1" end="9">
				<p>${dan} x ${gop } = ${dan * gop}</p>
	</c:forEach>
			</div>
</c:forEach>
		</div>
	</div>
</body>
</html>