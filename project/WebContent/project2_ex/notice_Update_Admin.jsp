<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css" />
 <script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="project2_ex/js/emp.js"></script>
<link rel="stylesheet" href="css/jquery-ui.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> 


<script>

</script>



<title>공지사항 수정</title>
 <style type="text/css">
 #s {font-size:10pt; color:white;}

table {font-size:9pt; font-family:굴림체}
 
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
	margin-left : 10px;
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
<input type="hidden" name="command" value="notice_Update"> 
<input type="hidden" name="notno" value="${notice.notno}">
<table border="1"> 
<caption align="left" >
<h2>공지사항 등록</h2>
</caption>
 <tr height="30">
  <td align="right" width="100">제목</td>
  <td valign="top"></td>
  <td width="600">  
   <input type="text" name="notname" size="16" value="${board.notname}">
  
  </td>
 </tr>



 <tr height="30">
  <td align="right">작성자</td>
  <td valign="top"></td>
  <td width="600">
   

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
 
  </td>
 </tr>


 <tr height="85">
  <td align="right">내용&nbsp;</td>
  <td valign="top"></td> 
  <td>
   <textarea name="notcon" rows="4" cols="65" >${board.notcon}</textarea>
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
  <!--<jsp:include page="tab2.jsp" flush="false"/> -->
</div>
 


 
  </div><!--close main-->
  
  <jsp:include page="footer.jsp" flush="false" />


</body>
</html>
