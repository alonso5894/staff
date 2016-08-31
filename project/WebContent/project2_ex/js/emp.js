function joinCheck() {
  /*if (document.frm.id.length == 0) {
    alert("아이디를  써주세요.");
    document.frm.id.focus();
    return false;
  }*/
 /* if (document.frm.pwd.value.length == 0) {
    alert("비밀번호를 써주세요");
    document.frm.pass.focus();
    return false;
  }*/
  if (document.frm.ename.value.length == 0) {
    alert("이름을 입력해야 합니다");
    document.frm.name.focus();
    return false;
  }
  return true;
}


function searchCheck(frm){
    //검색
   
    if(frm.keyWord.value ==""){
        alert("검색 단어를 입력하세요.");
        frm.keyWord.focus();
        return;
    }
    frm.submit();      
}

