package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.memberDao;
import com.kedu.project.dto.memberDto;

public class empViewAction implements Action {

	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
		  
		  String url = "/project2_ex/emp_View.jsp";
		
		  String empno = request.getParameter("empno");

		  memberDao bDao = memberDao.getInstance();
		
		  memberDto bDto = bDao.getMember(empno);
		
		  request.setAttribute("emp", bDto);

		  RequestDispatcher disp = request.getRequestDispatcher(url);
		  disp.forward(request, response);

	  }
}
