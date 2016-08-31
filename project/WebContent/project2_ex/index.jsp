<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty loginUser}">
	<jsp:forward page='loginServlet'/>
</c:if>

<!DOCTYPE html>
<html>
<head>
 <title>UNION 사원 관리 프로그램</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css" />
  <script type="text/javascript" src="project2_ex/js/jquery.min.js"></script>
 
<title>메인화면</title>
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
	<input type="button" value="more" onclick="move('noticeServlet?command=notice_List');" />
</div>	
	
	<table id="hor-minimalist-a" summary="Employee Pay Sheet">
	
    	
    <tbody>
    	
 <c:forEach var="notice" items="${index_List}" > 
    	<tr>
    			<th>순번</th>
				<td align="center">${notice.notno}</td>
				<td align="center"><a href="noticeServlet?command=notice_View&notno=${notice.notno}">${notice.notname}</a></td>
				<td align="center">${notice.notdate}</td> 
				<td align="center">${notice.nothits}</td>
		
			</tr>
</c:forEach>
		
    </tbody>
      <tfoot>
			<tr>
				<td align="center" colspan="5">1</td>
			</tr>
		</tfoot>	
</table>

	
</div></div>


  </div><!--close main-->
  
 
  <jsp:include page="footer.jsp" flush="false" />
 
</body>
</html>