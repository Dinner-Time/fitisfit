package co.leaf.fit.vo;

import java.sql.Date;

public class PartnerVO {
	
	private int parId;
	private String parEmail;
	private String parPassword;
	private String parName;
	private int parRegId;
	private String parAddress;
	private String parPhone;
	private String parIntro;
	private String parPhoto;
	private Date parSubDate;
	private String parState;
	private String author;
	private int parOriId;
	
	private String regName;
	

	public String getRegName() {
		return regName;
	}

	public void setRegName(String regName) {
		this.regName = regName;
	}

	public PartnerVO () {}

	public int getParId() {
		return parId;
	}

	public void setParId(int parId) {
		this.parId = parId;
	}

	public String getParEmail() {
		return parEmail;
	}

	public void setParEmail(String parEmail) {
		this.parEmail = parEmail;
	}

	public String getParPassword() {
		return parPassword;
	}

	public void setParPassword(String parPassword) {
		this.parPassword = parPassword;
	}

	public String getParName() {
		return parName;
	}

	public void setParName(String parName) {
		this.parName = parName;
	}

	public int getParRegId() {
		return parRegId;
	}

	public void setParRegId(int parRegId) {
		this.parRegId = parRegId;
	}

	public String getParAddress() {
		return parAddress;
	}

	public void setParAddress(String parAddress) {
		this.parAddress = parAddress;
	}

	public String getParPhone() {
		return parPhone;
	}

	public void setParPhone(String parPhone) {
		this.parPhone = parPhone;
	}

	public String getParIntro() {
		return parIntro;
	}

	public void setParIntro(String parIntro) {
		this.parIntro = parIntro;
	}

	public String getParPhoto() {
		return parPhoto;
	}

	public void setParPhoto(String parPhoto) {
		this.parPhoto = parPhoto;
	}
	
	public Date getParSubDate() {
		return parSubDate;
	}

	public void setParSubDate(Date parSubDate) {
		this.parSubDate = parSubDate;
	}
	
	public String getParState() {
		return parState;
	}

	public void setParState(String parState) {
		this.parState = parState;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getParOriId() {
		return parOriId;
	}

	public void setParOriId(int parOriId) {
		this.parOriId = parOriId;
	}
	
}
