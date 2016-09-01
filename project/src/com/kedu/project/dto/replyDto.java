package com.kedu.project.dto;

public class replyDto {
	/*
	CREATE TABLE com (
			comno   NUMBER        NOT NULL, -- 댓글번호
			comcon  VARCHAR2(200) NULL,     -- 댓글내용
			comdate DATE          NULL,     -- 댓글작성일
			comdel  CHAR(1)       NULL      -- 댓글삭제여부
		);*/
	
	private int comno;
	private String comcon;
	private String comdate;
	private String comdel;
	private String notno;
	private String empno;
	
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getComdate() {
		return comdate;
	}
	public void setComdate(String comdate) {
		this.comdate = comdate;
	}
	public String getNotno() {
		return notno;
	}
	public void setNotno( String string) {
		this.notno = string;
	}
	public int getComno() {
		return comno;
	}
	
	public void setComno(int comno) {
		this.comno = comno;
	}
	public String getComcon() {
		return comcon;
	}
	public void setComcon(String comcon) {
		this.comcon = comcon;
	}
	public String getDate() {
		return comdate;
	}
	public void setDate(String date) {
		this.comdate = date;
	}
	public String getComdel() {
		return comdel;
	}
	public void setComdel(String comdel) {
		this.comdel = comdel;
	}
	@Override
	public String toString() {
		return "replyDto [comno=" + comno + ", comcon=" + comcon + ", comdate=" + comdate + ", comdel=" + comdel
				+ ", notno=" + notno + ", empno=" + empno + "]";
	}

	
}
