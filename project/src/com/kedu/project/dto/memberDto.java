package com.kedu.project.dto;

public class memberDto {
	
	/*empno      VARCHAR2(10)  NOT NULL, -- 사원번호
	deptno     VARCHAR2(4)   NULL,     -- 부서번호
	jobno      VARCHAR2(4)   NULL,     -- 직급번호
	id         VARCHAR2(30)  NULL,     -- 아이디
	pwd        VARCHAR2(30)  NULL,     -- 비밀번호
	ename      VARCHAR2(50)  NULL,     -- 사원이름
	birth      VARCHAR2(20)   NULL,    -- 생년
	hiredate   DATE          NULL,     -- 입사일
	resigndate DATE          NULL,     -- 퇴사일
	email      VARCHAR2(50)  NULL,     -- 이메일
	zipcode    VARCHAR2(6)   NULL,     -- 우편번호
	addr       VARCHAR2(500) NULL,     -- 주소
	deaddr     VARCHAR2(500) NULL,     -- 상세주소
	sal        NUMBER        NULL,     -- 급여
	etc        VARCHAR2(200) NULL,     -- 비고
	eregdate   DATE          NULL,     -- 사원등록일
	epic       VARCHAR2(255) NULL,     -- 사원사진
	admin      CHAR(1)       NULL      -- 관리자여부*/
	
	private String id;
	private String pwd;
	private String ename;
	private String empno;
	private String jobno;
	private int empinfo;
	private String hiredate;
	private String resigndate;
	private String eregdate;
	private String email;
	private int sal;
	private String etc;
	private String epic;
	
	
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}

	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public String getEpic() {
		return epic;
	}
	public void setEpic(String epic) {
		this.epic = epic;
	}

	
	
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public String getResigndate() {
		return resigndate;
	}
	public void setResigndate(String resigndate) {
		this.resigndate = resigndate;
	}
	public String getEregdate() {
		return eregdate;
	}
	public void setEregdate(String eregdate) {
		this.eregdate = eregdate;
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getJobno() {
		return jobno;
	}
	public void setJobno(String jobno) {
		this.jobno = jobno;
	}
	
	public int getEmpinfo() {
		return empinfo;
	}
	public void setEmpinfo(int empinfo) {
		this.empinfo = empinfo;
	}
	@Override
	public String toString() {
		return "memberDto [id=" + id + ", pwd=" + pwd + ", ename=" + ename + ", empno=" + empno + ", jobno=" + jobno
				+ ", empinfo=" + empinfo + ", hiredate=" + hiredate + ", resigndate=" + resigndate + ", eregdate="
				+ eregdate + ", email=" + email + ", sal=" + sal + ", etc=" + etc + ", epic=" + epic + "]";
	}
	
	
	
	

}
