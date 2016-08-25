<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery UI Dialog -Modal form</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<!-- <link rel="stylesheet" href="css/jquery-ui.min.css"> -->
<style>
body {font-size:62.5%;}
label, input {display:block;} <!--label, input : block -> 각각의 영역 줄 block없으면 이름 옆에 텍스트필드 생성 -->
input.text{margin-bottom:12px; width:95%; padding : .4em;} 
fieldset {padding : 0; border : 0; margin-top : 25px;}
h1 {font-size: 1.2em; margin : .6em 0;}
div#users-contain {width : 350px; margin : 20px 0;}
div#users-contain table {margin : 1em 0; border-collapse : collapse; width:100%;}
div#users-contain table td, div#users-contain table th {border : 1px solid #eee; padding : .6em 10px; text-align:left;}
.ui-dialog .ui-state-error {padding : .3em;}
.validateTips {border : 1px solid transparent; padding : 0.3em;}
* {
	font-size: 13px;
}
</style>
<script>
	$(function() {
		var dialog, form,
		emailRegex = /^[a-zA-z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
		name  = $("#name"),
		email = $("#email"),	
		password = $("#password"),
		allFields = $([]).add(name).add(email).add(password),
		tips = $(".validateTips");
		
		function updateTips(t) { //함수(메서드) 만드는 이유 - 재사용, 구조화
			tips				//tips.text(t).addClass... -> 잘 된 코딩 방식! text한다음 addClass해라
			.text(t)
			.addClass("ui-state-highlight"); //ui-state-highlight : 내장되있음
		   setTimeout(function() {
			   tips.removeClass("ui-state-highlight", 1500);
		   }, 500);
		}		
		function checkLength(o, n, min, max) {
			if(o.val().length > max || o.val().length < min) {
				o.addClass("ui-state-error");  //addClass 때문에 빨간색 창 뜸
				updateTips(n+"은(는)" +min+ "에서" +max+ "자까지 입력해 주세요.");
				return false;
			}else{
				return true;
			}
		  }	
		
		function checkRegexp(o, regexp, n)  {
			if(!(regexp.test(o.val()))) {
				o.addClass("ui-state-error");  //addClass 때문에 빨간색 창 뜸
				updateTips(n);
				return false;
			}else {
				return true;
			}
		}
		
		function addUser() {
			var valid = true;
			allFields.removeClass("ui-state-error");
				//&& =and
			valid = valid && checkLength(name, "이름", 3, 16);
			valid = valid && checkLength(email,"이메일", 6, 80);
			valid = valid && checkLength(password, "비밀번호", 5, 16);
				//valid가 false나오면 and이므로 false라 그 다음 줄은 계속 false이므로 진행x
			valid = valid && checkRegexp(name, /^[가-힣a-z]([가-힣0-9a-z_\s])+$/i, "성명은 3자에서 16자 이내로 작성해 주세요");
			valid = valid && checkRegexp(email, emailRegex, "eg.ui@jquery.com");
			valid = valid && checkRegexp(password, /^([0-9a-zA-Z])+$/, "비밀번호는 영문자 소문자,  숫자 5~16 허용합니다.");
			
			if(valid) { //users tbody라는 부분에 (마지막으로)append(추가)해라
				$("#users tbody").append("<tr>"+
					"<td>"+name.val()+"</td>"+
					"<td>"+email.val()+"</td>"+
					"<td>"+password.val()+"</td>"+
					"</tr>");
				dialog.dialog("close");
			}
			return valid;
			}
		dialog = $("#dialog-form").dialog({
			autoOpen : false,
			height : 340,
			width : 280,
			modal : true, //modal false 점유, dialong-form창 열리면 뒤에 비활성화 (점유)
			buttons: {
				"회원 가입" : addUser,
				취소 : function() {
					dialog.dialog("close"); //dialog가 close되면 안보이는것, 존재는 함 -> ex) 오류 다음 창 띄우면 그대로 있음......
				}
			},
			close:function(){ //★ modal처리 후 반드시 close 해야함 , close는 컴파일 순간 맨위로 올라감(자바 컴파일러가) 언디파인드 해놈. 그래서 
				form[0].reset(); //form[0] : 첫번째 폼 (이름)                      //dialog(close)~ close:function이 오류 걸리지 않음.
				allFields.removeClass("ui-state-error"); //allFields = $([]).add(name).add(email).add(password)-34번째줄  ★
			}
			
			});
		
			form = dialog.find("form").on("submit", function(event) {
				event.preventDefault(); //submit 눌러도 전송 되지 않음.
				addUser();		//전송을 막고 addUser 호출
			});
			
			$("#create-user").button().on("click",function() {
				dialog.dialog("open");
			});
		});
		//동적생성 된것 -on 은 먹음, click는 먹지 않음
	
</script>
</head>
<body>

	<div id="dialog-form" title="회원 등록">
		<p class="validateTips">모든 필드에 입력해 주세요</p>
		
		<form> <!-- form1 -->
			<fieldset>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" placeholder="아아디를 입력하세요" class="text ui-widget-content ui-corner-all">
			<label for="email">이메일</label>
			<input type="text" name="email" id="email" placeholder="이메일을 입력하세요" class="text ui=widget-content ui-corner-all">
			<label for="password">비밀번호</label>
			<input type="password" name="password" id="password"  placeholder="비밀번호를 입력하세요" class="text ui-widget-content ui-corner-all">
			<!-- 폼 안에 있는 건 submit 버튼이 아님, 사라짐 : top:-1000px, tab으로 인해 버튼을 누를 수 있기 때문에 tabindex="-1"옵션 줌 ->tab키 못먹게 -->
			<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
			</fieldset>
		</form>
	</div>
	
	<div id="users-contain" class="ui-widget">
	<h1>회원 현황</h1>
	<table id="users" class="ui=widget ui=widget-content">
	<thead>
		<tr class="ui-widget-header">
		<th>이름</th>
		<th>이메일</th>
		<th>비밀번호</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>방덕기</td>
			<td>bang5894@naver.com</td>
			<td>ynwa</td>
		</tr>
	</tbody>
	</table>
	</div>
	<button id="create-user">회원 등록</button> <!-- 모달 창 생성 -->
</body>
</html>