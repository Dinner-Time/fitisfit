package co.leaf.fit.vo;

import java.sql.Date;

public class SalesVO {
	private Date salDate;
	private int salParId;
	private int salIncome;
	private int salFee;
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
	
	
}
