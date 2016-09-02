<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css" />
 <script type="text/javascript" src="project2_ex/js/jquery.min.js"></script>
<script type="text/javascript" src="project2_ex/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="project2_ex/js/reply.js"></script>
<link rel="stylesheet" href="project2_ex/css/jquery-ui.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> 
<script>
/* function noEvent() {
	 if (event.keyCode == 116) {
	  event.keyCode= 2;
	  return false;
	 }else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82)) {
	  return false;
	 }
	}
	document.onkeydown = noEvent; */

</script>

<title>Insert title here</title>
 <style type="text/css">

 #s {font-size:10pt; color:white;}

table {font-size:11pt; font-family:굴림체;}
 
 
 
.formmm{
	
	height:100px;
	width:100px;
	padding:14px;
	  background: transparent;
}


#stylized{
	border:solid 2px #ffffff;
	opacity: 1.0;  /*투명 */
	color: #ffffff;
	margin-top : -100px;
	margin-left : -10px;
	
		 

}


 </style>


</head>

<body>

<div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	
<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	
<div id="content">		



<div id="stylized" class="myform">
<%-- 
<form method="post" name="frm" action="noticeServlet">
<input type="hidden" name="command" value="notice_Update">
<input type="hidden" name="notno" value="${notice.notno}"> --%>

<table border=""> <!-- cellpadding과 cellspacing 값을 0으로 초기화 해주지 않으면 테이블내부의 행/열 간 간격이 벌어진다. -->
<caption align="left" >
<h2>공지사항 상세화면</h2>
</caption>
 
 
 <tr height="30">
  <td align="right" width="100">제목</td>
  <td valign="top"></td>
  <td width="600">  
  ${notice.notname}
  </td>
 </tr>



 <tr height="30">
  <td align="right">작성자</td>
  <td valign="top"></td>
  <td width="600"> <!-- 작성자 임시 -->
 ${loginUser.ename}
  </td>
 </tr>
 
 
 <tr height="30">
  <td align="right">작성일</td>
  <td valign="top"></td>
  <td width="600">
  ${notice.notdate}
  </td>
 </tr>
 
 
 
 <tr height="30">
  <td align="right">조회수</td>
  <td valign="top"></td>
  <td width="600">
  ${notice.nothits}
  </td>
 </tr>
 

 

 <tr height="85">
  <td align="right">내용&nbsp;</td>
  <td valign="top"></td> 
  <td>
  ${notice.notcon }
  </td>
 </tr>



<c:if test="${loginUser.admin == 1 }">
<tr align="center">
  <td colspan="3">
    <input type="button" value="목록" onclick="location.href='noticeServlet?command=notice_List'">  
   <input type="submit" value="수정" onClick="location.href='noticeServlet?command=notice_Update_Form&notno=${notice.notno}'">
  
  
   <input type="reset" value="삭제" onClick="location.href='noticeServlet?command=notice_Delete&notno=${notice.notno}'">
  
  </td>
 </tr>
</c:if>

<!-- 
  <tr height="45">
  <td align="right"></td>
 
  <td valign="top"></td> 
 <td colspan="5">
						

  </td>
 </tr> -->
 


		

</table>

		
				
				
<div class="cmt">
					
				
				<input type="hidden" id="notno" value="${notice.notno }">
				<input type="hidden" id="id" value="${notice.id}">
				<table id="reply">
					<tr>
						<th> <h5>댓글</h5></th>
					</tr>
					<c:forEach var="replyList" items="${replyList }">
						<tr class="${replyList.comno }">
							<td class="repmpid">${replyList.empno }</td>
							<td class="repcontent">${replyList.comcon }</td>
							<td>${replyList.comdate }</td>
						</tr>
					</c:forEach>
						
				</table>
					<p>
						<textarea rows="2" cols="85" id="content" name="content" ></textarea>
						<button id="regi-reply" >댓글등록</button>
					</p>	
	
</div>	
	
</div>
</div>	
</div>
 

 


 
  </div><!--close main-->
  
  <jsp:include page="footer.jsp" flush="false" />


</body>
</html>
