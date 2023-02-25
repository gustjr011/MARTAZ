package kr.com.choi.vo;

import java.util.List;

public class MberVO {
	private Long 	memberNo;
	private String 	memberName;
	private String 	insDate;
	private int 	status;
	private String 	memberId;
	private String 	password;
	private String 	phone;
	private String 	mail;
	private String 	auth;
	
	private List<MberVO> MberVoList;

	public Long getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(Long memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getInsDate() {
		return insDate;
	}

	public void setInsDate(String insDate) {
		this.insDate = insDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public List<MberVO> getMberVoList() {
		return MberVoList;
	}

	public void setMberVoList(List<MberVO> mberVoList) {
		MberVoList = mberVoList;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	
}
