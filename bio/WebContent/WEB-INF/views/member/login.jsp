<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Join</title>
<meta charset="UTF-8">
<c:if test="${not empty SID}">
	<%-- 
		이미 로그인 한 경우 
		메인페이지로 리다이렉트 시킨다.
	--%>
	<c:redirect url="/" />
</c:if>
<link rel="stylesheet" type="text/css" href="/resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="/resources/css/user.css">
<script type="text/javascript" src="/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#login').click(function(){
			// 데이터 읽고
			var sid = $('#id').val();
			if(!sid){
				$('#id').focus();
				return;
			}
			
			var spw = $('#pw').val();
			if(!spw){
				$('#pw').focus();
				return;
			}
			
			// location.href = '/loginProc.jsp';
			// $(location).attr('href', '/loginProc.jsp');
			
			$('#frm').attr('method', 'GET').attr('action', '/loginProc.jsp');
			$('#frm').submit();
		});
	});
</script>
</head>
<body>
    <form class="w3-content w3-center mxw700" id="frm" name="frm">
        <h1 class="w3-pink w3-padding w3-round-large w3-card-4">Login</h1>
        <div class="w3-container w3-padding w3-margin-top w3-round-large w3-card-4 pdh30">
            <div class="w3-col w3-padding">
                <label for="id" class="w3-col m3 w3-right-align w3-text-gray lbl">ID : </label>
                <input type="text" class="w3-col m7 w3-input w3-border"
                        name="id" id="id" placeholder="아이디를 입력하세요.">
            </div>
            <div class="w3-col w3-padding">
                <label for="pw" class="w3-col m3 w3-right-align w3-text-gray lbl">PW : </label>
                <input type="password" class="w3-col m7 w3-input w3-border"
                    name="pw" id="pw" placeholder="비밀번호를 입력하세요.">
            </div>
        </div>

        <div class="w3-col w3-margin-top w3-card-4 w3-round-large frHidden">
            <button type="reset" class="w3-half w3-button w3-orange w3-hover-yellow">초기화</button>
            <div class="w3-col s6 w3-button w3-green w3-hover-lime" id="login">로그인</div>
        </div>
    </form>
</body>
</html>