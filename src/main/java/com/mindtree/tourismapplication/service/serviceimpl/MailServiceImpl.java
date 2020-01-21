package com.mindtree.tourismapplication.service.serviceimpl;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.mindtree.tourismapplication.entity.Booking;
import com.mindtree.tourismapplication.service.MailService;

@Service
public class MailServiceImpl implements MailService {
	private JavaMailSender javaMailSender;

	public MailServiceImpl(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}

	@Override
	public void sendEmailWithAttachment(Booking booking) throws MessagingException {
		MimeMessage msg = javaMailSender.createMimeMessage();
		System.out.println("hy hii im here");
		System.out.println(booking.getBookingId()+ " "+booking.getBookingPrice());
		System.out.println(booking.getHotel().getHotelName());
		MimeMessageHelper helper = new MimeMessageHelper(msg, true);
		helper.setTo(booking.getCustomer().getEmailId());
		helper.setFrom(new InternetAddress("Kalinga"));
		helper.setSubject("Travel Booking Receipt");

		// List<Book> books=new ArrayList<Book>(issueRecord.getBooks());

		// default = text/plain
		// helper.setText("Check attachment for image!");

		// true = text/html
		helper.setText(" <fieldset>\r\n" + "        <legend>\r\n" + "            <h2 sty>\r\n"
				+ "                 Travel Booking Confirmation </h2>\r\n" + "        </legend>\r\n"
				+ "        <hr height=\"1px\">\r\n" + "        <table width=\"100%\">\r\n"
				+ "            <tbody><tr>\r\n" + "                <td colspan=\"4\">\r\n"
				+ "                    <span  style=\"color:Red;font-weight:bold;\"></span>\r\n"
				+ "                </td>\r\n" + "            </tr>\r\n" + "            <tr>\r\n"
				+ "                <td width=\"200px\">\r\n" + "                    <label>\r\n"
				+ "                        Booking Id :</label>\r\n" + "                </td>\r\n"
				+ "                <td class=\"style1\">\r\n" + "                    <span>" + booking.getBookingId()
				+ "</span>\r\n" + "                </td>\r\n" + "                <td width=\"200px\">\r\n"
				+ "                    <label>\r\n" + "                        Hotel Name :</label>\r\n"
				+ "                </td>\r\n" + "                <td>\r\n" + "                    <span >"
				+ booking.getHotel().getHotelName() + "</span>\r\n" + "                </td>\r\n"
				+ "            </tr>\r\n" + "            <tr>\r\n" + "                <td>\r\n"
				+ "                    <label>\r\n" + "                        Customer Name :</label>\r\n"
				+ "                    <span>*</span>\r\n" + "                </td>\r\n" + "                <td>\r\n"
				+ "                    <span >" + booking.getCustomer().getFirstName() + " "
				+ booking.getCustomer().getLastName() + "</span>\r\n" + "                </td>\r\n"
				+ "                <td>\r\n" + "                    <label>\r\n"
				+ "                        Check In Date :</label>\r\n" + "                    <span>*</span>\r\n"
				+ "                </td>\r\n" + "                <td>\r\n" + "                    <span >"
				+ booking.getCheckinDate() + "</span>\r\n" + "                </td>\r\n" + "                \r\n"
				+ "            </tr>\r\n" + "            <tr>\r\n" + "                <td valign=\"top\">\r\n"
				+ "                    <label>\r\n" + "                        Check Out Date :</label>\r\n"
				+ "                </td>\r\n" + "                <td valign=\"top\">\r\n"
				+ "                    <span  style=\"color:Red;font-weight:bold;\">" + booking.getCheckoutDate()
				+ "</span>\r\n" + "                </td>\r\n" + "                <td width=\"200px\">\r\n"
				+ "                    <label>\r\n" + "                        Booking Price :</label>\r\n"
				+ "                </td>\r\n" + "                <td>\r\n" + "                    <span >"
				+ booking.getBookingPrice() + "</span>\r\n" + "                </td>\r\n" + "            </tr>\r\n"
				+ "            \r\n" +
//	        		"        </tbody></table>\r\n" + 
//	        		"        \r\n" + 
//	        		"        <hr height=\"1px\">\r\n" + 
//	        		"        <table style=\"width: 100%\">\r\n" + 
//	        		"            <thead>\r\n" + 
//	        		"                <tr>\r\n" + 
//	        		"                    <th>Book Name</th>\r\n" + 
//	        		"                    <th>Genre</th>\r\n" + 
//	        		"                </tr>\r\n" + 
//	        		"            </thead>\r\n" + 
//	        		"\r\n" + 
//	        		"            <tbody>\r\n" + 
//	        		"                <tr>\r\n" + 
//	        		"                    <td>"+books.get(0).getBookTitle()+"</td>\r\n" + 
//	        		"                    <td>"+books.get(0).getGenre().getGenreName()+"</td>\r\n" + 
//	        		"                </tr>\r\n" + 
//	        		"                <tr>\r\n" + 
//	        		"                    <td>"+books.get(1).getBookTitle()+"</td>\r\n" + 
//	        		"                    <td>"+books.get(1).getGenre().getGenreName()+"</td>\r\n" + 
//	        		"                </tr>\r\n" +
//	        		"            </tbody>\r\n" + 
				"        </table>\r\n" + "    </fieldset>", true);

		// helper.addAttachment("my_photo.png", new ClassPathResource("android.png"));

		javaMailSender.send(msg);

	}

}
