package co.leaf.fit.vo;

import java.sql.Date;

public class MemberVO {
	
	private String memEmail;
	private String memPassword;
	private String memName;
	private Date memBirth;
	private String memPhone;
	private String memAddress;
	private String memGender;
	private String memState;
	private Date memSubDate;
	private String memPhoto;
	private String author;
	
	public MemberVO () {}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPassword() {
		return memPassword;
	}

	public void setMemPassword(String memPassword) {
		this.memPassword = memPassword;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public Date getMemBirth() {
		return memBirth;
	}

	public void setMemBirth(Date memBirth) {
		this.memBirth = memBirth;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemAddress() {
		return memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemState() {
		return memState;
	}

	public void setMemState(String memState) {
		this.memState = memState;
	}

	public Date getMemSubDate() {
		return memSubDate;
	}

	public void setMemSubDate(Date memSubDate) {
		this.memSubDate = memSubDate;
	}

	public String getMemPhoto() {
		return memPhoto;
	}

	public void setMemPhoto(String memPhoto) {
		this.memPhoto = memPhoto;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Override
	public String toString() {
		return "MemberVO [memEmail=" + memEmail + ", memPassword=" + memPassword + ", memName=" + memName
				+ ", memBirth=" + memBirth + ", memPhone=" + memPhone + ", memAddress=" + memAddress + ", memGender="
				+ memGender + ", memState=" + memState + ", memSubDate=" + memSubDate + ", memPhoto=" + memPhoto
				+ ", author=" + author + "]";
	}
	
	
}
