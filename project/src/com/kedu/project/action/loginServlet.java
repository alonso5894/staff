package com.kedu.project.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedu.project.dao.memberDao;
import com.kedu.project.dto.memberDto;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		  RequestDispatcher disp = request.getRequestDispatcher("project2_ex/login.jsp");
		    disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String url = "project2_ex/login.jsp";
		
		String empno = request.getParameter("empno");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String admin = request.getParameter("admin");
		
		memberDao bDao = memberDao.getInstance();
		int result = bDao.userCheck(id, pwd, empno, admin);
		
		if(result == 1) {
			memberDto bDto = bDao.getMember(id);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", bDto);
			
			url = "empServlet?command=index";
		
		}else if(result == 0){
		request.setAttribute("message", "패스워드를 확인하여주세요.");
		}else if(result == -1){
		request.setAttribute("message", "입력하신 ID가 존재하지 않습니다.");
		}
	
		
		RequestDispatcher disp = request.getRequestDispatcher(url);
		    disp.forward(request, response);
	}

}
