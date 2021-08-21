package co.leaf.fit.vo;

import java.sql.Date;

public class HistoryVO {
	
	private String hisMemEmail;
	private int hisProId;
	private int hisPeriod;
	private int hisPaid;
	private int hisRegId;
	private int hisCatId;
	private Date hisDate;
	private int hisId;
	
	private String proName;
	private String proPhoto;
	
	private String hisState;
	
	public HistoryVO() {}

	
	public String getHisMemEmail() {
		return hisMemEmail;
	}

	public void setHisMemEmail(String hisMemEmail) {
		this.hisMemEmail = hisMemEmail;
	}

	public int getHisProId() {
		return hisProId;
	}

	public void setHisProId(int hisProId) {
		this.hisProId = hisProId;
	}

	public int getHisPeriod() {
		return hisPeriod;
	}

	public void setHisPeriod(int hisPeriod) {
		this.hisPeriod = hisPeriod;
	}

	public int getHisPaid() {
		return hisPaid;
	}

	public void setHisPaid(int hisPaid) {
		this.hisPaid = hisPaid;
	}

	public int getHisRegId() {
		return hisRegId;
	}

	public void setHisRegId(int hisRegId) {
		this.hisRegId = hisRegId;
	}

	public int getHisCatId() {
		return hisCatId;
	}

	public void setHisCatId(int hisCatId) {
		this.hisCatId = hisCatId;
	}

	public Date getHisDate() {
		return hisDate;
	}

	public void setHisDate(Date hisDate) {
		this.hisDate = hisDate;
	}

	public int getHisId() {
		return hisId;
	}

	public void setHisId(int hisId) {
		this.hisId = hisId;
	}


	public String getProName() {
		return proName;
	}


	public void setProName(String proName) {
		this.proName = proName;
	}


	public String getProPhoto() {
		return proPhoto;
	}


	public void setProPhoto(String proPhoto) {
		this.proPhoto = proPhoto;
	}


	public String getHisState() {
		return hisState;
	}


	public void setHisState(String hisState) {
		this.hisState = hisState;
	}

	
}
