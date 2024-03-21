<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
%>
<script type="text/javascript">
	var sid = '<%= request.getParameter("id") %>';
	var pdata = location.href;
	document.write(pdata);
	// 파라미터만 추출
	var sdata = location.search.substring(1);
	document.write('<p>' + sdata + '</p>');
	document.write('<p>ID : ' + sid + '</p>');
	document.write('<p>NAME : <%= request.getParameter("name") %></p>');
	document.write('<p>Mail : <%= request.getParameter("mail") %></p>');
	
	var smail = '<%= request.getParameter("mail") %>';
	// var smail = jennie@human.com;
	var sname = '<%= request.getParameter("name") %>' ;
</script>
</head>
<body>
	
</body>
</html>