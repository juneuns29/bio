<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>구구단</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="../resources/css/user.css">
<script type="text/javascript" src="../resources/js/colorClass.js"></script>
<%
	String[] colorList = {
			"w3-red", "w3-pink", "w3-purple", "w3-deep-purple", "w3-indigo",
		    "w3-blue", "w3-aqua", "w3-teal", "w3-green", "w3-light-green", 
		    "w3-lime", "w3-khaki", "w3-yellow", "w3-amber", "w3-orange", "w3-deep-orange"
	};
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
%>
<%
	if(dan == 5){
%>
					<p class="w3-text-red"><%= dan %> x <%= gop %> = <%= dan * gop %></p>
<%
	} else {
%>
					<p><%= dan %> x <%= gop %> = <%= dan * gop %></p>
<%
	}
%>  
<%
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
        /*
        // 2단 구구단 출력
        var str = '';
        for(var i = 1; i < 10 ; i++ ){
            str += '<p>2 x ' + i + ' = ' + (2 * i) + '</p>';
        } 
        document.getElementById('2dan').innerHTML = str;
        */
        /*
        var str = '';
        for(var dan = 2; dan < 10 ; dan++ ){
            str += '<div class="inblock w3-card-4 w3-margin" style="width: 150px;">';
            str += '<h3 class="' + colorList[dan-1] + ' mgh0">' + dan + '단</h3>';
            str += '<div class="w3-padding">';
            for(var gop = 1 ; gop < 10 ; gop++ ){
                str += '<p>' + dan + ' x ' + gop + ' = ' + (dan * gop) + '</p>';
            }
            str += '</div>';
            str += '</div>';
        }
        
        document.getElementById('fr').innerHTML = str;
        */
    </script>
</body>
</html>