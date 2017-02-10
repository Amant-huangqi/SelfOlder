package com.selforder.Model;

public class TableModel {
	
	private int id;
	private String tablenumber;
	private String dishes;
	private String amount;
	private String dishstatus;
	private String date;
	private String paymentstatus;
	private String price;
	
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
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
	public String getDishes() {
		return dishes;
	}
	public void setDishes(String dishes) {
		this.dishes = dishes;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getDishstatus() {
		return dishstatus;
	}
	public void setDishstatus(String dishstatus) {
		this.dishstatus = dishstatus;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPaymentstatus() {
		return paymentstatus;
	}
	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}
	
	

}
