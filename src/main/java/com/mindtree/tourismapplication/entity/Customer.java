package com.mindtree.tourismapplication.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerId;
	private String roles;
	private boolean active;
	private String firstName;
	private String lastName;
	private Date dob;
	private float age;
	private String foodType;
	private String hoobies;
	private String gender;
	private String emailId;
	private String phoneNo;
	private String password;
	private String confirmPassword;
	@OneToOne
	@JsonIgnore
	private Booking booking;
	@OneToOne
	@JsonIgnore
	private Feedback feedback;
	@ManyToOne
	@JsonIgnore
	private Hotel hotel;
	@ManyToOne
	@JsonIgnore
	private Tourism tourism;

	public Customer() {
		super();
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public Booking getBooking() {
		return booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	public Feedback getFeedback() {
		return feedback;
	}

	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public Tourism getTourism() {
		return tourism;
	}

	public void setTourism(Tourism tourism) {
		this.tourism = tourism;
	}

	public Customer(int customerId, String roles, boolean active, String firstName, String lastName, Date dob,
			float age, String foodType, String hoobies, String gender, String emailId, String phoneNo, String password,
			String confirmPassword, Booking booking, Feedback feedback, Hotel hotel, Tourism tourism) {
		super();
		this.customerId = customerId;
		this.roles = roles;
		this.active = active;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.age = age;
		this.foodType = foodType;
		this.hoobies = hoobies;
		this.gender = gender;
		this.emailId = emailId;
		this.phoneNo = phoneNo;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.booking = booking;
		this.feedback = feedback;
		this.hotel = hotel;
		this.tourism = tourism;
	}

	
}
