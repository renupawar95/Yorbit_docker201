package com.mindtree.tourismapplication.dto;

import java.util.List;

public class TourismDto {
	private int tourismId;
	private String tourismName;
	private StateDto stateDto;
	private List<HotelDto> hotelDtos;
	private List<FeedbackDto> feedbackDtos;
	private List<CustomerDto> customerDtos;

	public TourismDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TourismDto(int tourismId, String tourismName, StateDto stateDto, List<HotelDto> hotelDtos,
			List<FeedbackDto> feedbackDtos, List<CustomerDto> customerDtos) {
		super();
		this.tourismId = tourismId;
		this.tourismName = tourismName;
		this.stateDto = stateDto;
		this.hotelDtos = hotelDtos;
		this.feedbackDtos = feedbackDtos;
		this.customerDtos = customerDtos;
	}

	public int getTourismId() {
		return tourismId;
	}

	public void setTourismId(int tourismId) {
		this.tourismId = tourismId;
	}

	public String getTourismName() {
		return tourismName;
	}

	public void setTourismName(String tourismName) {
		this.tourismName = tourismName;
	}

	public StateDto getStateDto() {
		return stateDto;
	}

	public void setStateDto(StateDto stateDto) {
		this.stateDto = stateDto;
	}

	public List<HotelDto> getHotelDtos() {
		return hotelDtos;
	}

	public void setHotelDtos(List<HotelDto> hotelDtos) {
		this.hotelDtos = hotelDtos;
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

	@Override
	public String toString() {
		return "TourismDto [tourismId=" + tourismId + ", tourismName=" + tourismName + "]";
	}

	
	

}
