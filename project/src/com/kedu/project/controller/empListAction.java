package com.kedu.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.memberDao;
import com.kedu.project.dto.memberDto;



public class empListAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
   
	  String url = "/project2_ex/emp_List.jsp";
  
    memberDao bDao= memberDao.getInstance();
    
    List<memberDto> emp_List = bDao.selectAllEmployeess();
      
    request.setAttribute("emp_List", emp_List);
  
/*   response.sendRedirect("empServlet?command=emp_List");*/
  RequestDispatcher disp = request.getRequestDispatcher(url);
    disp.forward(request, response);
    
    
  }
}
