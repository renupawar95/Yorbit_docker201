package com.mindtree.tourismapplication.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingId;
	private Date checkinDate;
	private Date checkoutDate;
	private long bookingPrice;

	@OneToOne
	private Customer customer;
	@ManyToOne
	private Hotel hotel;

	public Booking(int bookingId, Date checkinDate, Date checkoutDate, long bookingPrice, Customer customer,
			Hotel hotel) {
		super();
		this.bookingId = bookingId;
		this.checkinDate = checkinDate;
		this.checkoutDate = checkoutDate;
		this.bookingPrice = bookingPrice;
		this.customer = customer;
		this.hotel = hotel;
	}

	public Booking() {
		super();
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public Date getCheckinDate() {
		return checkinDate;
	}

	public void setCheckinDate(Date checkinDate) {
		this.checkinDate = checkinDate;
	}

	public Date getCheckoutDate() {
		return checkoutDate;
	}

	public void setCheckoutDate(Date checkoutDate) {
		this.checkoutDate = checkoutDate;
	}

	public long getBookingPrice() {
		return bookingPrice;
	}

	public void setBookingPrice(long bookingPrice) {
		this.bookingPrice = bookingPrice;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

}
