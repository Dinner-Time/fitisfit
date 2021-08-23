package co.leaf.fit.vo;

import java.sql.Date;

public class ReviewVO {
	
	private int revId;
	private int revProId;
	private Double revScore;
	private String revContent;
	private String revWriter;
	private Date revDate;
	
	private String revProName;
	private String revProPhoto;
	
	public ReviewVO() {	}
	
	public int getRevId() {
		return revId;
	}
	public void setRevId(int revId) {
		this.revId = revId;
	}
	public int getRevProId() {
		return revProId;
	}
	public void setRevProId(int revProId) {
		this.revProId = revProId;
	}
	public Double getRevScore() {
		return revScore;
	}
	public void setRevScore(Double revScore) {
		this.revScore = revScore;
	}
	public String getRevContent() {
		return revContent;
	}
	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}
	public String getRevWriter() {
		return revWriter;
	}
	public void setRevWriter(String revWriter) {
		this.revWriter = revWriter;
	}
	public Date getRevDate() {
		return revDate;
	}
	public void setRevDate(Date revDate) {
		this.revDate = revDate;
	}
	public String getRevProName() {
		return revProName;
	}
	public void setRevProName(String revProName) {
		this.revProName = revProName;
	}

	public String getRevProPhoto() {
		return revProPhoto;
	}

	public void setRevProPhoto(String revProPhoto) {
		this.revProPhoto = revProPhoto;
	}
	
}
