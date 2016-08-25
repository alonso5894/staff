<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
  $(window).resize(function(){
    var windowH = $(window).height();
    var header = $("#header").outerHeight();
    var footer = $("#footer").outerHeight();
    $("#contents").css("min-height" , windowH - header - footer -12); 
  });
  $(window).trigger("resize");
});
//]]>
</script>
</head>
<body>

<div id="header">
       <p>header 화면</p>
    </div>
    <div class="menubar">
   <ul>
      <li><a href="main.jsp">홈</a></li>
     
       <li><a href="notice.html">공지사항</a></li>
      
      <li><a href="#" id="current">개인프로젝트관리</a>
         <ul>
           <li><a href="#">프로젝트 이력 목록</a></li>
           <li><a href="#">프로젝트 이력 등록</a></li>
           
         </ul>  
      </li>
      
      <li><a href="#">개인정보관리</a>
       <ul>
           <li><a href="#">사원정보목록</a></li>
           <li><a href="registerForm.jsp">사원정보수정</a></li>
           
         </ul>  
     </li>
      
     
   </ul>
   <%
if(session.getAttribute("loginUser")==null) {
	response.sendRedirect("login.jsp");
}else {
%>
	<%=session.getAttribute("loginUser")%>님 안녕하세요!<br>
<% 	
	}
%>
</div>
</body>
</html>