package com.mindtree.tourismapplication.controller;

import java.sql.Date;
import java.util.List;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.tourismapplication.entity.Customer;
import com.mindtree.tourismapplication.entity.Feedback;
import com.mindtree.tourismapplication.entity.Hotel;
import com.mindtree.tourismapplication.entity.State;
import com.mindtree.tourismapplication.entity.Tourism;
import com.mindtree.tourismapplication.service.TravelTourismService;

@Controller
public class TourismAppController {

	@Autowired
	private TravelTourismService travelTourismService;
	static String name = "";
	static Customer customer = new Customer();
	static Customer customer2 = new Customer();

	static int hId = 0;

	@GetMapping("/register")
	public String index0() {
		return "index";
	}

	@GetMapping("/form")
	public String index1() {
		return "state";
	}

	@RequestMapping("/addState")
	public String addCustomerDetails(@ModelAttribute("state") State state) {
		travelTourismService.registerStateToDatabase(state);
		return "index";
	}

	@GetMapping("/form1")
	public String index1(Model model) {
		List<State> states = travelTourismService.getAllStatesFromDataBase();
		model.addAttribute("states", states);
		return "tourism";
	}

	@RequestMapping("/addTourism")
	public String addDebitCardDetailsToFlight(@RequestParam("stateId") int stateId,
			@ModelAttribute("tourism") Tourism tourism, Model model) {

		travelTourismService.addTourismDetails(stateId, tourism);
		return "index";
	}

	@GetMapping("/form2")
	private String index(Model model) {
		List<State> states = travelTourismService.getAllStatesFromDataBase();
		model.addAttribute("states", states);
		return "hotel";
	}

	@RequestMapping("/addHotel")
	public String buyingAVechile(@RequestParam("tourismId") int tourismId, @ModelAttribute("hotel") Hotel hotel) {
		travelTourismService.addHotelToDatabase(tourismId, hotel);
		return "index";

	}

	@GetMapping("/")
	public String index11(Model model) {
		List<State> states = travelTourismService.getAllStatesFromDataBase();
		model.addAttribute("states", states);
		return "customerpage";
	}

	@GetMapping("/form3")
	public String index() {            
		return "register1";
	}

	@PostMapping("/addCustomer")
	public String addCustomerDetails(Customer customer) {
		travelTourismService.registerCustomer(customer);

		return "register1";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("errorMsg", "Your username and password are invalid.");

		if (logout != null)
			model.addAttribute("msg", "You have been logged out successfully.");

		return "login";
	}

//	@RequestMapping("/senduserlogin")
//	public String checkCustomer(String emailId, String password, Model model) {
//		name = emailId;
//		boolean admin2 = travelTourismService.checkingCustomerDetails(emailId, password);
//		if (admin2 == true) {
//			List<State> states = travelTourismService.getAllStatesFromDataBase();
//			model.addAttribute("states", states);
//			return "customerpage";
//			/* return "booking"; */
//		} else {
//			model.addAttribute("message", "invalid password or email");
//			return "customerpage";
//		}
//
//	}

	/*
	 * @GetMapping("/form5") public String index5(Model model) { List<State> states
	 * = travelTourismService.getAllStatesFromDataBase();
	 * model.addAttribute("states", states); return "customerpage"; }
	 */

	@RequestMapping("/loginpage2")
	public String index4(Model model) {
		List<State> states = travelTourismService.getAllStatesFromDataBase();
		model.addAttribute("states", states);
		return "customerpage";
	}

	@RequestMapping("/getHotels")
	public String getAllHotelsForParticulatTourism(@RequestParam("stateId") int stateId,
			@RequestParam("tourismId") int tourismId, Model model) {
		List<State> states = travelTourismService.getAllStatesFromDataBase();
		model.addAttribute("states", states);
		List<Hotel> hotels = travelTourismService.getAllHotelsPresentInThatTourismPlace(stateId, tourismId);
		model.addAttribute("hotels", hotels);
		return "customerpage";

	}

	@GetMapping("/book/{hotelId}")
	public String bookingHotelForCustomer(Model model, @PathVariable int hotelId) {
		hId = hotelId;
		customer = travelTourismService.bookAHotel(travelTourismService.getcustomer(), hotelId);
		return "bookingpage";
	}

	@RequestMapping("/bookahotel")
	public String bookAHotelForCustomer(@RequestParam("checkinDate") Date checkinDate,
			@RequestParam("checkoutDate") Date checkoutDate, @RequestParam("bookingPrice") int bookingPrice,
			Model model) throws MessagingException {
		Customer custom = travelTourismService.getcustomer();
		List<Customer> customers = travelTourismService.updateDateOfJourneyOfCustomer(custom, bookingPrice,
				checkinDate, checkoutDate, hId);
		
		model.addAttribute("customers", customers);
		return "bookingpage";
	}

	@GetMapping("/view/{hotelId}")
	public String viewCommentsOfThatHotel(Model model, @PathVariable int hotelId) {
		List<Feedback> feedbacks = travelTourismService.viewCommentsForParticularHotel(hotelId);
		model.addAttribute("feedbacks", feedbacks);
		return "viewcomments";
	}

	@GetMapping("/comments/{customerId}")
	public String commentsForHotelByCustomer(Model model, @PathVariable int customerId) {
		customer = travelTourismService.commentsAndFeedbackForHotel(customerId);
		return "feedback";
	}

	@RequestMapping("/feedbackforhotel")
	public String FeedbackForHotel(String feedback, double rating) {
		travelTourismService.feedbackAndRatingForHotel(customer, feedback, rating);
		return "customerpage";
	}

	@GetMapping("/update/{customerId}")
	public String updateBookingDetails(Model model, @PathVariable int customerId) {
		Customer customer1 = travelTourismService.updateCustomerDetails(customerId);
		customer2 = customer1;
		model.addAttribute("customer", customer);
		return "update";
	}

	@RequestMapping("/updatedate")
	public String updateCheckInAndOutDates(@RequestParam("checkinDate") Date checkinDate,
			@RequestParam("checkoutDate") Date checkoutDate, @RequestParam("bookingPrice") int bookingPrice) {
		travelTourismService.updateCheckInAndOutDates(customer2, checkinDate, checkoutDate, bookingPrice);
		return "customerpage";
	}

	@GetMapping("/viewdata")
	public String viewHotelDataBookedByUser(Model model) {
		List<Customer> customers = travelTourismService.viewHotelBookedByUser(travelTourismService.getcustomer().getEmailId());
		model.addAttribute("customers", customers);
		return "view";
	}

	@GetMapping("/viewProfile")
	public String viewProfile(Model model) {
		Customer custom = travelTourismService.getcustomer();
		model.addAttribute("customer", custom);
		return "profile";
	}

}
