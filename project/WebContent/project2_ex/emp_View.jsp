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
function noEvent() {
	 if (event.keyCode == 116) {
	  event.keyCode= 2;
	  return false;
	 }else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82)) {
	  return false;
	 }
	}
	document.onkeydown = noEvent;

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

<form method="post" name="frm" action="empServlet">
<input type="hidden" name="command" value="emp_Insert">

<table border="0" cellpadding="0" cellspacing="0"> <!-- cellpadding과 cellspacing 값을 0으로 초기화 해주지 않으면 테이블내부의 행/열 간 간격이 벌어진다. -->
<caption align="left" >
<h2>사원 정보</h2>
</caption>
 <tr height="60">
  <td align="right" width="100">사번</td>
  <td valign="top"></td>
  <td>  
  ${emp.empno}
  </td>
 </tr>



 <tr height="30">
  <td align="right">이름</td>
  <td valign="top"></td>
  <td width="600">
  ${emp.ename}
  </td>
 </tr>


 <tr height="30">
  <td align="right">부서</td>
  <td valign="top"></td>
  <td>
	 <input type="text" name="deptno" size="16" value="  ${emp.ename}">
 <!--   <select name="memJob">
   <option value="Not">선택하세요</option>
   <option value="j1">1</option>
   <option value="j2">2</option>
   <option value="j3">3</option>  

   </select> -->
 </tr>
 
  <tr height="30">
  <td align="right">직급</td>
  <td valign="top">&nbsp;</td>
  <td>
   <input type="text" name="jobno" size="16" >
 <!--  
   <select name="memJob">
   <option value="Not">선택하세요</option>
   <option value="j1">1</option>
   <option value="j2">2</option>
   <option value="j3">3</option>

   </select> --> 
 </tr>


 
 <tr height="30">
  <td align="right">생년월일</td>
  <td valign="top"></td>
  <td>

  <input type="text"  id="testDatepicker" size="10">
 

 </tr> <!-- 주민번호 입력에 따른 생년월일 적용 체크? -->
 

 
 <tr height="30">
  <td align="right">입사일</td>
  <td valign="top"></td>
  <td>
  <input type="text"  id="testDatepicker1" size="10" name="hiredate" >

 </tr> 
 
 
 
 <tr height="30">
  <td align="right">퇴사일</td>
  <td valign="top"></td>
  <td>
  <input type="text" id="testDatepicker2" size="10" name="resigndate">


 <tr height="30">
  <td align="right" >성별</td>
  <td valign="top"></td>
  <td>
  <input type="radio" name="memSung" value="man">남자
  <input type="radio" name="memSung" value="woman">여자
 </tr> <!-- 주민번호 입력에 따른 남녀 성별 체크 -.-a -->

 <tr height="30">
  <td align="right">E - mail</td>
  <td valign="top"></td>
  <td>
   <input type="text" name="email" size="28">
  </td>
 </tr>



 <tr height="30">
  <td align="right">우편번호&nbsp;</td>
  <td valign="top"></td>
  <td>
  <input type="text" name="memZipCode01" size="4" maxlength="3">-
  <input type="text" name="memZipCode02" size="4" maxlength="3">
  <input type="button" value="검색" onClick="zipChk()">
  </td> <!-- 우편번호 검색 ...? -->
 </tr>

 <tr>
  <td align="right">주<font color="white"></font>소&nbsp;</td>
  <td valign="top"></td>
  <td>
   <input type="text" name="memAddr1" size="28"><br>
   <input type="text" name="memAddr2" size="16">
  </td>
 </tr>

 <tr height="30">
  <td align="right">전화번호</td>
  <td valign="top"></td>
  <td>
   <select name="memTel01">
   <option value="02">02</option>
   <option value="033">033</option>
   <option value="032">032</option>
   <option value="043">043</option>
   <option value="042">042</option>
   <option value="041">041</option>
   <option value="062">062</option>
   <option value="063">063</option>
   <option value="053">053</option>
   <option value="061">061</option>
   <option value="052">052</option>
   <option value="054">054</option>
   <option value="051">051</option>
   <option value="055">055</option>
   <option value="031">031</option>
   <option value="064">064</option>
   </select>-
   <input type="text" name="memTel02" size="5" maxlength="4">
   -
   <input type="text" name="memTel03" size="5" maxlength="4"> 
  </td> <!-- 숫자만 입력가능?? -.-a -->
 </tr>

 <tr height="30">
  <td align="right">핸 드 폰&nbsp;</td>
  <td valign="top"></td>
  <td>
   <select name="memMobile01">
   <option value="010">010</option>
   <option value="011">011</option>
   <option value="016">016</option>
   <option value="017">017</option>
   <option value="018">018</option>
   <option value="019">019</option>
   <option value="0130">0130</option>
   </select>-
   <input type="text" name="memMobile02" size="5" maxlength="4">
   -
   <input type="text" name="memMobile03" size="5" maxlength="4"> 
  </td> <!-- 숫자만 입력가능?? -.-a -->
 </tr>

<!-- 
 <tr height="30">
  <td align="right">사용스킬</td>
  <td valign="top"></td>
  <td>
   <input type="checkbox" name="memHobby" value="sports">스포츠&nbsp;
   <input type="checkbox" name="memHobby" value="shopping">쇼핑&nbsp;
   <input type="checkbox" name="memHobby" value="internet">인터넷&nbsp;
   <input type="checkbox" name="memHobby" value="travel">여행&nbsp;
   <input type="checkbox" name="memHobby" value="reading">독서&nbsp;
   <input type="checkbox" name="memHobby" value="movie">영화감상&nbsp;
   <input type="checkbox" name="memHobby" value="music">음악감상&nbsp;
  </td> 
 </tr>
 -->
 
 
 <tr height="85">
  <td align="right">비고&nbsp;</td>
  <td valign="top"></td> <!-- 자기소개 10글자 이상 어떻게?? -->
  <td>
   <textarea name="etc" rows="4" cols="65"></textarea>
  </td>
 </tr>




<tr align="center">
  <td colspan="3">
   <input type="submit" value="등록" onClick="return joinCheck()">
  
  
   <input type="reset" value="취소">
   <input type="button" value="목록" onclick="location.href='empServlet?command=emp_List'">
  </td>
 </tr>

 

</table>
 </form>

 <jsp:include page="tab2.jsp" flush="false"  /> 
</div>
</div>	
</div>
 

 


 
  </div><!--close main-->
  
  <jsp:include page="footer.jsp" flush="false" />


</body>
</html>
