package egovframework.let.crud.service;

import java.io.Serializable;

import egovframework.com.cmm.ComDefaultVO;


public class CrudVO extends ComDefaultVO implements Serializable {

	//DB column이랑 변수값을 같게 하는게 좋다.
	//CRUDID
	private String crudId;
	
	//제목
	private String crudSj;
	
	//내용
	private String crudCn;
	
	//작성자
	private String userNm;
	
	//작성일
	private java.util.Date frstRegistPnttm;

	public String getCrudId() {
		return crudId;
	}

	public void setCrudId(String crudId) {
		this.crudId = crudId;
	}

	public String getCrudSj() {
		return crudSj;
	}

	public void setCrudSj(String crudSj) {
		this.crudSj = crudSj;
	}

	public String getCrudCn() {
		return crudCn;
	}

	public void setCrudCn(String crudCn) {
		this.crudCn = crudCn;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public java.util.Date getFrstRegistPnttm() {
		return frstRegistPnttm;
	}

	public void setFrstRegistPnttm(java.util.Date frstRegistPnttm) {
		this.frstRegistPnttm = frstRegistPnttm;
	}
	
	

	
	
	

	

	
	
	
	/*//임시데이터ID
	private String tempId;
	
	//임시데이터값
	private String tempVal;
	

	public String getTempId() {
		return tempId;
	}

	public void setTempId(String tempId) {
		this.tempId = tempId;
	}

	public String getTempVal() {
		return tempVal;
	}

	public void setTempVal(String tempVal) {
		this.tempVal = tempVal;
	}*/
	
	
}