package com.selforder.Model;

import java.util.Date;

public class KitchenModel {
	
	private String tablenumber;
	private String orderingNumber;
	private String carryOutNumber;
	private Date time;
	
	
	
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getTablenumber() {
		return tablenumber;
	}
	public void setTablenumber(String tablenumber) {
		this.tablenumber = tablenumber;
	}
	public String getOrderingNumber() {
		return orderingNumber;
	}
	public void setOrderingNumber(String orderingNumber) {
		this.orderingNumber = orderingNumber;
	}
	public String getCarryOutNumber() {
		return carryOutNumber;
	}
	public void setCarryOutNumber(String carryOutNumber) {
		this.carryOutNumber = carryOutNumber;
	}
	public KitchenModel(String tablenumber, String orderingNumber,
			String carryOutNumber) {
		super();
		this.tablenumber = tablenumber;
		this.orderingNumber = orderingNumber;
		this.carryOutNumber = carryOutNumber;
	}
	
	

}
