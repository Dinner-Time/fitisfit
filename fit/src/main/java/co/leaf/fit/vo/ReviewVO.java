package co.leaf.fit.vo;

import java.sql.Date;

public class ReviewVO {
	
	private int revId;
	private int revProId;
	private int revScore;
	private String revContent;
	private String revWriter;
	private Date revDate;
	
	
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
	public int getRevScore() {
		return revScore;
	}
	public void setRevScore(int revScore) {
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
	
	
	
}