package com.mindtree.tourismapplication.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mindtree.tourismapplication.dto.TourismDto;
import com.mindtree.tourismapplication.service.TravelTourismService;

@RestController
@RequestMapping("/rest")
public class AppRestController {
	
	@Autowired
	private TravelTourismService travelTourismService;
	

	@RequestMapping(value = "/loadTourismPlacesByState/{stateId}", method = RequestMethod.GET)
	public List<TourismDto> getTourisms(@PathVariable int stateId) {

		List<TourismDto> result = travelTourismService.getAllTourismPlacesByStateId(stateId);
		return result;
	}
	
	@RequestMapping(value = "/getTotalPrice/{checkinDate}/{checkoutDate}", method = RequestMethod.GET)
	public double getTotalPrice(@PathVariable Date checkinDate, @PathVariable Date checkoutDate) {

		double result = travelTourismService.getTotalPrice(TourismAppController.hId, checkinDate, checkoutDate);
		return result;
	}
	
	@RequestMapping(value = "/getAllEmails/{emailId}", method = RequestMethod.GET)
	public boolean getAllEmails(@PathVariable String emailId) {

		boolean result = travelTourismService.getAllEmails(emailId);
		return result;
	}
	
	@RequestMapping(value = "/getTotalPrice2/{checkinDate}/{checkoutDate}", method = RequestMethod.GET)
	public double getTotalPrice2(@PathVariable Date checkinDate, @PathVariable Date checkoutDate) {

		double result = travelTourismService.getTotalPrice2(TourismAppController.customer2, checkinDate, checkoutDate);
		return result;
	}

}
