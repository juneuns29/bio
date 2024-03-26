<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Join</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="/resources/css/user.css">
<script type="text/javascript" src="/resources/js/jquery-3.7.1.min.js"></script>
</head>
<body>
    <form class="w3-content w3-center mxw700">
        <h1 class="w3-pink w3-padding w3-round-large w3-card-4">Login</h1>
        <div class="w3-container w3-padding w3-margin-top w3-round-large w3-card-4 pdh30">
            <div class="w3-col w3-padding">
                <label for="id" class="w3-col m3 w3-right-align w3-text-gray lbl">ID : </label>
                <input type="text" class="w3-col m7 w3-input w3-border"
                        name="id" id="id" placeholder="아이디를 입력하세요."
                        onchange="ch01()">
            </div>
            <div class="w3-col w3-padding">
                <label for="pw" class="w3-col m3 w3-right-align w3-text-gray lbl">PW : </label>
                <input type="password" class="w3-col m7 w3-input w3-border"
                    name="pw" id="pw" placeholder="비밀번호를 입력하세요."
                    onfocus="setBg(this)" onblur="setWh(this)">
            </div>
        </div>

        <div class="w3-col w3-margin-top w3-card-4 w3-round-large frHidden">
            <button type="reset" class="w3-half w3-button w3-orange w3-hover-yellow">초기화</button>
            <div class="w3-col s6 w3-button w3-green w3-hover-lime">로그인</div>
        </div>
    </form>
<script type="text/javascript">
    function ch01(){
        alert('change 이벤트 발생!');
    }

    function setBg(a){
        a.style.backgroundColor = 'blue';
    }
    function setWh(a){
        a.style.backgroundColor = 'white';
    }
</script>
</body>
</html>