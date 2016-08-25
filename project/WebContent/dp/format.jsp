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
<link rel="stylesheet" href="/css/style.css">
<script>
$(function() {
	$("#datepicker").datepicker();
	$("#format").change(function() {
		$("#datepicker").datepicker("option", "dateFormat", $(this).val());
	});
});
</script>
</head>
<body>
	<p>Date : <input type="text" id="datepicker" size="30"></p>
	
	<p>Format option:<br>
	<select id="format">
		<option value="mm/dd/yy">Default-mm/dd/yy</option>
		<option value="yy-mm-dd">ISO 8601 -yy-mm-dd</option>
		<option value="d MM, y">Medium -d MM, y</option>
		<option value="DD, d MM, yy">Full - DD, d MM, yy</option>
		<option value="&apos;day&apos;d &apos; of&apos; MM &apos; in the year&apos; yy">With text -'day' d'of' MM 'in the year'yy</option>
		
	</select>
	</p>
</body>
</html>