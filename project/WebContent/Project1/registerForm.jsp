<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="registerForm.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>


<div id="stylized" class="myform">
<form id="form" name="form" method="post"  action="register_test.jsp">
<h1>글쓰기 폼</h1>
<p>기본적인 입력폼입니다.</p>

<label>사번
<span class="small">이름 입력</span>
</label>
<input type="text" name="empno" id="empno" />

<label>이름
<span class="small">이름 입력</span>
</label>
<input type="text" name="name" id="name" />


<label>주민등록번호
<span class="small">이름 입력</span>
</label>
<input type="text" name="name" id="name" />

<label>이메일
<span class="small">이메일주소</span>
</label>
<input type="text" name="email" id="email" />

<label>Password
<span class="small">패스워드 6자 이상</span>
</label>
<input type="text" name="password" id="password" />

<button type="submit">Sign-up</button>
<div class="spacer"></div>

</form>

</div>



<jsp:include page="footer.jsp"/>
</body>
</html>