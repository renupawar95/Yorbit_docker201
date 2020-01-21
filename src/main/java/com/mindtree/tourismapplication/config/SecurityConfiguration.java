package com.mindtree.tourismapplication.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Autowired
	UserDetailsService userDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		auth.userDetailsService(userDetailsService);

//		auth.inMemoryAuthentication().withUser("user").password("pass").roles("user").and().withUser("admin")
//				.password("pass").roles("admin");
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
	}

	@Bean
	public PasswordEncoder getpassencoder() {
		return NoOpPasswordEncoder.getInstance();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests()
				
		        .antMatchers("/").hasAnyRole("USER","ADMIN")
				.antMatchers("/senduserlogin").hasAnyRole("ADMIN","USER")
				.antMatchers("/loginpage2").hasAnyRole("ADMIN", "User")
				
				.antMatchers("/book/{hotelId}").hasAnyRole("ADMIN","USER")
				.antMatchers("/bookahotel").hasAnyRole("ADMIN","USER")
				.antMatchers("/view/{hotelId}").hasAnyRole("ADMIN","USER")
				.antMatchers("/comments/{customerId}").hasAnyRole("ADMIN","USER")
				.antMatchers("/register").hasRole("ADMIN")
				.antMatchers("/form").hasRole("ADMIN")
				.antMatchers("/form1").hasRole("ADMIN")
				.antMatchers("/form2").hasRole("ADMIN").antMatchers("/form3").permitAll()
				.antMatchers("/addHotel").hasRole("ADMIN")
				.antMatchers("/addState").hasRole("ADMIN")
				.antMatchers("/addTourism").hasRole("ADMIN")
				.antMatchers("/addCustomer").permitAll()
				.antMatchers("/loginpage2").hasAnyRole("ADMIN","USER")
				.antMatchers("/feedbackforhotel").hasAnyRole("ADMIN","USER")
				.antMatchers("/update/{customerId}").hasAnyRole("ADMIN","USER")
				.antMatchers("/updatedate").hasAnyRole("ADMIN","USER")
				.antMatchers("/viewdata").hasAnyRole("ADMIN","USER")
				.antMatchers("/viewProfile").hasAnyRole("ADMIN","USER")
				.antMatchers("/getHotels").hasAnyRole("ADMIN","USER")
				.anyRequest().authenticated().and().formLogin().loginPage("/login").permitAll().and().logout()
				.permitAll();

	}

//		http.authorizeRequests().antMatchers("/admin").hasRole("admin").antMatchers("/sendalldetail")
//				.hasAnyRole("admin")
//
//				.antMatchers("/user").hasAnyRole("user", "admin").antMatchers("/").permitAll().and().formLogin();
}
