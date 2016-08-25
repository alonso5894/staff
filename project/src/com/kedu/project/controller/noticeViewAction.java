package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.noticeDao;
import com.kedu.project.dto.noticeDto;

public class noticeViewAction implements Action {
	

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		String url = "/project2_ex/notice_View.jsp";
		
		String notno = request.getParameter("notno");
		
		noticeDao bDao = noticeDao.getInstance();
		
		bDao.updateReadCount(notno);
		
		noticeDto bDto = bDao.selectOneBoardByNum(notno);
		
		request.setAttribute("notice", bDto);
		
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
	}

}
