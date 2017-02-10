package com.selforder.Model;

public class AppModel {
	
	private int id;
	private String sort;
	private String dishes;
	private String price;
	private String image;
	private float assess;
	private float assessfrequency;
	private int ass;
	private String star;
	private String characteristic;
	
	
	
	public float getAssess() {
		return assess;
	}
	public void setAssess(float assess) {
		this.assess = assess;
	}
	public int getAss() {
		float data = assess/(assessfrequency*5)*10;
		int e = (int) data;
		return e;
	}
	public void setAss(int ass) {
		this.ass = ass;
	}
	public String getStar() {
		float data = assess/(assessfrequency*5)*10;
		int e = (int) data;
		String a = Integer.toString(e);
		String star = null;
		switch (a) {
		case "0":
		case "1":	
		case "2": star="1star.png";
			break;
		case "3":	
		case "4":star="2star.png";
			break;
		case "5":	
		case "6":star="3star.png";
			break;
		case "7":	
		case "8":star="4star.png";
			break;
		case "9":	
		case "10":star="5star.png";
			break;
		}
		return star;
	}
	public void setStar(String star) {
		this.star = star;
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
		return "AppModel [id=" + id + ", sort=" + sort + ", dishes=" + dishes
				+ ", price=" + price + ", image=" + image + ", assess="
				+ assess + ", assessfrequency=" + assessfrequency
				+ ", characteristic=" + characteristic
				+ ", getAssessfrequency()=" + getAssessfrequency()
				+ ", getCharacteristic()=" + getCharacteristic() + ", getId()="
				+ getId() + ", getSort()=" + getSort() + ", getDishes()="
				+ getDishes() + ", getPrice()=" + getPrice() + ", getImage()="
				+ getImage() + ", getAssess()=" + getAssess() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	

}
