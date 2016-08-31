package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.projectDao;
import com.kedu.project.dto.projectDto;

public class projectUpdateAction implements Action  {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		
		projectDto bDto = new projectDto();

		bDto.setProno(Integer.parseInt(request.getParameter("prono")));
		
		bDto.setPname(request.getParameter("pname"));
		bDto.setPstdate(request.getParameter("pstdate"));
		bDto.setPeddate(request.getParameter("peddate"));
		bDto.setPregdate(request.getParameter("pregdate"));
		bDto.setPcontent(request.getParameter("pcontent"));
	
		projectDao bDao = projectDao.getInstance();
		bDao.updateBoard(bDto);
	
		new projectListAction().execute(request, response);
	
				
				
	}				
				
}
