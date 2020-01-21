package com.mindtree.tourismapplication.dto;

import java.util.List;

public class HotelDto {
	private int hotelId;
	private String hotelName;
	private double price;
	private double avgRating;
	private List<FeedbackDto> feedbackDtos;
	private List<CustomerDto> customerDtos;
	private TourismDto tourismDto;
	private List<BookingDto> bookingDtos;

	public HotelDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HotelDto(int hotelId, String hotelName, double price, double avgRating, List<FeedbackDto> feedbackDtos,
			List<CustomerDto> customerDtos, TourismDto tourismDto, List<BookingDto> bookingDtos) {
		super();
		this.hotelId = hotelId;
		this.hotelName = hotelName;
		this.price = price;
		this.avgRating = avgRating;
		this.feedbackDtos = feedbackDtos;
		this.customerDtos = customerDtos;
		this.tourismDto = tourismDto;
		this.bookingDtos = bookingDtos;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getAvgRating() {
		return avgRating;
	}

	public void setAvgRating(double avgRating) {
		this.avgRating = avgRating;
	}

	public List<FeedbackDto> getFeedbackDtos() {
		return feedbackDtos;
	}

	public void setFeedbackDtos(List<FeedbackDto> feedbackDtos) {
		this.feedbackDtos = feedbackDtos;
	}

	public List<CustomerDto> getCustomerDtos() {
		return customerDtos;
	}

	public void setCustomerDtos(List<CustomerDto> customerDtos) {
		this.customerDtos = customerDtos;
	}

	public TourismDto getTourismDto() {
		return tourismDto;
	}

	public void setTourismDto(TourismDto tourismDto) {
		this.tourismDto = tourismDto;
	}

	public List<BookingDto> getBookingDtos() {
		return bookingDtos;
	}

	public void setBookingDtos(List<BookingDto> bookingDtos) {
		this.bookingDtos = bookingDtos;
	}

}
