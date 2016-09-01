package com.kedu.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.noticeDao;
import com.kedu.project.dto.noticeDto;

public class indexAction implements Action {

	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	   
		  String url = "/project2_ex/index.jsp";
		
		 noticeDao bDao= noticeDao.getInstance();
		    
		 List<noticeDto> index_List = bDao.indexList();
		      
		    request.setAttribute("index_List", index_List);
	  
	  RequestDispatcher disp = request.getRequestDispatcher(url);
	    disp.forward(request, response);
	    
	    
	  }
	}

