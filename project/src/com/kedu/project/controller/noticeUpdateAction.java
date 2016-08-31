package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.noticeDao;
import com.kedu.project.dto.noticeDto;

public class noticeUpdateAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			noticeDto bDto = new noticeDto();
			
			bDto.setNotno(Integer.parseInt(request.getParameter("notno")));
			bDto.setNotname(request.getParameter("notname"));
			bDto.setNotcon(request.getParameter("notcon"));
			bDto.setNotdate(request.getParameter("notdate"));
		
			noticeDao bDao = noticeDao.getInstance();
			bDao.updateBoard(bDto);
			
			new noticeListAction().execute(request, response);
		
		}
			
	}
