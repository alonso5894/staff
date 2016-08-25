package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.memberDao;
import com.kedu.project.dto.memberDto;

public class empWriteAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  System.out.println("list ok");
		request.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("ename "));
		
		memberDto bDto = new memberDto();
		
	
	//	bDto.setEmpinfo(Integer.parseInt(request.getParameter("empinfo")));
		bDto.setId(request.getParameter("id"));
		bDto.setPwd(request.getParameter("pwd"));
		bDto.setEname(request.getParameter("ename"));
		bDto.setEmpno(request.getParameter("empno"));
		bDto.setJobno(request.getParameter("jobno"));
		bDto.setHiredate(request.getParameter("hiredate"));
		bDto.setResigndate(request.getParameter("resigndate"));
		bDto.setEregdate(request.getParameter("eregdate"));
		
		
		System.out.println("list ok");
		memberDao bDao = memberDao.getInstance();
		bDao.insertMember(bDto);
		
		new empListAction().execute(request, response);
	}
}
