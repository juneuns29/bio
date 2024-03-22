<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>구구단</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="../resources/css/user.css">
<script type="text/javascript" src="../resources/js/colorClass.js"></script>
<%
	String[] colorList = (String[]) request.getAttribute("colorList");
%>
</head>
<body>
    <div class="w3-content mxw750 w3-center">
        <h1 class="w3-deep-orange w3-padding w3-card-4">구구단</h1>
        <div class="w3-col w3-center" id="fr">
<%
	for(int dan = 2 ; dan < 10 ; dan++ ){
%>
            <div class="inblock w3-card-4 mgb10" style="width: 150px;">
<%
	if(dan == 5){
%>
                <h3 class="<%= colorList[dan-2] %> w3-text-red mgh0"><%= dan %> 단</h3>
<%
	} else {
%>
                <h3 class="<%= colorList[dan-2] %> mgh0"><%= dan %> 단</h3>
<%
	}
%>  
                <div class="w3-padding" id="<%= dan %> dan">
<%
		for(int gop = 1 ; gop < 10 ; gop++ ){
			if(dan == 5){
%>
					<p class="w3-text-red"><%= dan %> x <%= gop %> = <%= dan * gop %></p>
<%
			} else {
%>
					<p><%= dan %> x <%= gop %> = <%= dan * gop %></p>
<%
			}
		}
%>
                </div>
            </div>
<%
	}
%>
        </div>
    </div>
    
    
    <script type="text/javascript">
    	var msg = '<%= request.getParameter("msg") %>';
    	
    	if(msg && (msg != 'null')){
    		alert('msg : ' + msg);
    	} else {
    		alert('냉----------무');
    	}
    	
    </script>
</body>
</html>