package com.kedu.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kedu.project.dto.noticeDto;
import com.kedu.project.dto.replyDto;

public class noticeDao {	
	private noticeDao() {
		
	}
	
	private static noticeDao instance = new noticeDao();

	public static noticeDao getInstance() {
		if(instance == null) {
			instance = new noticeDao();
	}
		return instance;
	}


	public List<noticeDto> selectAllBoards() {
		String sql = "select * from notice order by notno desc";
		
		List<noticeDto> list = new ArrayList<noticeDto>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
		
			noticeDto bDto = new noticeDto();
			
			bDto.setNotno(rs.getInt("notno"));
			bDto.setNotname(rs.getString("notname"));
			bDto.setNotcon(rs.getString("notcon"));
			bDto.setNotdate(rs.getString("notdate"));
			bDto.setNothits(rs.getInt("nothits"));
			
			
			list.add(bDto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(rs, stmt, conn);
		}
		return list;
	}
	/*// 해당 페이지에 해당하는 공지사항 DTO를 가져옴
		public ArrayList<noticeDto> selectNoticeListByPageNo(int pageNo){
			ArrayList<noticeDto> list 	= new ArrayList<>();
		// 시작행부터 종료행까지 DTO를 가져옴
			// 시작 행
			int sRow = (pageNo - 1) * 5;
			// 종료 행
			int eRow = sRow + 5;
			
			noticeDto nDto			= null;
			Connection conn 		= null;
			PreparedStatement pstmt = null;
			ResultSet rs 			= null;
			StringBuilder sql 		= new StringBuilder();
			sql.append("SELECT * FROM										");
			sql.append("(SELECT												");
			sql.append("ROW_NUMBER() OVER(ORDER BY notno DESC) AS RNUM,	");
			sql.append("notno, notname, notdate						");
			sql.append("FROM NOTICE											");
			sql.append("WHERE RNUM > ? AND RNUM <= ?						");
			
			try{
				conn	 = DBManager.getConnection();
				pstmt 	 = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, sRow);
				pstmt.setInt(2, eRow);
				rs		 = pstmt.executeQuery();
				
				while(rs.next()){
					nDto = new noticeDto();
					nDto.setNotno(rs.getInt("notno"));
					nDto.setNotname(rs.getString("notname"));
					nDto.setNotdate(rs.getString("notdate"));
					nDto.setNothits(rs.getInt("nothits"));
					nDto.setContent(rs.getString("content"));
					nDto.setDelyn(rs.getString("delyn"));
					
					list.add(nDto);
				}
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{
					DBManager.close(rs, pstmt, conn);
				}catch(Exception e){
					e.printStackTrace();
				}
			}
			return list;
		}//selectAllNotice
		*/
	
	
	
	
	public void insertBoard(noticeDto bDto) {
		String sql = "insert into notice("
				+ "notno, notname, notcon, notdate) "
				+ "values(notno.nextval, ?, ?, sysdate)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bDto.getNotname());
			pstmt.setString(2, bDto.getNotcon());
			
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(pstmt, conn);
		}
	}
	
	
	public void updateReadCount(String notno) {
		String sql="update notice set nothits = nothits+1 where notno=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, notno);
			
			pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(pstmt, conn);
		}
	}

	public noticeDto selectOneBoardByNum(String notno) {
			String sql = "select * from notice where notno=?";
			
			noticeDto bDto = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, notno);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					bDto = new noticeDto();
					
					bDto.setNotno(rs.getInt("notno"));
					bDto.setNotname(rs.getString("notname"));
					bDto.setNotcon(rs.getString("notcon"));
					bDto.setNotdate(rs.getString("notdate"));
					bDto.setNothits(rs.getInt("nothits"));
					
					
				}
			 }catch(Exception e) {
				 e.printStackTrace();
			 }finally {
				 DBManager.close(rs, pstmt, conn);
			 }
		return bDto;
	  }

	public void updateBoard(noticeDto bDto) {
		String sql = "update notice set notname=?, notcon=? where notno=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn=DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bDto.getNotname());
			pstmt.setString(2, bDto.getNotcon());
		/*	pstmt.setString(3, bDto.getNotdate());*/
			pstmt.setInt(3, bDto.getNotno());
			
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(pstmt, conn);
		}
	}

	

	public void deleteBoard(String notno) {
		String sql = "delete notice where notno=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, notno);
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	  } 

	public List<noticeDto> indexList() {
	
		String sql =  "select * from (select * from notice order by notdate desc) where rownum <= 5";
		List<noticeDto> index_List = new ArrayList<noticeDto>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
		
			noticeDto bDto = new noticeDto();
			
			bDto.setNotname(rs.getString("notname"));
			bDto.setNotno(rs.getInt("notno"));
			bDto.setNotcon(rs.getString("notcon"));
			bDto.setNotdate(rs.getString("notdate"));
			bDto.setNothits(rs.getInt("nothits"));
			
		
			
			index_List.add(bDto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(rs, stmt, conn);
		}
		return index_List;
	}
	
	
	
	
	public int insertReply(replyDto rDto) {
		int result				= 0;
		
		Connection conn 		= null;
		PreparedStatement pstmt = null;
		StringBuilder sql		= new StringBuilder();
		sql.append("insert into com		");
		sql.append("VALUES (?, (SELECT NVL(MAX(SEQ) + 1, 1) from reply where notno = ?), ?, ?, ?)	");
	
		try{
			conn	= DBManager.getConnection();
			pstmt	= conn.prepareStatement(sql.toString());
			pstmt.setString(1, rDto.getNotno());
			pstmt.setString(2, rDto.getNotno());
			pstmt.setString(3, rDto.getEmpno());
			pstmt.setString(4, rDto.getComdate());
			pstmt.setString(5, rDto.getComcon());
			
			result	= pstmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				DBManager.close(pstmt, conn);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	
		return result;
	}
  
}
