package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.projectDao;
import com.kedu.project.dto.projectDto;

public class projectUpdateFormAction implements Action  {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		System.out.println("list update ok");
		
		String url = "/project2_ex/project_Update.jsp";
		System.out.println("list update ok");
		
		String prono = request.getParameter("prono");
		System.out.println("list update ok");
		
		projectDao bDao = projectDao.getInstance();
		
		System.out.println("list update ok");
		
		projectDto bDto = bDao.selectOneBoardByNum(prono);
		request.setAttribute("project", bDto);

		System.out.println("list update ok");
		
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
		System.out.println("list update ok");
		
				
	}				
				
}
