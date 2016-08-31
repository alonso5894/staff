<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="com.kedu.project.dao.memberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<% 
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	memberDao bDao = bDao.getInstance();
	boolean result = bDao.loginCheck(id, pwd);
	if(result) {
		session.setAttribute("sessionId", id);
		session.setAttribute("sessionPwd", pwd);
		
		response.sendRedirect("login.jsp");
	}else {
		out.println("아이디와 비밀번호를 확인하세요.");
	}
	session.setAttribute("sessionId", id);
	session.setAttribute("sessionPwd", pwd);

%>
<%-- <%
	String id="1";
	String pwd="1";
	String name="방덕기";
	if(id.equals(request.getParameter("id")) &&
  pwd.equals(request.getParameter("pwd")) ) {
 session.setAttribute("loginUser", name);
	
	
	
	//if(id.equals(request.getParameter("id")) &&
		//pwd.equals(request.getParameter("pwd")) ) {
	 //session.setAttribute("loginUser", name);
	 response.sendRedirect("noticeServlet?command=login");
	}
	else {
		response.sendRedirect("noticeServlet?command=index");
	}

%>
 --%>

</head>
<body>

</body>
</html>