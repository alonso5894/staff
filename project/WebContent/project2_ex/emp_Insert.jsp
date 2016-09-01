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


$(function() {
	$("#testDatepicker").datepicker({
		changeMonth : true,
		dayNames : ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin : ['월', '화', '수', '목', '금', '토', '일'],
		monthNamesShort : ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
		monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dateFormat : "yy-mm-dd"
	});
});

$(function() {
	$("#testDatepicker1").datepicker({
		changeMonth : true,
		dayNames : ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin : ['월', '화', '수', '목', '금', '토', '일'],
		monthNamesShort : ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
		monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dateFormat : "yy-mm-dd"
	});
});

$(function() {
	$("#testDatepicker2").datepicker({
		changeMonth : true,
		dayNames : ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin : ['월', '화', '수', '목', '금', '토', '일'],
		monthNamesShort : ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
		monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dateFormat : "yy-mm-dd"
	});
});
</script>



<title>Insert title here</title>
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
<!--
  <script type="text/javascript">

// 대화명 검사창 띄우기 닉네임 입력되고 창 닫힘
function nickChk(){window.open("nickChk.html","n","width=300, height=100")}
// 우편번호 검사창 띄우기 3칸이 입력되고 창 닫힘
function zipChk(){window.open("zipChkClose.html","n","width=300, height=100")}

function memChk() // 데이터 입력유무 확인 스크립트
{
  if(document.frm.memId.value == "")
  {
   alert("아이디를 입력하세요")
   document.frm.memId.focus();
   return false;
  }
  if(document.frm.memPwd.value == "")
  {
   alert("비밀번호를 입력하세요")
   document.frm.memPwd.focus();
   return false;
  }
  if(document.frm.memPwdChk.value == "")
  {
   alert("비밀번호를 다시한번 입력해주세요")
   document.frm.memPwdChk.focus();
   return false;
  }
  if(document.frm.memPwd.value != frm.memPwdChk.value) 
  {
   alert("비밀번호가 다릅니다.");
   document.frm.memPwd.value = ""; 
   document.frm.memPwdChk.value = ""; 
   document.frm.memPwd.focus(); 
   return false;
  }
  if(document.frm.memName.value == "")
  {
   alert("이름이 없는건가..") 
   document.frm.memName.focus(); 
   return false;
  }
  // 대화명을 이름으로 대체하는건 모르겠음... 
  if(document.frm.memJumin01.value == "" || frm.memJumin02.value == "")
  {
   alert("주민등록번호를 입력하세요") 
   document.frm.memJumin01.focus(); 
   return false;
  }
  if(document.frm.memBirth01.value == "" || frm.memBirth02.value == "" || frm.memBirth03.value == "")
  {
   alert("생년월일을 입력하세요.") 
   document.frm.memBirth01.focus(); 
   return false;
  }
  /* if(document.frm.memSung.value == "")
  {
   alert("성별을 선택하세요") 
   return false; 
  } 라디오버튼값 체크 유무 확인 방법??*/
  if(document.frm.memEmail.value == "")
  {
   alert("이메일을 입력하세요") 
   document.frm.memEmail.focus(); 
   return false;
  }
  // 메일 수신은 수신동의 selected
  if(document.frm.memZipCode01.value == "" || frm.memZipCode02.value == "")
  {
   alert("우편번호를 입력하세요") 
   document.frm.memZipCode01.focus(); 
   return false;
  }
  if(document.frm.memAddr1.value == "")
  {
   alert("주소를 입력하세요")
   document.frm.memAddr1.focus();
   return false;
  }
  if(document.frm.memAddr2.value == "")
  {
   alert("상세 주소를 입력하세요")
   document.frm.memAddr2.focus();
   return false;
  }
  if (document.frm.memTel01.value == "")
  {
   alert("전화번호를 선택하세요")
   return false;
  }
  if (document.frm.memTel02.value == "")
  {
   alert("전화번호를 입력하세요")
   document.frm.memTel02.focus();
   return false;
  }
  if (document.frm.memTel03.value == "")
  {
   alert("전화번호를 입력하세요")
   document.frm.memTel03.focus();
   return false;
  }
  if (document.frm.memMobile01.value == "Not")
  {
   alert("핸드폰번호를 선택하세요")
   return false;
  }
  if (document.frm.memMobile02.value == "")
  {
   alert("핸드폰번호를 입력하세요")
   document.frm.memMobile02.focus();
   return false;
  }
  if (document.frm.memMobile03.value == "")
  {
   alert("핸드폰번호를 입력하세요")
   document.frm.memMobile03.focus();
   return false;
  }
  /* if (document.frm.memHobby.value == "" )
  {
   alert("취미를 선택해주세요")
   return false;
  } 체크박스값 체크여부 확인방법?? */

  document.frm.submit(); // 버튼으로 쓸 땐 return true; 대신 이걸 쓰고 form시작 구문에 onsubmit="return memChk()" 는 불필요하여 삭제

 } 
 </script>

 --> 

</head>

<body>

<div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	
<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	
<div id="content">		



<div id="stylized" class="myform">

