package com.mindtree.tourismapplication.dto;

import java.sql.Date;

public class BookingDto {

	private int bookingId;
	private Date checkinDate;
	private Date checkoutDate;
	private long bookingPrice;
	private CustomerDto customerDto;

	private HotelDto hotelDto;

	public BookingDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookingDto(int bookingId, Date checkinDate, Date checkoutDate, long bookingPrice, CustomerDto customerDto,
			HotelDto hotelDto) {
		super();
		this.bookingId = bookingId;
		this.checkinDate = checkinDate;
		this.checkoutDate = checkoutDate;
		this.bookingPrice = bookingPrice;
		this.customerDto = customerDto;
		this.hotelDto = hotelDto;
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

	public CustomerDto getCustomerDto() {
		return customerDto;
	}

	public void setCustomerDto(CustomerDto customerDto) {
		this.customerDto = customerDto;
	}

	public HotelDto getHotelDto() {
		return hotelDto;
	}

	public void setHotelDto(HotelDto hotelDto) {
		this.hotelDto = hotelDto;
	}

}
