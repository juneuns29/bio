<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Redirect</title>
</head>
<body>
<!-- 
	<script type="text/javascript">
		location.href = 'gugudan.jsp';
	</script>
 -->
	<%
		response.sendRedirect("gugudan.jsp");
	%>
</body>
</html>