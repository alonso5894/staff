<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css" />
 <script type="text/javascript" src="project2_ex/js/jquery.min.js"></script>
 <script src="project2_ex/js/jquery-1.10.2.min.js"></script>
<title>공지사항</title>

<style>
.bbs {
	       opacity: 1.0;  /*투명 */
		   color: #ffffff;
		   margin-left: 60px;
		   font-size:12pt; 
	   	   font-family:굴림체; 
	   	   
	   	   
	}
	 #s {font-size:10pt; color:white;}
	 
#stylized{
	
	opacity: 1.0;  /*투명 */
	color: #ffffff;
	margin-top : 25px;
	margin-left : 60px;
}
	 
#but {
	margin-right : 75px;	
}
		  
</style>

<script type="text/javascript">
	/* function move(url){
		location.href=url;
	} */
	function noEvent() {
		 if (event.keyCode == 116) {
		  event.keyCode= 2;
		  return false;
		 }else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82)) {
		  return false;
		 }
		}
		document.onkeydown = noEvent;
		
	
		
</script>
</head>

<body>
  <div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	
<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	
<div id="content">		 

	<h2>공지사항</h2>
	<table class="bbs" border="1" style="table-layout: fixed;">
		<colgroup>
			<col width="50" />
			<col width="300" />
			<col width="100" />
			<col width="60" />
		</colgroup>
		<thead>
			<tr>
				<th>순 번</th>
				<th>제 목</th>
				<th>등록일</th>
				<th>조회수</th>
			
			</tr>
		</thead>
		<tbody>
			
			
	   <c:forEach var="notice" items="${notice_List}" >
			<tr>
				<td align="center">${notice.notno}</td>
				<td align="center"><a href="noticeServlet?command=notice_View&notno=${notice.notno}">${notice.notname}</a></td>
				<td align="center">${notice.notdate}</td> 
				<td align="center">${notice.nothits}</td>
		
			</tr>
		 </c:forEach> 
		</tbody>
		<tfoot>
			
		</tfoot>		
	</table>
	<c:if test="${loginUser.admin == 1 }">
	<div id="but" align="right" >
		<input type="button" value="등록" onclick="location.href=('noticeServlet?command=notice_Write_Form');" />
		</div>
</c:if>
</div></div>

   <jsp:include page="footer.jsp" flush="false" />
  </div><!--close main-->
</body>
</html>