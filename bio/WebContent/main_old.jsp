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
	$(document).ready(function(){
		
		$('#login').click(function(){
			$(location).attr('href', '/test03/loginProc.jsp');
		});
		
		$('#logout').click(function(){
			$(location).attr('href', '/test03/logoutProc.jsp');
		});
	});
</script>
</head>
<body>
	<div class="w3-content mxw650 w3-center">
		<h1 class="w3-pink w3-padding w3-card-4">아냐 메인</h1>
		<div class="w3-col mgt10">
<%
	Object sid = session.getAttribute("SID");
	
	if(sid != null){
%>
			<div class="w3-button w3-small w3-orange w3-left w3-round-large mgw10" id="logout">로그아웃</div>
<%
	} else {
%>
			<div class="w3-button w3-small w3-blue w3-right w3-round-large mgw10" id="join">회원가입</div>
			<div class="w3-button w3-small w3-green w3-right w3-round-large mgw10" id="login">로그인</div>
<%
	}
%>
		</div>
	</div>
</body>
</html>