package com.kedu.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kedu.project.dto.noticeDto;

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




}
