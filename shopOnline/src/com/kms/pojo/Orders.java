package com.kms.pojo;

import java.util.Date;

public class Orders {
	private int orders_id;
	private int user_id;
	private Date orders_date;
	private double orders_price;
	private int orders_status;
	public int getOrders_status() {
		return orders_status;
	}
	public void setOrders_status(int orders_status) {
		this.orders_status = orders_status;
	}
	public int getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(int orders_id) {
		this.orders_id = orders_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getOrders_date() {
		return orders_date;
	}
	public void setOrders_date(Date orders_date) {
		this.orders_date = orders_date;
	}
	public double getOrders_price() {
		return orders_price;
	}
	public void setOrders_price(double orders_price) {
		this.orders_price = orders_price;
	}
	
}
