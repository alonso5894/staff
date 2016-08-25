<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>

<style>
.bbs {
	       opacity: 1.0;  /*투명 */
		   color: #ffffff;
		   margin-left: 30px;
		 
		  


}
 #s {font-size:10pt; color:white;}

table {font-size:9pt; font-family:굴림체}
 


#stylized{
	
	opacity: 1.0;  /*투명 */
	color: #ffffff;
	margin-top : 25px;
	margin-left : 35px;
}		  
#but {
	margin-right : 50px;	
}

</style>

<script type="text/javascript">
	function move(url){
		location.href=url;
	}
</script>
</head>

<body>

    
    <div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	
<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	
<div id="content">		 
	<table class="bbs" border="1">
		<colgroup>	<!-- width="600"  height="200" -->
			<col width="50" />
			<col width="500" />
			<col width="100" />
			<col width="50" />
		</colgroup>
		<thead>
			<tr>
				<th>순 번</th>
				<th>프로젝트명</th>
				<th>아이디</th>
				<th>등록일</th>
				<th>조회</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td align="center">1</td>
				<td align="center"><a href="project_View.jsp">방덕기</a></td>
				<td align="center">11111</td>
				<td align="center">2016/08/07</td>
				<td align="center">33333</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center"><a href="project_View.jsp">방덕기</a></td>
				<td align="center">11111</td>
				<td align="center">2016/08/07</td>
				<td align="center">33333</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center"><a href="project_View.jsp">방덕기</a></td>
				<td align="center">11111</td>
				<td align="center">2016/08/07</td>
				<td align="center">33333</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center"><a href="project_View.jsp">방덕기</a></td>
				<td align="center">11111</td>
				<td align="center">2016/08/07</td>
				<td align="center">33333</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td align="center" colspan="5">1</td>
			</tr>
		</tfoot>		
	</table>
	<div id="but" align="right" >
	<input type="button" value="등록" onclick="move('Board_Write.jsp');" />
	</div>



<div id="stylized" class="myform">		


<table>
 <tr>
  <td align="right">ID</td>
  <td>  
   <input type="text" name="memId" size="16">
  </td>


  <td align="right">프로젝트명</td>
  <td>
  <input type="text" name="ename" size="16" maxlength="28">
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