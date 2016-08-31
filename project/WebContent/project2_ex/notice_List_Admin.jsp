<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css" />
 <script type="text/javascript" src="project2_ex/js/jquery.min.js"></script>
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
</script>
</head>

<body>
  <div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	
<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	
<div id="content">		 

	<h2>공지사항</h2>
	<table class="bbs" border="1">
		<colgroup>
			<col width="50" />
			<col width="300" />
			<col width="100" />
			<col width="50" />
		</colgroup>
		<thead>
			<tr>
				<th>순번</th>
				<th>제목</th>
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
			<tr>
				<td align="center" colspan="5">1</td>
			</tr>
		</tfoot>		
	</table>
		<div id="but" align="right" >
		<input type="button" value="등록" onclick="location.href=('empServlet?command=notice_Write_Form');" />
		</div>

</div></div>

   <jsp:include page="footer.jsp" flush="false" />
  </div><!--close main-->
</body>
</html>