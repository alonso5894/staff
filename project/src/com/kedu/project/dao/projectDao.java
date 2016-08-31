package com.kedu.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kedu.project.dto.projectDto;

public class projectDao {
	
		private projectDao() {
			
		}
		
		private static projectDao instance = new projectDao();

		public static projectDao getInstance() {
			if(instance == null) {
				instance = new projectDao();
		}
			return instance;
		}

		public List<projectDto> selectAllBoards() {
			String sql = "select * from project order by prono desc";
			
			List<projectDto> list = new ArrayList<projectDto>();
			
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				stmt = conn.createStatement();
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
			
				projectDto bDto = new projectDto();
				
				bDto.setProno(rs.getInt("prono"));
				bDto.setPname(rs.getString("pname"));
				bDto.setPstdate(rs.getString("pstdate"));
				bDto.setPeddate(rs.getString("peddate"));
				bDto.setPregdate(rs.getString("pregdate"));
				bDto.setPcontent(rs.getString("pcontent"));
				
				
				list.add(bDto);
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DBManager.close(rs, stmt, conn);
			}
			return list;
		}
		
		public projectDto selectOneBoardByNum(String prono) {
			String sql = "select * from project where prono=?";
			
			projectDto bDto = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, prono);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					bDto = new projectDto();
					
					bDto.setProno(rs.getInt("prono"));
					bDto.setPname(rs.getString("pname"));
					bDto.setPstdate(rs.getString("pstdate"));
					bDto.setPeddate(rs.getString("peddate"));
					bDto.setPregdate(rs.getString("pregdate"));
					bDto.setPcontent(rs.getString("pcontent"));
					
					
				}
			 }catch(Exception e) {
				 e.printStackTrace();
			 }finally {
				 DBManager.close(rs, pstmt, conn);
			 }
		return bDto;
	  }
		
		public void insertBoard(projectDto bDto) {
			String sql = "insert into project("
					+ "prono, pname, pstdate, peddate, pregdate, pcontent) "
					+ "values(prono.nextval, ?, ?, ?, SYSDATE, ?)";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, bDto.getPname());
				pstmt.setString(2, bDto.getPstdate());
				pstmt.setString(3, bDto.getPeddate());
				pstmt.setString(4, bDto.getPcontent());
				
				
				pstmt.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DBManager.close(pstmt, conn);
			}
		}

		


		public void updateBoard(projectDto bDto) {
			String sql = "update project set pname=?, pstdate=?, peddate=?, pcontent=? where prono=?";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn=DBManager.getConnection();
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, bDto.getPname());
				pstmt.setString(2, bDto.getPstdate());
				pstmt.setString(3, bDto.getPeddate());
				pstmt.setString(4, bDto.getPcontent());
				pstmt.setInt(5, bDto.getProno());
				
				
				pstmt.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DBManager.close(pstmt, conn);
			}
		}

		
		
		

		public void deleteBoard(String prono) {
			String sql = "delete project where prono=?";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, prono);
				
				pstmt.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		  }






}


