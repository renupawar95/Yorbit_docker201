package com.mindtree.tourismapplication.dto;

public class FeedbackDto {
	private int feedbackId;
	private String feedback;
	private double rating;
	private CustomerDto customerDto;
	private HotelDto hotelDto;
	private TourismDto tourismDto;

	public FeedbackDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FeedbackDto(int feedbackId, String feedback, double rating, CustomerDto customerDto, HotelDto hotelDto,
			TourismDto tourismDto) {
		super();
		this.feedbackId = feedbackId;
		this.feedback = feedback;
		this.rating = rating;
		this.customerDto = customerDto;
		this.hotelDto = hotelDto;
		this.tourismDto = tourismDto;
	}

	public int getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
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

	public TourismDto getTourismDto() {
		return tourismDto;
	}

	public void setTourismDto(TourismDto tourismDto) {
		this.tourismDto = tourismDto;
	}

}
