<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>
<body>
	<%
		String sreq = request.getParameter("req");
	
		if(sreq.equals("forward")){
			// 포워딩 요청한 경우
			RequestDispatcher rd = request.getRequestDispatcher("gugudan.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("gugudan.jsp");
		}
	%>
</body>
</html>