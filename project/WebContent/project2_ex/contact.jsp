<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <title>ARaynorDesign Template</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>

    
    <div id="main">
    <jsp:include page="header.jsp" flush="false" />
	 
	
<div id="site_content">	
		 <jsp:include page="site_content.jsp" flush="false" />	
<div id="content">		 
	  <jsp:include page="project_List.jsp" flush="false" />	
</div></div>

	
  <jsp:include page="content_bottom.jsp" flush="false" />	
 
  </div><!--close main-->
  
  <jsp:include page="footer.jsp" flush="false" />
</body>
</html>