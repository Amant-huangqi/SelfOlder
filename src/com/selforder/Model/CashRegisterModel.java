package com.selforder.Model;

public class CashRegisterModel {
	
	private int id;
	private String tablenumber;
	private String paymentstatus;
	private String total;
	private String invoice;
	
	
	
	public String getInvoice() {
		return invoice;
	}
	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTablenumber() {
		return tablenumber;
	}
	public void setTablenumber(String tablenumber) {
		this.tablenumber = tablenumber;
	}
	public String getPaymentstatus() {
		return paymentstatus;
	}
	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "CashRegisterModel [tablenumber=" + tablenumber
				+ ", paymentstatus=" + paymentstatus + ", total=" + total + "]";
	}
	
	

}
