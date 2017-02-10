package com.selforder.Model;

import java.util.Date;

public class TurnoverModel {
	
	private int id;
	private String turnover;
	private Date date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTurnover() {
		return turnover;
	}
	public void setTurnover(String turnover) {
		this.turnover = turnover;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public TurnoverModel(int id, String turnover, Date date) {
		super();
		this.id = id;
		this.turnover = turnover;
		this.date = date;
	}
	public TurnoverModel(String turnover, Date date) {
		super();
		
		this.turnover = turnover;
		this.date = date;
	}
	@Override
	public String toString() {
		return "TurnoverModel [id=" + id + ", turnover=" + turnover + ", date="
				+ date + "]";
	}
	
	

}
