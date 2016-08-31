<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

 <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
<!--   <script type="text/javascript" src="js/jquery.min.js"></script> -->

<title>Insert title here</title>
</head>
<body>
<div id="header">
	  <div id="banner">
	    <div id="welcome">
	      <h1>UNION</h1>
	    </div><!--close welcome-->
	    <div id="welcome_slogan">   
	     <h1>사원 관리 프로그램</h1> 
	    
	    <div id="name">
	    ${loginUser.ename}(${loginUser.id})님 로그인
	    <c:if test="${loginUser.admin == 1 }">
				<td>-ADMIN</td>
		</c:if>
		<c:if test="${loginUser.admin == 0 }">
				<td>-EMP</td>
		</c:if>
	    </div>
	    	
	  	
	  	<div id="logout">
	  
	  	<input type="button" value="로그아웃" onclick="location.href='project2_ex/logout.jsp'">
	  	

	  	</div>
	    
	    </div><!--close welcome_slogan-->
	  </div><!--close banner-->
	   <div id="topMenu" >
        <ul>
            <li class="topMenuLi">
                <a class="menuLink" href="empServlet?command=index">메인</a>
               
            </li>
            <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="#">개인 프로젝트 이력 관리</a>
                 <ul class="submenu">
                    <li><a class="submenuLink longLink" href="projectServlet?command=project_List">프로젝트 이력 목록</a></li>
                    <li><a class="submenuLink longLink" href="projectServlet?command=project_Write_Form">프로젝트 이력 등록</a></li>
                  </ul>
            </li> 
            <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="#">개인 정보 관리</a>
                <ul class="submenu">
                    <li><a class="submenuLink" href="empServlet?command=emp_List">사원 정보 목록</a></li>
                    <li><a class="submenuLink" href="empServlet?command=emp_Write_form">사원 정보 수정</a></li>
                 </ul>
            </li>
            <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="noticeServlet?command=notice_List">공지사항</a>
            </li>
            <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="mailto:bang5894@naver.com">email</a>
            </li>
        </ul>
    </div> <!-- topmenu end -->
    </div><!--close header-->

</body>
</html>