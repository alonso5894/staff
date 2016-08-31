package com.kedu.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.projectDao;
import com.kedu.project.dto.projectDto;

public class projectListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		String url = "/project2_ex/project_List.jsp";
		
		
		projectDao bDao = projectDao.getInstance();
	
		List<projectDto> project_List = bDao.selectAllBoards();
		
		request.setAttribute("project_List", project_List);
	
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
		
	}
	
	
}