<form method="post" name="frm" action="empServlet" enctype="multipart/form-data">
<%-- <input type="hidden" name="id" value="${emp.id}"> --%>
<input type="hidden" name="command" value="emp_Write">
<table border="0" cellpadding="0" cellspacing="0"> <!-- cellpadding과 cellspacing 값을 0으로 초기화 해주지 않으면 테이블내부의 행/열 간 간격이 벌어진다. -->
<caption align="left" >
<h2>사원 등록</h2>
</caption>



 
 <tr height="30">
  <td align="right" width="100">사번</td>
  <td valign="top"></td>
  <td width="600">  
   <input type="text" name="empno" size="16">
  
  </td>
 </tr>



 <tr height="30">
  <td align="right">이름</td>
  <td valign="top"></td>
  <td width="600">
  <input type="text" name="ename" size="16" maxlength="28">
  </td>
 </tr>
 
 
 <tr height="30">
  <td align="right">아이디</td>
  <td valign="top"></td>
  <td width="600">
  <input type="text" name="id" size="16" maxlength="28">
  </td>
 </tr>
 
 
 <tr height="30">
  <td align="right">비밀번호</td>
  <td valign="top"></td>
  <td width="600">
  <input type="password" name="pwd" size="16" maxlength="28">
  </td>
 </tr>

<tr height="30">
  <td align="right">권한</td>
  <td valign="top"></td>
  <td colspan="2">
 			<c:choose>
				<c:when test="${loginUser.admin == 1 }">
						<select name="admin">
							<option value="0">일반</option>
							<option value="1">관리자</option>
							</select>
						</c:when>
						<c:otherwise>
				<input type="hidden" name="admin" value="${loginUser.admin }">
							일반
						</c:otherwise>
					</c:choose>
  </td>
 </tr>

 <tr height="30">
  <td align="right">부서</td>
  <td valign="top"></td>
  <td>
	<c:choose>
						<c:when test="${loginUser.admin == 1 }">
							<select name="dept">
								<option value="0">미배정</option>
								<option value="1">인사부</option>
								<option value="2">개발부</option>
								<option value="3">디자인부</option>
								<option value="4">기획부</option>
								<option value="5">영업부</option>
								<option value="6">경영지원부</option>
							</select>
						</c:when>
						<c:otherwise>
							<c:forEach var="dept" items="${deptList }">
								<c:if test="${member.empdept == dept.deptno }">
									${dept.deptname }
								</c:if>
							<input type="hidden" name="empdept" value="${dept.deptno }">
							</c:forEach>
						</c:otherwise>
					</c:choose>
 
 </tr>
 
  <tr height="30">
  <td align="right">직급</td>
  <td valign="top">&nbsp;</td>
  <td colspan="2">
  <c:choose>
			<c:when test="${loginUser.admin == 1  }">
					<select name="jobno">
						<option value="1">인턴</option>
						<option value="2">사원</option>
							<option value="3">대리</option>
							<option value="4">과장</option>
							<option value="5">차장</option>
							<option value="6">부장</option>
							<option value="7">부사장</option>
							<option value="8">사장</option>
							</select>
						</c:when>
						<c:otherwise>
						<c:forEach var="job" items="${jobList }">
							<c:if test="${member.empjob == job.jobno }">
								${job.jobname }
							</c:if>
							<input type="hidden" name="jobno" value="${job.jobno }">
						</c:forEach>
						</c:otherwise>
					</c:choose>
 
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


<!--  <tr height="30">
  <td align="right" >성별</td>
  <td valign="top"></td>
  <td>"src/com/kedu/project/dto/memberDto.java"
  <input type="radio" name="memSung" value="man">남자
  <input type="radio" name="memSung" value="woman">여자
 </tr> 주민번호 입력에 따른 남녀 성별 체크 -.-a
 -->
 
 <tr height="30">
  <td align="right">E - mail</td>
  <td valign="top"></td>
  <td>
   <input type="text" name="email" size="28">
  </td>
 </tr>



 <tr height="30">
  <td align="right">우편번호</td>
  <td valign="top"></td>
  <td>
  <input type="text" name="memZipCode01" size="4" maxlength="3">-
  <input type="text" name="memZipCode02" size="4" maxlength="3">
 

  </td> 
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
 
  
 <tr height="30">
  <td align="right">연봉</td>
  <td valign="top"></td>
  <td>
   <input type="text" name="sal" size="10">원
  </td>
 </tr>
 
 
 <tr height="85">
  <td align="right">비고&nbsp;</td>
  <td valign="top"></td> <!-- 자기소개 10글자 이상 어떻게?? -->
  <td>
   <textarea name="etc" rows="4" cols="65"></textarea>
  </td>
 </tr>
 
<%--  <tr  height="30">
 <td rowspan="14" width="240">
   <td valign="top"></td>
     <td width="600">  
					<c:choose>
						<c:when test="${empty member.epic}">
							<img src="upload/noimage.png" width="140">
						</c:when>
						<c:otherwise>
							<img src="upload/${member.epic}" width="140">
						</c:otherwise>
					</c:choose><br><br>
					<input type="file" name="epic"><br>
					증명사진을 넣어주세요.
				</td>
</tr>
 --%>

	

 <tr align="center">
  <td colspan="3">
   <input type="submit" value="등록">
  
  
   <input type="reset" value="취소">
   <input type="button" value="목록" onclick="location.href='empServlet?command=emp_List'">
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
