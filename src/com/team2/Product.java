/**
 * 
 */
package com.team2;

/**
 * @author joybing
 *
 */
public class Product {
	private String id;
	private String name;
	private double price;
	private int number;
	
	public Product() {
		
	}
	
	public Product(String id, String name, double price, int number) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.number = number;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getNumber() {
		return number;
	}
	
	public void setNumber(int number) {
		this.number = number;
	}
	
	@Override
	public int hashCode() {
		return Integer.parseInt(this.getId()) + this.getName().hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		
		if (obj instanceof Product) {
			Product i = (Product)obj;
			if (this.getId() == i.getId()) {
				return true;
			} else {
				return false;
			}
		}
		
		return false;
	}
	
	public String toString() {
		return "Product ID : " + this.id + ", Product Name : " + this.getName() + " ";
	}
}
