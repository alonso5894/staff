<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>
	$(function() {
		$("#dialog").dialog( {
		autoOpen : true
	  , width : "400px"
	  , height : "400px"
	  , modal : true
	  , resizeable : false
	  , buttons : {
		  "로그인" : function(){},
		  "닫기" : function() {
			  $(this).dialog("close");
		  }
		}
		, show: {
			effect : "blind",
			duration : 1000
			
		}
		, hide: {
			effect : "slide",
			duration : 1000
		}
	});
	});

</script>
</head>
<body>
	<div id="dialog" title="로그인">
	<p>아이디<input type="text" name="userid">
	<p>비밀번호<input type="password" name="password">
	

	</div>
</body>
</html>