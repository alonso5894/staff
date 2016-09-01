<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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



<title>프로젝트 입력</title>
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
<!-- 
<form method="post" name="frm" action="projectServlet" enctype="multipart/form_data">
<input type="hidden" name="command" value="project_Update"> --> 

<table border="0" cellpadding="0" cellspacing="0"> <!-- cellpadding과 cellspacing 값을 0으로 초기화 해주지 않으면 테이블내부의 행/열 간 간격이 벌어진다. -->
<caption align="left" >
<h2>프로젝트 상세화면</h2>
</caption>
 <tr height="30">
  <td align="right" width="100">사번</td>
  <td valign="top"></td>
  <td width="600">  
    ${loginUser.empno}
  
  </td>
 </tr>

 <tr height="30">
  <td align="right">아이디</td>
  <td valign="top"></td>
  <td width="600">
   ${loginUser.id}
  </td>
 </tr>
 

 <tr height="30">
  <td align="right">프로젝트명</td>
  <td valign="top"></td>
  <td width="600">
 ${project.pname}
  </td>
 </tr>
 
 
<tr height="30">
  <td align="right">프로젝트 시작일</td> 
  <td valign="top"></td>
  <td>
  ${project.pstdate}
</tr> 
 
 
 
 <tr height="30">
  <td align="right">프로젝트 마감일</td>
  <td valign="top"></td>
  <td>
  ${project.peddate}
</td>
</tr>


 
 <tr height="30">
  <td align="right">사용스킬</td>
  <td valign="top"></td>
  <td>
  <input type="checkbox" name="memHobby" value="sports">1&nbsp;
   <input type="checkbox" name="memHobby" value="shopping">2&nbsp;
   <input type="checkbox" name="memHobby" value="internet">3&nbsp;
   <input type="checkbox" name="memHobby" value="travel">4&nbsp;
   <input type="checkbox" name="memHobby" value="reading">5&nbsp;
   <input type="checkbox" name="memHobby" value="movie">6&nbsp;
   <input type="checkbox" name="memHobby" value="music">7&nbsp;
  </td>
 </tr>
 




 
 <tr height="85">
  <td align="right">상세내용&nbsp;</td>
  <td valign="top"></td>
  <td>
     ${project.pcontent}
  </td>
 </tr>
 
  <tr height="30">
  <td align="right">수행역할</td>
  <td valign="top"></td>
  <td>

<!-- 	
<select name="perform">
    <option value="0">역할선택</option>
    <option value="1">PL</option>
    <option value="2">PM</option>
    <option value="3">개발자</option>
    <option value="4">디자이너</option>
    
</select>
  -->

  </td> 
 </tr>

 <tr align="center">
  <td colspan="3">
   
   <input type="button" value="목록" onclick="location.href='projectServlet?command=project_List'">
   <input type="submit" value="수정" onClick="location.href='projectServlet?command=project_Update_Form&prono=${project.prono}'">
   <input type="reset" value="삭제" onClick="location.href='projectServlet?command=project_Delete&prono=${project.prono}'">

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
