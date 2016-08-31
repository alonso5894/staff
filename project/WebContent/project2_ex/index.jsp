<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
  <script src="project2_ex/js/jquery-1.10.2.min.js"></script>
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
	
			.hoverRowColor {
		        cursor:pointer;
			}


</style>
 <script type="text/javascript">
	function move(url){
		location.href=url;
	}
	$(function(){
		/* TableRow 클릭 이벤트 */
	    $("#notice_main").on("click", "tr", function(e) { 
	    	/* 선택된 TableRow에서 공지사항 번호값을 가져옴 */
	        var notno = $(this).find("td:nth-child(1) input:hidden").val();
	    	//alert(notice_no);
	    	location.href = "noticeServlet?command=notice_View&notno=" + notno;
	    }); 
		
		
	    /* TableRow hover */
		$("#notice_main").on("mouseover", "tr", function(e) { 
			$(this).find("td").addClass('hoverRowColor');
	    });
	    
		$("#notice_main").on("mouseout", "tr", function(e) { 
			$(this).find("td").removeClass('hoverRowColor');
	    });
	});
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
	
    	
    <tbody id="notice_main">
   
 <%--    <c:forEach var="notice" items="${notice_List}" > 
    	<tr>
    			<th>순번</th>
				<td align="center">${notice.notno}</td>
				<td align="center"><a href="noticeServlet?command=notice_View&notno=${notice.notno}">${notice.notname}</a></td>
				<td align="center">${notice.notdate}</td> 
				<td align="center">${notice.nothits}</td>
		
			</tr>
</c:forEach>
    --%>
   
   
 	<c:choose>
								<c:when test="${empty notice_List}">
									<tr>
										<td colspan="2" align="center">
											공지사항이 없습니다.
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="notice" items="${notice_List}">
										<tr>
											<td width="200">
										<!-- 글번호는 hidden으로 출력 -->
												<input type="hidden" id="notno" value="${notice.notno}">
												${notice.notname}
											</td>
											<td width="100" align="right">
										<!-- 날짜 yyyy-MM-dd형태로 파싱 -->
												<fmt:parseDate var="parseDate" value="${notice.notdate}" pattern="yyyyMMddHHmmss" />
												<fmt:formatDate value="${parseDate}" pattern="yyyy-MM-dd"/>
												
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose> 

		
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