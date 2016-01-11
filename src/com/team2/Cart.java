/**
 * 
 */
package com.team2;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author joybing
 *
 */
public class Cart {
	
	private HashMap<Product, Integer> items;
	
	private double totalPrice;
	
	public Cart() {
		items = new HashMap<Product, Integer>();
		totalPrice = 0.0;
	}
	
	public HashMap<Product, Integer> getItems() {
		return items;
	}
	
	public void setItems(HashMap<Product, Integer> items) {
		this.items = items;
	}
	
	public double getTotalPrice() {
		return totalPrice;
	}
	
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public boolean addItemsInCart(Product item, int number) {
		if (items.containsKey(item)) {
			items.put(item, items.get(item) + number);
		} else {
			items.put(item, number);
		}
		calTotalPrice();
		return true;
	}
	
	public boolean removeItemsFromCart(Product item) {
		items.remove(item);
		calTotalPrice();
		return true;
	}
	
	public double calTotalPrice() {
		double sum = 0.0;
		Set<Product> keys = items.keySet(); 
		Iterator<Product> it = keys.iterator(); 
		while (it.hasNext())
	    {
	    	Product i = it.next();
	    	sum += i.getPrice()* items.get(i);
	    }
	    this.setTotalPrice(sum); 
	    return this.getTotalPrice();
	}
	
	public static void main(String[] args) {
		
		Product i1 = new Product(1,"AAA",200,500);
		Product i2 = new Product(2,"BBB",300,500);
		Product i3 = new Product(1,"AAA",200,500);
		
		Cart c = new Cart();
		c.addItemsInCart(i1, 1);
		c.addItemsInCart(i2, 2);
		c.addItemsInCart(i3, 3);
		Set<Map.Entry<Product, Integer>> items= c.getItems().entrySet();
		for(Map.Entry<Product, Integer> obj:items)
		{
			System.out.println(obj);
		}
		System.out.println("TotalPrice: "+c.getTotalPrice());
	}

	
}
