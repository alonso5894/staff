package com.kedu.project.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.project.dao.memberDao;
import com.kedu.project.dto.memberDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class empWriteAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
        request.setCharacterEncoding("UTF-8");
 
    	ServletContext context =  request.getServletContext();
        String path = context.getRealPath("upload");
        String encType = "UTF-8";
        int sizeLimit = 20 * 1024 * 1024;
   
        MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
   	
        String id = multi.getParameter("id");
        String pwd = multi.getParameter("pwd");
        String ename = multi.getParameter("ename");
        String empno = multi.getParameter("empno");
        String jobno = multi.getParameter("jobno");
        String hiredate = multi.getParameter("hiredate");
        String resigndate = multi.getParameter("resigndate");
        String eregdate = multi.getParameter("eregdate");
        String email = multi.getParameter("email");
        String etc = multi.getParameter("etc");
        int sal = Integer.parseInt(multi.getParameter("sal"));
        String epic = multi.getFilesystemName("epic");
        int admin = Integer.parseInt(multi.getParameter("admin"));
     
		/*bDto.setId(request.getParameter("id"));
		bDto.setPwd(request.getParameter("pwd"));
		bDto.setEname(request.getParameter("ename"));
		bDto.setEmpno(request.getParameter("empno"));
		bDto.setJobno(request.getParameter("jobno"));
		bDto.setHiredate(request.getParameter("hiredate"));
		bDto.setResigndate(request.getParameter("resigndate"));
		bDto.setEregdate(request.getParameter("eregdate"));
		bDto.setEmail(request.getParameter("email"));
		bDto.setEtc(request.getParameter("etc"));
		bDto.setSal(Integer.parseInt(request.getParameter("sal")));
		bDto.setEpic(request.getParameter("epic"));
		*/
   	
		memberDto bDto = new memberDto();
		bDto.setPwd(id);
		bDto.setPwd(pwd);
		bDto.setEname(ename);
		bDto.setEmpno(empno);
		bDto.setJobno(jobno);
		bDto.setHiredate(hiredate);
		bDto.setResigndate(resigndate);
		bDto.setEregdate(eregdate);
		bDto.setEmail(email);
		bDto.setEtc(etc);
		bDto.setSal(sal);
		bDto.setEpic(epic);
		bDto.setAdmin(admin);

	
		memberDao bDao = memberDao.getInstance();
		bDao.insertMember(bDto);
	
		new empListAction().execute(request, response);
	
	}
}
