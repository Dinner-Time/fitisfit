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
	private int proSales2;
	private int proSales3;
	private int proMaxPeople;
	private int proPeople;
	private int proInsId;
	private String proState;
	private String proName;
	
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
	public int getProSales2() {
		return proSales2;
	}
	public void setProSales2(int proSales2) {
		this.proSales2 = proSales2;
	}
	public int getProSales3() {
		return proSales3;
	}
	public void setProSales3(int proSales3) {
		this.proSales3 = proSales3;
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
	
	
}
