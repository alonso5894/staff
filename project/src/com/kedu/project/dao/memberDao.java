package com.kedu.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.kedu.project.dto.memberDto;

public class memberDao {
	private memberDao() {
	}
	
	private static memberDao instance = new memberDao();
	
	public static memberDao getInstance() {
		return instance;
	}

	Connection getConnection(){
		Connection conn = null;
		Context initContext;
		
		try{
			initContext = new InitialContext();
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/staff");
			conn = ds.getConnection();
			
		}catch(NamingException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return conn;
	}
	
	
	public memberDto getMember(String empno){
		memberDto bDto = null;
		
		Connection conn = null;
		String sql="select * from emp where empno=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, empno);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				bDto = new memberDto();
				bDto.setEmpinfo(rs.getInt("empinfo"));
				bDto.setId(rs.getString("id"));
				bDto.setPwd(rs.getString("pwd"));
				bDto.setEname(rs.getString("ename"));
				bDto.setEmpno(rs.getString("empno"));				
				bDto.setJobno(rs.getString("jobno"));
				bDto.setHiredate(rs.getString("hiredate"));
				bDto.setResigndate(rs.getString("resigndate"));
				bDto.setEregdate(rs.getString("eregdate"));
				
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return bDto;
	}
	
		
		
			//order by empinfo desc
	public List<memberDto> selectAllEmployeess() {
		String sql = "select * from emp order by empinfo desc";
		
		ArrayList<memberDto> List = new ArrayList<memberDto>();
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				memberDto bDto = new memberDto();
				bDto.setEmpinfo(rs.getInt("empinfo"));
				bDto.setId(rs.getString("id"));
				bDto.setPwd(rs.getString("pwd"));
				bDto.setEname(rs.getString("ename"));
				bDto.setJobno(rs.getString("jobno"));
				bDto.setEmpno(rs.getString("empno"));
				
				List.add(bDto);
			}
		} catch (Exception e) {

		} finally {
			DBManager.close(rs, psmt, conn);
		}
		return List;
	}

	public void insertMember(memberDto bDto) {
		String sql = "insert into emp("
				+ "empinfo, id, pwd, ename, jobno, empno, hiredate, resigndate, eregdate) "
				+ "values(empinfo.nextval, ?, ?, ?, ?, emp_seq, ?, ?, sysdate)";
				
			
		Connection conn = null;
	
		PreparedStatement pstmt = null;
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bDto.getId());
			pstmt.setString(2, bDto.getPwd());
			pstmt.setString(3, bDto.getEname());
			pstmt.setString(4, bDto.getJobno());			
			pstmt.setString(5, bDto.getEmpno());
			pstmt.setString(5, bDto.getHiredate());
			pstmt.setString(6, bDto.getResigndate());
			
			

			System.out.println(pstmt.executeUpdate());			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}