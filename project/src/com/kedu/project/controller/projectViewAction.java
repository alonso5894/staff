package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.projectDao;
import com.kedu.project.dto.projectDto;

public class projectViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	
	
	String url = "/project2_ex/project_View.jsp";
		
		String prono = request.getParameter("prono");
		
		projectDao bDao = projectDao.getInstance();
		
		/*bDao.updateReadCount(prono);*/
		
		projectDto bDto = bDao.selectOneBoardByNum(prono);
		
		request.setAttribute("project", bDto);
		
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
	}

}
