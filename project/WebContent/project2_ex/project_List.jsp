<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="project2_ex/css/style.css" />
 <script type="text/javascript" src="project2_ex/js/jquery.min.js"></script>
<title>프로젝트 목록</title>
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
<style>
.bbs {
	       opacity: 1.0;  /*투명 */
		   color: #ffffff;
		   margin-left: 60px;
		    font-size:12pt; 
	   	   font-family:굴림체; 
}
 #s {font-size:10pt; color:white;}

/* table {font-size:9pt; font-family:굴림체} */
 


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

<!-- <script type="text/javascript">
	function move(url){
		location.href=url;
	}
</script> -->
</head>

<body>

    
    <div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	
<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	
<div id="content">		

	<h2>프로젝트 목록</h2> 
	<table class="bbs" border="1">
		<colgroup>	<!-- width="600"  height="200" -->
			<col width="50" />
			<col width="100" />
			<col width="300" />
			<col width="100" />
		</colgroup>
		<thead>
			<tr>
				<th>순 번</th>
				<th>아이디</th>
				<th>프로젝트명</th>
				<th>등록일</th>
				
			</tr>
		</thead>
		<tbody>
		  <c:forEach var="project" items="${project_List }" >
			<tr>
				<td align="center">${project.prono}</td>
				<td align="center"><%-- ${project.id} --%></td>
				<td align="center"><a href="projectServlet?command=project_View&prono=${project.prono}">${project.pname}</a></td>
				<td align="center">${project.pregdate }</td>
				
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
	<input type="button" value="등록" onclick="location.href=('projectServlet?command=project_Write_Form');" />
	</div>



<div id="stylized" class="myform">		



<table>
 <tr>
  <td align="right">ID</td>
  <td>  
   <input type="text" name="id" size="12">
  </td>


  <td align="right">프로젝트명</td>
  <td>
  <input type="text" name="ename" size="12" maxlength="28">
  </td>

  <td align="right">등록일</td>
  <td>
  <input type="text" name="hiredate" size="5" maxlength="5"> ~
  <input type="text" name="resigndate" size="5" maxlength="5">
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