<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward</title>
</head>
<body>
	<%
		RequestDispatcher rd = request.getRequestDispatcher("gugudan.jsp");
	
		rd.forward(request, response);
	%>
</body>
</html>