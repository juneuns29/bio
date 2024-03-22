<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send form</title>
<link rel="stylesheet" type="text/css" href="/resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="/resources/css/user.css">
<script type="text/javascript" src="/resources/js/jquery-3.7.1.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('.w3-half').click(function(){
			var txt = $('#msg').val();
			if(!txt){
				$('#msg').focus();
				return;
			}
			
			var sid = $(this).attr('id');
			if(sid == 'fbtn'){
				$('#req').val('forward');
			}
			
			$('#frm').submit();
		});
	});
</script>
</head>
<body>
	<div class="w3-content mxw650 w3-center">
		<h1 class="w3-blue w3-padding w3-card-4">Request Form</h1>
		<form method="get" action="req.jsp" name="frm" id="frm"
							class="w3-margin-top w3-col w3-padding w3-card-4">
			<label for="msg" class="w3-col m3 w3-right-align pdr10">Message : </label>
			<input type="text" name="msg" id="msg" class="w3-col m7 w3-border">
			<input type="hidden" name="req" id="req" value="redirect">
		</form>
		<div class="w3-col mgt20 frHidden w3-round-large w3-card-4">
			<div class="w3-half w3-orange w3-hover-red w3-button" id="rbtn">redirect</div>
			<div class="w3-half w3-green w3-hover-lime w3-button" id="fbtn">forward</div>
		</div>
	</div>
</body>
</html>