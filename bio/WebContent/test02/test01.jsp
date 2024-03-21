<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언자 방식</title>
<link rel="stylesheet" type="text/css" href="../resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="../resources/css/user.css">
<script type="text/javascript">
	function abc(){
		function xyz(){
			
		}
		
		xyz();
	}
</script>
</head>
<body>
<!-- 
	여기는 html 주석
 -->
 
<%--
 	jsp 주석
--%>
<%!
	String team = "BlackPink";
%>

<%

// 이 블럭은 자바 코드가 작성되는 블럭이므로
// 이 블럭내에서 주석처리는 자바의 주석처리방식을 따른다.
/*
	public void abc(){
		System.out.println("******************");
	}
==> 위에 만든 abc() 함수는 
	이 블럭 내의 내용은 service() 함수 내에 작성이 될 것이므로
	자바의 문법에 위배가 된다.
	자바에서는 함수 내에서 함수를 정의 할 수 없다.
*/
	String name = "jennie";
	int age = 28;
%>
	
	<div class="w3-content mxw650 w3-center">
		<h1 class="w3-pink w3-padding w3-card-4">Team : <%= team %></h1>
		<h1 class="w3-purple w3-padding w3-card-4">Name : <%= name %></h1>
		<h1 class="w3-deep-purple w3-padding w3-card-4">Age : <%= age %></h1>
		<p class="w3-text-blue"><%= "* 문자열 데이터 입력 *" %></p>
		<a href="result.jsp?id=jennie&pw=12345&mail=jennie@human.com">데이터 전송</a>
		<pre>
			제니정보 : <%= "\n이름 : " + name + "\n나이 : " + age %>
		</pre>
	</div>
</body>
</html>