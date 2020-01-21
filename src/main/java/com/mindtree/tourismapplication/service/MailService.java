package com.mindtree.tourismapplication.service;

import javax.mail.MessagingException;

import org.springframework.stereotype.Service;

import com.mindtree.tourismapplication.entity.Booking;

@Service
public interface MailService {
	public void sendEmailWithAttachment(Booking booking) throws MessagingException;
}
