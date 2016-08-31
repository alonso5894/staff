function loginCheck() {
	if(document.frm.id.value.lenhth == 0) {
		alert("아이디를 써주세요");
		frm.id.focus();
		return false;
	}
	if(document.frm.pwd.value == "") {
		alert("암호는 반드시 입력되야 합니다.");
		frm.pwd.focus();
		return false;
	}
	return true;
}