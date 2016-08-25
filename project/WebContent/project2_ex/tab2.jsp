<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
<script>
$(function () {	
	tab('#tab',0);	
});

function tab(e, num){
    var num = num || 0;
    var menu = $(e).children();
    var con = $(e+'_con').children();
    var select = $(menu).eq(num);
    var i = num;

    select.addClass('on');
    con.eq(num).show();

    menu.click(function(){
        if(select!==null){
            select.removeClass("on");
            con.eq(i).hide();
        }

        select = $(this);	
        i = $(this).index();

        select.addClass('on');
        con.eq(i).show();
    });
}

</script>

<style>
* { margin:0; padding:0;   }
ul,li { list-style:none; }
a { text-decoration:none; color:#000; }
.tab { border:1px solid #ddd; border-left:none; background:#323232; overflow:hidden; margin-left: -2px; margin-bottom : -7px;}
.tab li { float:left; width:33.3%; border-left:1px solid #ddd; text-align:center; box-sizing:border-box; }
.tab li { display:inline-block; padding:20px; cursor:pointer; }
.tab li.on { background-color:#eee; color:#f00; }
.tab_con { clear:both; margin-top:5px; border:1px solid #ddd; }
.tab_con div { display:none; height:80px; background:#323232; line-height:100px; text-align:center;  }
 </style>
<body>
 <ul class="tab" id="tab">
    <li>학력사항</li>
    <li>경력사항</li>
    <li>자격증</li>	
</ul>

<div class="tab_con" id="tab_con">
    <div>1st Contents</div>	
    <div>2nd Contents</div>
    <div>3rd Contents</div>
</div>

    
</body>
</html>