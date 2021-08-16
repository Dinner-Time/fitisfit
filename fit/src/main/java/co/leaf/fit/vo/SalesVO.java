package co.leaf.fit.vo;

import java.sql.Date;

public class SalesVO {
	private Date salDate;
	private int salParId;
	private int salIncome;
	private int salFee;
	private String parName;
	private String salRegName;
	public Date getSalDate() {
		return salDate;
	}
	public void setSalDate(Date salDate) {
		this.salDate = salDate;
	}
	public int getSalParId() {
		return salParId;
	}
	public void setSalParId(int salParId) {
		this.salParId = salParId;
	}
	public int getSalIncome() {
		return salIncome;
	}
	public void setSalIncome(int salIncome) {
		this.salIncome = salIncome;
	}
	public int getSalFee() {
		return salFee;
	}
	public void setSalFee(int salFee) {
		this.salFee = salFee;
	}
	public String getParName() {
		return parName;
	}
	public void setParName(String parName) {
		this.parName = parName;
	}
	public String getSalRegName() {
		return salRegName;
	}
	public void setSalRegName(String salRegName) {
		this.salRegName = salRegName;
	}
	
}
