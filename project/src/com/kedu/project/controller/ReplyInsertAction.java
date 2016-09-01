package com.kedu.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;
import com.kedu.project.dao.replyDao;
import com.kedu.project.dto.replyDto;

public class ReplyInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		replyDao rDao = replyDao.getInstance();
		replyDto rDto = new replyDto();
		
		HttpSession session = request.getSession();
		rDto.setComcon(request.getParameter("replyComcon"));
	
		rDto.setNotno(request.getParameter("notno"));
		
		int result = rDao.insertReply(rDto);
		
		JsonObject json = new JsonObject();
		
		if(result == 1){
			rDto = rDao.lastInsert();
			
			
		
			json.addProperty("comcon", rDto.getComcon());
			json.addProperty("comdel", rDto.getComdel());
			json.addProperty("comno", rDto.getComno());
			/*json.addProperty("ename", (String)session.getAttribute("ename"));*/
		}
		
		
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print(json);
	}

}
