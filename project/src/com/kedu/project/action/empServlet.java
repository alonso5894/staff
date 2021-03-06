package com.kedu.project.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.controller.Action;


@WebServlet("/empServlet")
public class empServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public empServlet() {
    super();

  }

  protected void doGet(HttpServletRequest request,
      HttpServletResponse response) throws ServletException, IOException {
    doPost(request, response);
  }

  protected void doPost(HttpServletRequest request,
    HttpServletResponse response) throws ServletException, IOException {
    
	request.setCharacterEncoding("UTF-8");
    String command = request.getParameter("command");
    
    System.out.println("empServlet에서 요청을 받음을 확인: "+command);
    
    ActionFactory af = ActionFactory.getInstance();
    Action action = af.getAction(command);
  
    if (action != null) {
      action.execute(request, response);
    }
  }
}
