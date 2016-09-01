package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedu.project.dao.memberDao;
import com.kedu.project.dto.memberDto;

public class loginAction implements Action {

	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
		  
		
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
				
				
			
			}else if(result == 0){
			request.setAttribute("message", "패스워드를 확인하여주세요.");
			}else if(result == -1){
			request.setAttribute("message", "입력하신 ID가 존재하지 않습니다.");
			}
			
		

	  }

	
}
