package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.noticeDao;

public class noticeDeleteAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String num = request.getParameter("notno");
		
		noticeDao bDao = noticeDao.getInstance();
		bDao.deleteBoard(num);
		
		new noticeListAction().execute(request, response);
	}

}
