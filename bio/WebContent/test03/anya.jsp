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
	String sid = (String) session.getAttribute("SID");
%>
	<div class="w3-content mxw650 w3-center">
		<h1 class="w3-pink w3-padding w3-card-4">Anya Page</h1>
		<div class="w3-col">
	<%
		if(sid != null){
	%>
			<img src="/resources/image/anya.jpg" width="100%" height="auto"
					class="w3-card-4">
	<%
		} else {
	%>
			<img src="/resources/image/avatar/noimage.jpg" width="100%" height="auto"
					class="w3-card-4">
	<%
		}
	%>
		</div>
	</div>
</body>
</html>