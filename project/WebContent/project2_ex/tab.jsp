<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=devide-width">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>


<script type="text/javascript">	
$('.tab').on('click', '.meun a', function(e) {
	var $parent = $(this).parent();
	var _index = $parent.index();
	var $content = $(e.delegateTarget).find('.content li').eq(_index);
	e.preventDefault();
	
	$parent.add($content).addClass('active').siblings().removeClass('active');

}).find('.menu a').eq(0).trigger('click');


</script>

<style type="text/css">

.tab {
	border:1px solid #000;
}

.menu, .content {
	list-style:none;
	padding:0;
	margin:0;
}
.menu:after {
	content:'';
	display:block;
	clear:both;
}
.menu > li {
	float : left;
	width:25%;
	box-sizing : border-box;
	border-left: 1px solid #000;
	border-bottom : 1px solid #000;
}
.menu > li :first-child {
	border-left:none;

}
.menu > li > a {
	display:bolck;
	text-align:center;
	text-decoration: none;
	color : inherit;
	line-height: 30px;
}
.menu > li.active {
	background-color: #ccc;
}
.content {
	padding : 10px;
}
.content > li {
	display:none;

}
.content > li.active {
	display : block;
}
</style>
</head>
<body>


<div class="tab">
	<ul class="menu">
		<li><a href="#">menu1</a></li>
		<li><a href="#">menu2</a></li>
		<li><a href="#">menu3</a></li>
		<li><a href="#">menu4</a></li>
	
	</ul>
	
	<ul class="content">
		<li>
		 <h2>content1</h2>.....
		</li>
		<li>
		 <h2>content2</h2>.....
		</li>
		<li>
		 <h2>content3</h2>.....
		</li>
		<li>
		 <h2>content4</h2>.....
		</li>
	
	</ul>
	
	</div>



</body>
</html>