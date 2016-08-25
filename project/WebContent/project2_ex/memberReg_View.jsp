<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
  

<title>Insert title here</title>
<style type="text/css">

p, h1, form, button{border:0; margin:0; padding:0;}
.spacer{clear:both; height:1px;}

.myform{
	margin-top : -100px;
	margin-left : 100px;
	width:400px;
	padding:14px;
}

#stylized{
	border:solid 2px #ffffff;
	<!--background:#ebf4fb;
	-->
}
#stylized h1 {
	font-size:16px;
	font-weight:bold;
	margin-bottom:8px;
	font-family:nanumgothic,dotum;

}
#stylized p{
	font-size:11px;
	color:#666666;
	margin-bottom:20px;
	border-bottom:solid 1px #ffffff;
	padding-bottom:10px;
	font-family:dotum;
}
#stylized label{
	display:block;
	font-weight:bold;
	text-align:right;
	width:140px;
	float:left;
	font-family:tahoma;
	color:#000000;
}
#stylized .small{
	color:#666666;
	display:block;
	font-size:11px;
	font-weight:normal;
	text-align:right;
	width:140px;
	font-family:dotum;
	letter-spacing:-1px;
}
#stylized input{
float:left;
font-size:12px;
padding:4px 2px;
border:solid 1px #ffffff;
width:200px;
margin:2px 0 20px 10px;
}
#stylized button{
clear:both;
margin-left:150px;
width:125px;
height:31px;
text-align:center;
line-height:31px;
background-color:#000000;
color:#FFFFFF;
font-size:11px;
font-weight:bold;
font-family:tahoma;
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
<form id="form" name="form" method="post"  action="register_test.jsp">
<h1>사원 정보 상세</h1>
<p></p>

<label>사번
<span class="small">이름 입력</span>
</label>
<input type="text" name="empno" id="empno" />

<label>이름
<span class="small">이름 입력</span>
</label>
<input type="text" name="name3" id="name3" />

<label>이름
<span class="small">이름 입력</span>
</label>
<input type="text" name="name1" id="name1" />

<label>이름
<span class="small">이름 입력</span>
</label>
<input type="text" name="name1" id="name1" />

<label>이름
<span class="small">이름 입력</span>
</label>
<input type="text" name="name1" id="name1" />

<label>주민등록번호
<span class="small">이름 입력</span>
</label>
<input type="text" name="name2" id="name2" />

<label>이메일
<span class="small">이메일주소</span>
</label>
<input type="text" name="email" id="email" />

<label>Password
<span class="small">패스워드 6자 이상</span>
</label>
<input type="text" name="password" id="password" />

<button type="submit">등록</button>
<div class="spacer"></div>

</form>

</div>

</div></div>

	
  <jsp:include page="content_bottom.jsp" flush="false" />	
 
  </div><!--close main-->
  
  <jsp:include page="footer.jsp" flush="false" />


</body>
</html>
