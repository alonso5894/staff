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
		$("#dialog-confirm").dialog({
			resizable : false,
			height : 140,
			modal : true,
			buttons : {
				"삭제":function() {
				$(this).dialog("close");	
			},
				"취소":function() {
				$(this).dialog("close");
				}
		}
		
	});
});

</script>
</head>
<body>
<div id="dialog-confirm" title="Empty the recycle bin?">
<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>
These items will be permanently deleted and cannot be recovered. Are you sure?</p>
</div>
<p>Sed vel diam id libero <a href="http://example.com">rutrum convallis</a>.
 Donec aliquet leo vel magna. Phasellus rhoncus faucibus ante.</p>

</body>
</html>