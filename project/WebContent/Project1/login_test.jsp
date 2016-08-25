<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String id="1073029489";
	String pwd="1234";
	String name="방덕기";
	if(id.equals(request.getParameter("id")) &&
  pwd.equals(request.getParameter("pwd")) ) {
 session.setAttribute("loginUser", name);
	
	
	
	//if(id.equals(request.getParameter("id")) &&
		//pwd.equals(request.getParameter("pwd")) ) {
	 //session.setAttribute("loginUser", name);
	 response.sendRedirect("main.html");
	}
	else {
		response.sendRedirect("login.jsp");
	}

%>


</head>
<body>

</body>
</html>