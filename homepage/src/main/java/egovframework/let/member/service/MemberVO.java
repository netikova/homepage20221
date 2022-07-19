package egovframework.let.member.service;

import java.io.Serializable;

import egovframework.com.cmm.ComDefaultVO;

public class MemberVO extends ComDefaultVO implements Serializable {

	//데이터ID
	private String memberId;
	
	//패스워드
	private String memberPass;
	
	//이름
	private String memberName;

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPass() {
		return memberPass;
	}

	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	

	
	
}
