package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.projectDao;
import com.kedu.project.dto.projectDto;

public class projectWriteAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("list ok");
		
		projectDto bDto = new projectDto();
		
		bDto.setPname(request.getParameter("pname"));
		bDto.setPstdate(request.getParameter("pstdate"));
		bDto.setPeddate(request.getParameter("peddate"));
		bDto.setPregdate(request.getParameter("pregdate"));
		bDto.setPcontent(request.getParameter("pcontent"));
		
		System.out.println("list ok");
		projectDao bDao = 	projectDao.getInstance();
		bDao.insertBoard(bDto);
		new projectListAction().execute(request, response);
		System.out.println("list ok");
	}
}
