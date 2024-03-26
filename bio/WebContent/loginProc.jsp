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
				
			if(request.getParameter("id").equals("ania") && request.getParameter("pw").equals("12345")){
				session.setAttribute("SID", request.getParameter("id"));
			} else {
				// 입력데이터가 정확하지 않은 경우이므로
				// 로그인 페이지로 다시 돌려보낸다.
		%>
			<c:redirect url="/member/login.jsp" />
		<%
			}
		%>
	</c:if>
	
	<c:redirect url="/" />
</body>
</html>