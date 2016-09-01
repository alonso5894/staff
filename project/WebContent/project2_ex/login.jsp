<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
    display: block;
}
body {
    line-height: 1;
}
ol, ul {
    list-style: none;
}
blockquote, q {
    quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
    content: '';
    content: none;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}



 
    html, body { height:100%; margin:0px; padding:0px; }
    .wrapper { width:100%; height:100%; background-image:url(project2_ex/images/back.jpg); background-position:center; background-position:cover; }
    .main { padding-top:148px;}
    
    .logo { width:235px; margin:0 auto 60px;}
    .logo img { width:212px; height:100px;}
    
    .login_box { width:337px; height:400px; padding: 45px 44px 38px 44px; margin: 0 auto; background-color: #fff; 
                 opacity: 0.7; border-radius:5px;}
    .login_box .input_login { border-bottom: 2px solid #c4c5c4; padding: 20px 0 9px 0;}
    .login_box .input_login input { width: 100%; color: #828180; font-size: 15px; border:none; font-family: '돋움';}
    .login_box .check { color: #000; font-size: 14px; padding: 9px 0 15px 0;}
    .login_box  .login input { width:100%; height:55px; background-color:#000000; color:#fff; font-size:16px; padding:17px 0 16px; border:0; cursor:pointer; font-family:'돋움';}
    
    

/*  로그인 창 00a6de  */

</style>
<!-- <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css"> -->
<script type="text/javascript" src="project2_ex/js/login.js"></script>
<script type="text/javascript" src="project2_ex/js/jquery.min.js"></script>
<script type="text/javascript" src="project2_ex/js/jquery-1.10.2.min.js"></script>
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