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
	
	public int userCheck(String id, String pwd, String empno, String admin) {
		
		int result = -1;
		String sql = "select pwd from emp where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			conn = getConnection();
		    pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
		
		if(rs.next()) {
				if(rs.getString("pwd")!=null & rs.getString("pwd").equals(pwd)) {
				result = 1;
			} else {
				result = 0;
			}
		} else  {
			result = -1;
		}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e){
				e.printStackTrace();
			}
		}
		return result;
	}
	


	public memberDto getMember(String id){
	
		String sql="select * from emp where id=?";
		
		memberDto bDto = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
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
				bDto.setEmail(rs.getString("email"));
				bDto.setSal(rs.getInt("sal"));
				bDto.setEtc(rs.getString("etc"));
				bDto.setEpic(rs.getString("epic"));
				bDto.setAdmin(rs.getInt("admin"));
				
				
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
	//사번으로 이름
	public String getEmpNameByNo(String empno) {
		String ename = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sql = new StringBuilder();
		sql.append("select ename		");
		sql.append("  from emp		");
		sql.append("where empno = ?	");

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, empno);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				ename = rs.getString("ename");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DBManager.close(rs, pstmt, conn);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return ename;
	}// getStaffNameByNo
		
		
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
				bDto.setHiredate(rs.getString("hiredate"));
				bDto.setResigndate(rs.getString("resigndate"));
				bDto.setEregdate(rs.getString("eregdate"));
				bDto.setEmail(rs.getString("email"));
				bDto.setSal(rs.getInt("sal"));
				bDto.setEtc(rs.getString("etc"));
				bDto.setEpic(rs.getString("epic"));
				
				List.add(bDto);
			}
		} catch (Exception e) {

		} finally {
			DBManager.close(rs, psmt, conn);
		}
		return List;
	}

	
	//검색
	
	
	
	
	public void insertMember(memberDto bDto) {
		String sql = "insert into emp("
				+ "empinfo, id, pwd, ename, jobno, empno, hiredate, resigndate, eregdate, email, sal, etc, epic, admin) "
				+ "values(empinfo.nextval, ?, ?, ?, ?, emp_seq, ?, ?, sysdate, ?, ?, ?, ?, ?)";
				
			
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
			pstmt.setString(6, bDto.getHiredate());
			pstmt.setString(7, bDto.getResigndate());
			pstmt.setString(8, bDto.getEmail());
			pstmt.setInt(9, bDto.getSal());
			pstmt.setString(10, bDto.getEtc());
			pstmt.setString(11, bDto.getEpic());
			
			
			
			pstmt.executeUpdate();
					
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