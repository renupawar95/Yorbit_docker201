package com.mindtree.tourismapplication.service;

import java.sql.Date;
import java.util.List;

import javax.mail.MessagingException;

import org.springframework.stereotype.Service;

import com.mindtree.tourismapplication.dto.TourismDto;
import com.mindtree.tourismapplication.entity.Customer;
import com.mindtree.tourismapplication.entity.Feedback;
import com.mindtree.tourismapplication.entity.Hotel;
import com.mindtree.tourismapplication.entity.State;
import com.mindtree.tourismapplication.entity.Tourism;

@Service
public interface TravelTourismService {

	public State registerStateToDatabase(State state);

	public List<State> getAllStatesFromDataBase();

	public Tourism addTourismDetails(int stateId, Tourism tourism);

	public List<TourismDto> getAllTourismPlacesByStateId(int stateId);

	public Hotel addHotelToDatabase(int tourismId, Hotel hotel);

	public Customer registerCustomer(Customer customer);

	public boolean checkingCustomerDetails(String emailId, String password);

	public List<Hotel> getAllHotelsPresentInThatTourismPlace(int stateId, int tourismId);

	public Customer bookAHotel(Customer customer, int hotelId);

	public List<Customer> updateDateOfJourneyOfCustomer(Customer customer, int bookingPrice, Date checkinDate,
			Date checkoutDate, int hId) throws MessagingException;

	public List<Feedback> viewCommentsForParticularHotel(int hotelId);

	public Customer commentsAndFeedbackForHotel(int customerId);

	public void feedbackAndRatingForHotel(Customer customer, String feedback, double rating);

	public double getTotalPrice(int hId, Date checkinDate, Date checkoutDate);

	public boolean getAllEmails(String emailId);
	
	public Customer updateCustomerDetails(int customerId);

	public void updateCheckInAndOutDates(Customer customer2, Date checkinDate, Date checkoutDate, int bookingPrice);

	public List<Customer> viewHotelBookedByUser(String name);

	public double getTotalPrice2(Customer customer2, Date checkinDate, Date checkoutDate);

	public void sendtoservice(Customer customer);

	public Customer getcustomer();


}
