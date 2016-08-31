<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="project2_ex/css/style.css">
<script type="text/javascript" src="project2_ex/js/login.js"></script>
<script type="text/javascript" src="project2_ex/js/jquery.min.js"></script>
</head>

<body>
    	
  
<!--  <div class="wrapper">
     <form method="post" action="login_test.jsp">	
        <div class="main">
            
            <div class="logo">
                <img src="images/logo.png">
            </div>
            
            <div class="login_box">
               
                <div class="input_login">
                    <input type="text" placeholder="아아디를 입력하세요" name="id" id="userid">
                </div>
                
                <div class="input_login">
                    <input type="password" placeholder="비밀번호를 입력하세요" name="pwd" id="userpwd">
               
                </div>
               
                <div class="check">
                    <label><input type="checkbox">아이디 저장</label>
                
                </div>
                 
                  <div class="login">
       			  <input type="submit" value="로그인">
       			   onClick="self.location='main.html';"> 
    			</div>

            </div>
        </div> </form>
</div> -->

 <div class="wrapper">
     <form method="post" action="loginServlet" name="frm">	
        <div class="main">
            
            <div class="logo">
                <img src="project2_ex/images/logo.png">
            </div>
            
            <div class="login_box">
               
                <div class="input_login">
                    <input type="text" placeholder="아아디를 입력하세요" name="id" value="${id}">
                </div>
                
                <div class="input_login">
                    <input type="password" placeholder="비밀번호를 입력하세요" name="pwd">
               
                </div>
               
                <div class="check">
                    <label><input type="checkbox">아이디 저장</label>
                
                </div>
                 
                  <div class="login">
       			  <input type="submit" value="로그인" onClick="return loginCheck()">  
    			</div>

            </div>
        </div> </form>
      
</div>
    
</body>
</html>