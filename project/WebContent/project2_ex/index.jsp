<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>UNION 사원 관리 프로그램</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
 
<title>Insert title here</title>
<style type="text/css">
#hor-minimalist-a
{
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 16px;
	margin-top : 5px;
	margin-left : 80px;
	width: 480px;
	border-collapse: collapse;
	text-align: center;
	color:#ffffff;

	
}
#hor-minimalist-a th
{	
	font-size: 18px;
	font-weight: normal;
	color:#000000;
	padding: 10px 8px;
	text-align : center;
	border-bottom: 4px solid #000000;
} <!-- solid #6678b1 -->

#hor-minimalist-a td
{
	
	color : #ffffff;
	text-align : center;
}
#hor-minimalist-a tbody tr:hover td
{
<!--마우스 가져갈때 색상 -->

		color: #000000;
}

body
{
	line-height: 1.6em;
}

#notice {
margin-top : 70px;
	margin-left : 80px;
}



</style>
<script type="text/javascript">
	function move(url){
		location.href=url;
	}
</script>
</head>

<body>
<div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	

<div id="content">
	
	<div align="center">
	<font size="8" color="white">The Staff Information</font>
	<font size="8" color="white">Management System</font>
	</div>
	
<div id="notice">
	<h1>NOTICE</h1>
	<input type="button" value="more" onclick="move('notice_List.jsp');" />
</div>	
	
	<table id="hor-minimalist-a" summary="Employee Pay Sheet">
	
    <thead>
    	
    </thead>
    <tbody>
    	<tr>
        	<td><a href="notice_List.jsp"  style="text-decoration:none;" >ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ</a></td>
            <td>2016.08.09</td>
            
        </tr>
        <tr>
        	<td><a href="notice_List.jsp"  style="text-decoration:none;" >일로 불러오기</a></td>
            <td>2016.08.09</td>
            
        </tr>
        <tr>
        	<td><a href="notice_List.jsp"  style="text-decoration:none;" >공지사항 게시판에서</a></td>
            <td>2016.08.09</td>
            
        </tr>
        
        <tr>
        	<td><a href="notice_List.jsp"  style="text-decoration:none;" >notice_List.jsp,</a></td>
            <td>2016.08.09</td>
            
        </tr>
        
        <tr>
        	<td><a href="notice_List.jsp"  style="text-decoration:none;" >ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎd</a></td>
            <td>2016.08.08</td>
            
        </tr>
		
    </tbody>
</table>

	
</div></div>


  </div><!--close main-->
  
 
  <jsp:include page="footer.jsp" flush="false" />
 
</body>
</html>