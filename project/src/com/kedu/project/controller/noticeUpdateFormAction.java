package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.noticeDao;
import com.kedu.project.dto.noticeDto;

public class noticeUpdateFormAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("list update ok");
			String url = "/project2_ex/notice_Update_Admin.jsp";
			System.out.println("list update ok");
			String notno = request.getParameter("notno");
			System.out.println("list update ok");
	
			noticeDao bDao = noticeDao.getInstance();
			
			bDao.updateReadCount(notno);
			System.out.println("list update ok");
			noticeDto bDto = bDao.selectOneBoardByNum(notno);
			System.out.println("list update ok");
			request.setAttribute("notice", bDto);
			

			System.out.println("list update ok");

			RequestDispatcher disp = request.getRequestDispatcher(url);
			disp.forward(request, response);
			System.out.println("list update ok");
			
	}
}
