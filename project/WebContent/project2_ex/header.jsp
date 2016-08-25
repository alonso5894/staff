<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	    <%=session.getAttribute("loginUser")%>님 로그인
	  	</div>
	  	
	  	<div id="logout">
	  	<form method="post" action="logout.jsp">
	  	<input type="submit" value="로그아웃">
	  	
	  	</form>
	  	</div>
	    
	    </div><!--close welcome_slogan-->
	  </div><!--close banner-->
	   <div id="topMenu" >
        <ul>
            <li class="topMenuLi">
                <a class="menuLink" href="index.jsp">메인</a>
               
            </li>
            <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="#">개인 프로젝트 이력 관리</a>
                 <ul class="submenu">
                    <li><a class="submenuLink longLink" href="project_List.jsp">프로젝트 이력 목록</a></li>
                    <li><a class="submenuLink longLink" href="project_View.jsp">프로젝트 이력 등록</a></li>
                  </ul>
            </li> 
            <li>|</li>
            <li class="topMenuLi">
                <a class="menuLink" href="#">개인 정보 관리</a>
                <ul class="submenu">
                    <li><a class="submenuLink" href="empServlet?command=emp_List">사원 정보 목록</a></li>
                    <li><a class="submenuLink" href="empServlet?command=emp_WriteView_form">사원 정보 수정</a></li>
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