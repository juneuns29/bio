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
		String[] list = {
				"w3-red", "w3-pink", "w3-purple", "w3-deep-purple", "w3-indigo",
			    "w3-blue", "w3-aqua", "w3-teal", "w3-green", "w3-light-green", 
			    "w3-lime", "w3-khaki", "w3-yellow", "w3-amber", "w3-orange", "w3-deep-orange"
		};
		
		String sreq = request.getParameter("req");
		
		if(sreq.equals("forward")){
			// 데이터 덧붙이기
			request.setAttribute("colorList", list);
			
			// 포워딩 요청한 경우
			RequestDispatcher rd = request.getRequestDispatcher("gugudan.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("gugudan.jsp");
		}
	%>
	

</body>
</html>