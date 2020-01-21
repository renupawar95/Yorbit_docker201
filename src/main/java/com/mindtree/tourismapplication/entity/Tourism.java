package com.mindtree.tourismapplication.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Tourism {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int tourismId;
	private String tourismName;

	@ManyToOne
	private State state;
	@OneToMany(mappedBy = "tourism")
	private List<Hotel> hotels;
	@OneToMany(mappedBy = "tourism")
	private List<Feedback> feedbacks;
	@OneToMany(mappedBy = "tourism")
	private List<Customer> customers;

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

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public List<Hotel> getHotels() {
		return hotels;
	}

	public void setHotels(List<Hotel> hotels) {
		this.hotels = hotels;
	}

	public List<Feedback> getFeedbacks() {
		return feedbacks;
	}

	public void setFeedbacks(List<Feedback> feedbacks) {
		this.feedbacks = feedbacks;
	}

	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}

	public Tourism(int tourismId, String tourismName, State state, List<Hotel> hotels, List<Feedback> feedbacks,
			List<Customer> customers) {
		super();
		this.tourismId = tourismId;
		this.tourismName = tourismName;
		this.state = state;
		this.hotels = hotels;
		this.feedbacks = feedbacks;
		this.customers = customers;
	}

	public Tourism() {
		super();
	}

}