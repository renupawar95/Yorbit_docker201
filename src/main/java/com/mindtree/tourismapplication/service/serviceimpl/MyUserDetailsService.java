package com.mindtree.tourismapplication.service.serviceimpl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.mindtree.tourismapplication.entity.Customer;
import com.mindtree.tourismapplication.entity.MyUserDetails;
import com.mindtree.tourismapplication.repository.CustomerRepository;
import com.mindtree.tourismapplication.service.TravelTourismService;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	CustomerRepository customerrepo;
	@Autowired
	TravelTourismService traveltourism;

	@Override
	public UserDetails loadUserByUsername(String userEmail) throws UsernameNotFoundException {
		Optional<Customer> customer = customerrepo.findByemailId(userEmail);
		System.out.println(userEmail);
		traveltourism.sendtoservice(customer.get());
		customer.orElseThrow(() -> new UsernameNotFoundException("Not found: " + userEmail));

		return customer.map(MyUserDetails::new).get();
	}

	
}