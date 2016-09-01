package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class indexAction implements Action {

	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	   
		  String url = "/project2_ex/index.jsp";
		/*  
		 noticeDao bDao= noticeDao.getInstance();*/
		/*    
		 List<noticeDto> indexList = bDao.indexList();
		      
		    request.setAttribute("indexList", indexList);*/
	  
	  RequestDispatcher disp = request.getRequestDispatcher(url);
	    disp.forward(request, response);
	    
	    
	  }
	}

