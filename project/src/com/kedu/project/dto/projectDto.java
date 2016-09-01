package com.kedu.project.dto;

public class projectDto {
/*	prono    NUMBER         NOT NULL, -- 프로젝트번호
	pname    VARCHAR2(255)  NULL,     -- 프로젝트명
	pstdate   DATE           NULL,     -- 프로젝트시작일
	peddate DATE           NULL,     -- 프로젝트종료일
	pregdate DATE           NULL,     -- 등록일
	pcontent VARCHAR2(1000) NULL      -- 상세내용*/
	//eproject 
	private int prono;
	private String pname;
	private String pstdate;
	private String peddate;
	private String pregdate;
	private String pcontent;
	private String empno;
	
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	//스킬 테이블
	private int sknum;
	private String skname;
	
	//역할 테이블 perform
	private int roleno;
	private String role;
	
	
	public int getRoleno() {
		return roleno;
	}
	public void setRoleno(int roleno) {
		this.roleno = roleno;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getSknum() {
		return sknum;
	}
	public void setSknum(int sknum) {
		this.sknum = sknum;
	}
	public String getSkname() {
		return skname;
	}
	public void setSkname(String skname) {
		this.skname = skname;
	}
	@Override
	public String toString() {
		return "projectDto [prono=" + prono + ", pname=" + pname + ", pstdate=" + pstdate + ", peddate=" + peddate
				+ ", pregdate=" + pregdate + ", pcontent=" + pcontent + "]";
	}
	public int getProno() {
		return prono;
	}
	public void setProno(int prono) {
		this.prono = prono;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPstdate() {
		return pstdate;
	}
	public void setPstdate(String pstdate) {
		this.pstdate = pstdate;
	}
	public String getPeddate() {
		return peddate;
	}
	public void setPeddate(String peddate) {
		this.peddate = peddate;
	}
	public String getPregdate() {
		return pregdate;
	}
	public void setPregdate(String pregdate) {
		this.pregdate = pregdate;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
}
