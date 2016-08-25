package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException;
}

//http://localhost:8080/project/empServlet?command=emp_List로 실행!