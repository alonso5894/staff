package com.kedu.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kedu.project.dto.replyDto;

public class replyDao {
	private replyDao(){
		
	}
	
	private static replyDao instance = new replyDao();
	
	public static replyDao getInstance(){
		if(instance == null){
			instance = new replyDao();
		}
		return instance;
	}
	
	public List<replyDto> selectAllReply(String notno){
		StringBuilder sql = new StringBuilder();
		sql.append("select c.comno 		");
		sql.append("	 , c.notno		");
		sql.append("	 , c.comcon		");
		sql.append("	 , c.comdate		");
		sql.append("	 , e.empno		");
	
		sql.append("  from com c			");
		sql.append("	 , notice n			");
		sql.append("	 , emp e		");
		sql.append(" where n.notno = ?	");
		sql.append("order by r.comno		");
		
		List<replyDto> list = new ArrayList<replyDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, notno);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				replyDto rDto = new replyDto();
				
				rDto.setComno(rs.getInt("comno"));
				rDto.setComcon(rs.getString("comcon"));
				rDto.setComdate(rs.getString("comdate"));
			
				rDto.setNotno(rs.getString("notno"));
				rDto.setEmpno(rs.getString("empno"));
				
				list.add(rDto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			DBManager.close(rs, pstmt, conn);
		}
		return list;
	}
	
	public int insertReply(replyDto rDto){
		StringBuilder sql = new StringBuilder();
		sql.append("insert into com				");
		sql.append("		(comno				");
		sql.append("    ,   notno               ");
		sql.append("	,	empno				");
		sql.append("	,	comcon					");
		sql.append("		)						");
		sql.append("values(							");
		sql.append("		comno.nextval			");
		sql.append("	,	?						");
		sql.append("	,	?						");
		sql.append("	,	?						");
		sql.append("	)	");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int result = -1;
		
		try{
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, rDto.getNotno());
			pstmt.setString(2, rDto.getEmpno());
			pstmt.setString(3, rDto.getComcon());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			DBManager.close(pstmt, conn);
		}
		return result;
	}
	
	public replyDto lastInsert(){
		replyDto rDto 	= new replyDto();
		Connection conn 			= null;
		PreparedStatement pstmt	 	= null;
		ResultSet rs				= null;
		int lastSeq					= 0;
		
		StringBuilder lastsql = new StringBuilder();
		lastsql.append("select comno.currval as lastseq from dual");
		
		StringBuilder sql = new StringBuilder();
		sql.append("select * from com where comno=?");
		
		try{
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(lastsql.toString());
			rs = pstmt.executeQuery();
			if(rs.next()){
				lastSeq = rs.getInt("lastseq");
			}
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, lastSeq);
			rs		=  pstmt.executeQuery();
			if(rs.next()){
				rDto.setComcon(rs.getString("comcon"));
				rDto.setComdate(rs.getString("comdate"));
				rDto.setComno(rs.getInt("comno"));
				rDto.setNotno(rs.getString("notno"));
				rDto.setNotno(rs.getString("empno"));
			
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			DBManager.close(rs, pstmt, conn);
		}
		return rDto;
	}
}
