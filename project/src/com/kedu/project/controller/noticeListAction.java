package com.kedu.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.noticeDao;
import com.kedu.project.dto.noticeDto;

public class noticeListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String url = "/project2_ex/notice_List.jsp";
		
		
		noticeDao bDao = noticeDao.getInstance();
	

		List<noticeDto> notice_List = bDao.selectAllBoards();
		
		request.setAttribute("notice_List", notice_List);
	
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
		
	
	}
	
	
}
