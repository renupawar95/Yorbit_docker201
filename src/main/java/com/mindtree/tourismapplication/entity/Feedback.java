package com.mindtree.tourismapplication.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Feedback {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feedbackId;
	private String feedback;
	private double rating;
	@OneToOne
	private Customer customer;

	@ManyToOne
	private Hotel hotel;
	@ManyToOne
	private Tourism tourism;
	public Feedback(int feedbackId, String feedback, double rating, Customer customer, Hotel hotel, Tourism tourism) {
		super();
		this.feedbackId = feedbackId;
		this.feedback = feedback;
		this.rating = rating;
		this.customer = customer;
		this.hotel = hotel;
		this.tourism = tourism;
	}
	public Feedback() {
		super();
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
	public Tourism getTourism() {
		return tourism;
	}
	public void setTourism(Tourism tourism) {
		this.tourism = tourism;
	}

	
}
