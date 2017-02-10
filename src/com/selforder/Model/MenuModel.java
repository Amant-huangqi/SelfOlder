package com.selforder.Model;

public class MenuModel {
	
	private int id;
	private String sort;
	private String dishes;
	private String price;
	private String image;
	private String characteristic;
	private float assess;
	private float assessfrequency;
	private int ass;
	private String addToday;
	
	
	
	public String getAddToday() {
		return addToday;
	}
	public void setAddToday(String addToday) {
		this.addToday = addToday;
	}
	public int getAss() {
		float data = assess/(assessfrequency*5)*10;
		int e = (int) data;
		return e;
	}
	public void setAss(int ass) {
		this.ass = ass;
	}
	public float getAssess() {
		return assess;
	}
	public void setAssess(float assess) {
		this.assess = assess;
	}
	public float getAssessfrequency() {
		return assessfrequency;
	}
	public void setAssessfrequency(float assessfrequency) {
		this.assessfrequency = assessfrequency;
	}
	public String getCharacteristic() {
		return characteristic;
	}
	public void setCharacteristic(String characteristic) {
		this.characteristic = characteristic;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getDishes() {
		return dishes;
	}
	public void setDishes(String dishes) {
		this.dishes = dishes;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "MenuModel [id=" + id + ", sort=" + sort + ", dishes=" + dishes
				+ ", price=" + price + ", image=" + image + "]";
	}
	public MenuModel(int id, String sort, String dishes, String price,
			String image, String characteristic) {
		super();
		this.id = id;
		this.sort = sort;
		this.dishes = dishes;
		this.price = price;
		this.image = image;
		this.characteristic = characteristic;
	}
	
	public MenuModel() {
		super();
	}

}
