package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.projectDao;

public class projectDeleteAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String num = request.getParameter("prono");
		
		projectDao bDao = projectDao.getInstance();
		bDao.deleteBoard(num);
		
		new projectListAction().execute(request, response);
	}
}
