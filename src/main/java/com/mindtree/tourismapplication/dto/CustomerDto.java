package com.mindtree.tourismapplication.dto;

import java.sql.Date;

public class CustomerDto {
	private int customerId;
	private String firstName;
	private String lastName;
	private Date dob;
	private float age;
	private String foodType;
	private String hoobies;
	private String gender;
	private String emailId;
	private String phoneNo;
	private BookingDto bookingDto;
	private FeedbackDto feedbackDto;
	private HotelDto hotelDto;
	private TourismDto tourismDto;

	public CustomerDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CustomerDto(int customerId, String firstName, String lastName, Date dob, float age, String foodType,
			String hoobies, String gender, String emailId, String phoneNo, BookingDto bookingDto,
			FeedbackDto feedbackDto, HotelDto hotelDto, TourismDto tourismDto) {
		super();
		this.customerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.age = age;
		this.foodType = foodType;
		this.hoobies = hoobies;
		this.gender = gender;
		this.emailId = emailId;
		this.phoneNo = phoneNo;
		this.bookingDto = bookingDto;
		this.feedbackDto = feedbackDto;
		this.hotelDto = hotelDto;
		this.tourismDto = tourismDto;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public float getAge() {
		return age;
	}

	public void setAge(float age) {
		this.age = age;
	}

	public String getFoodType() {
		return foodType;
	}

	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}

	public String getHoobies() {
		return hoobies;
	}

	public void setHoobies(String hoobies) {
		this.hoobies = hoobies;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public BookingDto getBookingDto() {
		return bookingDto;
	}

	public void setBookingDto(BookingDto bookingDto) {
		this.bookingDto = bookingDto;
	}

	public FeedbackDto getFeedbackDto() {
		return feedbackDto;
	}

	public void setFeedbackDto(FeedbackDto feedbackDto) {
		this.feedbackDto = feedbackDto;
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
