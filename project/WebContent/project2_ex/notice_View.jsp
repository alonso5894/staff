<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css" />
 <script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="project2_ex/js/emp.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.min.css">
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

<form method="post" name="frm" action="noticeServlet">
<input type="hidden" name="command" value="notice_Insert">

<table border="0" cellpadding="0" cellspacing="0"> <!-- cellpadding과 cellspacing 값을 0으로 초기화 해주지 않으면 테이블내부의 행/열 간 간격이 벌어진다. -->
<caption align="left" >
<h2>임시 공지사항 등록</h2>
</caption>
 
 
 <tr height="30">
  <td align="right" width="100">제목</td>
  <td valign="top"></td>
  <td>  
  ${notice.notname}
  </td>
 </tr>



 <tr height="30">
  <td align="right">작성자</td>
  <td valign="top"></td>
  <td width="600">
  ${emp.ename}
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
   <textarea name="etc" rows="4" cols="65">${notice.notcon }</textarea>
  </td>
 </tr>




<tr align="center">
  <td colspan="3">
   <input type="submit" value="등록" onClick="return joinCheck()">
  
  
   <input type="reset" value="취소">
   <input type="button" value="목록" onclick="location.href='noticeServlet?command=notice_List'">
  </td>
 </tr>

 

</table>
 </form>

</div>
</div>	
</div>
 

 


 
  </div><!--close main-->
  
  <jsp:include page="footer.jsp" flush="false" />


</body>
</html>
