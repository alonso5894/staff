package com.kedu.project.dto;

public class noticeDto {

	private int notno;
	private String notname;
	private String notcon;
	private String notdate;
	private int nothits;
	
	public int getNotno() {
		return notno;
	}
	public void setNotno(int notno) {
		this.notno = notno;
	}
	public String getNotname() {
		return notname;
	}
	public void setNotname(String notname) {
		this.notname = notname;
	}
	public String getNotcon() {
		return notcon;
	}
	public void setNotcon(String notcon) {
		this.notcon = notcon;
	}
	public String getNotdate() {
		return notdate;
	}
	public void setNotdate(String notdate) {
		this.notdate = notdate;
	}
	public int getNothits() {
		return nothits;
	}
	public void setNothits(int nothits) {
		this.nothits = nothits;
	}
	@Override
	public String toString() {
		return "noticeDto [notno=" + notno + ", notname=" + notname + ", notcon=" + notcon + ", notdate=" + notdate
				+ ", nothits=" + nothits + "]";
	}
	
}
