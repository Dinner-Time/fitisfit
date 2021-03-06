package co.leaf.fit.vo;

import java.sql.Date;

public class ProgramVO {
	private int proId;
	private int proParId;
	private int proCatId;
	private String proPhoto;
	private String proDesc;
	private Date proSince;
	private int proPeriod;
	private int proPrice;
	private int proSale2;
	private int proSale3;
	private int proMaxPeople;
	private int proPeople;
	private int proInsId;
	private String proState;
	private String proName;
	private String catName;
	private String regName;
	private String insName;
	private int insId;
	private int revScore;
	private String revContent;
	private String revWriter;
	private Date revDate;
	private String parName;
	private int proOriId;
	private int parRegId;
	
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public int getProParId() {
		return proParId;
	}
	public void setProParId(int proParId) {
		this.proParId = proParId;
	}
	public int getProCatId() {
		return proCatId;
	}
	public void setProCatId(int catParId) {
		this.proCatId = catParId;
	}
	public String getProPhoto() {
		return proPhoto;
	}
	public void setProPhoto(String proPhoto) {
		this.proPhoto = proPhoto;
	}
	public String getProDesc() {
		return proDesc;
	}
	public void setProDesc(String proDesc) {
		this.proDesc = proDesc;
	}
	public Date getProSince() {
		return proSince;
	}
	public void setProSince(Date proSince) {
		this.proSince = proSince;
	}
	public int getProPeriod() {
		return proPeriod;
	}
	public void setProPeriod(int proPeriod) {
		this.proPeriod = proPeriod;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	public int getProSale2() {
		return proSale2;
	}
	public void setProSale2(int proSale2) {
		this.proSale2 = proSale2;
	}
	public int getProSale3() {
		return proSale3;
	}
	public void setProSale3(int proSale3) {
		this.proSale3 = proSale3;
	}
	public int getProMaxPeople() {
		return proMaxPeople;
	}
	public void setProMaxPeople(int proMaxPeople) {
		this.proMaxPeople = proMaxPeople;
	}
	public int getProPeople() {
		return proPeople;
	}
	public void setProPeople(int proPeople) {
		this.proPeople = proPeople;
	}
	public int getProInsId() {
		return proInsId;
	}
	public void setProInsId(int proInsId) {
		this.proInsId = proInsId;
	}
	public String getProState() {
		return proState;
	}
	public void setProState(String proState) {
		this.proState = proState;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public String getRegName() {
		return regName;
	}
	public void setRegName(String regName) {
		this.regName = regName;
	}
	public String getInsName() {
		return insName;
	}
	public void setInsName(String insName) {
		this.insName = insName;
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
	public String getParName() {
		return parName;
	}
	public void setParName(String parName) {
		this.parName = parName;
	}
	public int getProOriId() {
		return proOriId;
	}
	public void setProOriId(int proOriId) {
		this.proOriId = proOriId;
	}
	public int getParRegId() {
		return parRegId;
	}
	public void setParRegId(int parRegId) {
		this.parRegId = parRegId;
	}
	public int getInsId() {
		return insId;
	}
	public void setInsId(int insId) {
		this.insId = insId;
	}
	@Override
	public String toString() {
		return "ProgramVO [proId=" + proId + ", proParId=" + proParId + ", proCatId=" + proCatId + ", proPhoto="
				+ proPhoto + ", proDesc=" + proDesc + ", proSince=" + proSince + ", proPeriod=" + proPeriod
				+ ", proPrice=" + proPrice + ", proSale2=" + proSale2 + ", proSale3=" + proSale3 + ", proMaxPeople="
				+ proMaxPeople + ", proPeople=" + proPeople + ", proInsId=" + proInsId + ", proState=" + proState
				+ ", proName=" + proName + ", catName=" + catName + ", regName=" + regName + ", insName=" + insName
				+ ", insId=" + insId + ", revScore=" + revScore + ", revContent=" + revContent + ", revWriter="
				+ revWriter + ", revDate=" + revDate + ", parName=" + parName + ", proOriId=" + proOriId + ", parRegId="
				+ parRegId + ", getProId()=" + getProId() + ", getProParId()=" + getProParId() + ", getProCatId()="
				+ getProCatId() + ", getProPhoto()=" + getProPhoto() + ", getProDesc()=" + getProDesc()
				+ ", getProSince()=" + getProSince() + ", getProPeriod()=" + getProPeriod() + ", getProPrice()="
				+ getProPrice() + ", getProSale2()=" + getProSale2() + ", getProSale3()=" + getProSale3()
				+ ", getProMaxPeople()=" + getProMaxPeople() + ", getProPeople()=" + getProPeople() + ", getProInsId()="
				+ getProInsId() + ", getProState()=" + getProState() + ", getProName()=" + getProName()
				+ ", getCatName()=" + getCatName() + ", getRegName()=" + getRegName() + ", getInsName()=" + getInsName()
				+ ", getRevScore()=" + getRevScore() + ", getRevContent()=" + getRevContent() + ", getRevWriter()="
				+ getRevWriter() + ", getRevDate()=" + getRevDate() + ", getParName()=" + getParName()
				+ ", getProOriId()=" + getProOriId() + ", getParRegId()=" + getParRegId() + ", getInsId()=" + getInsId()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	
}
