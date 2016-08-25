<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
 <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css" />
  <script type="text/javascript" src="project2_ex/js/jquery.min.js"></script>
  
<title>사원 정보 목록</title>

<style>
.bbs {
	      opacity: 1.0;  /*투명 */
		   color: #ffffff;
		   margin-left: 60px;
		   font-size:12pt; 
	   	   font-family:굴림체; 
	   	 
	

}
 #s {font-size:10pt; color:white;}



#stylized{
	
	opacity: 1.0;  /*투명 */
	color: #ffffff;
	margin-top : 25px;
	margin-left : 60px;
}
#but {
	margin-right : 75px;	
}
		  
</style>

<script type="text/javascript">
	/* function move(url){
		location.href=url;
	} */
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
</head>

<body>
  <div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	
<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	
<div id="content">		 


	<table class="bbs"  border="1">
		<colgroup>
			<col width="50" />
			<col width="300" />
			<col width="100" />
			<col width="50" />
		</colgroup>
		<thead>
			<tr>
				<th>순번</th>
				<th>사원명</th>
				<th>직급</th>
				<th>등록일</th>
			
			</tr>
		</thead>
	
	<tbody>
		<c:forEach items="${emp_List}" var="emp"> 			
			<tr>
				<td align="center">${emp.empinfo }</td>
				<td align="center"><a href="empServlet?command=emp_View&empno=${emp.empno}">${emp.ename}</a></td>
				<td align="center">${emp.jobno }</td>
				<td align="center">${emp.empno }</td>
				
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td align="center" colspan="5">1</td>
			</tr>
		</tfoot>
				
	</table>
		<div id="but" align="right" > 
		<input type="button" value="등록" onclick="location.href=('empServlet?command=emp_WriteView_form');" />
		</div>
		
<div id="stylized" class="myform">		


<table>
 <tr>
  <td align="right">ID</td>
  <td>  
   <input type="text" name="memId" size="12">
  </td>


  <td align="right">사원명</td>
  <td>
  <input type="text" name="ename" size="12" maxlength="28">
  </td>

  <td align="right">등록일</td>
  <td>
  <input type="text" name="birth" size="5" maxlength="5"> ~
  <input type="text" name="memBirth02" size="5" maxlength="5">
  <input type="button" value="검색" onclick="">
</td>

</tr>

</table>
 </div>
</div></div>
  
  </div><!--close main-->
  
  <jsp:include page="footer.jsp" flush="false" />
	

</body>
</html>