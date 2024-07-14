package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.Bean.CustomerBean;
import com.Dao.CustomerDao;
import com.Service.OtpService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {

	@Autowired
	JavaMailSender mailSender;

	@Autowired
	CustomerDao dao;

	@Autowired
	BCryptPasswordEncoder encoder;

	@Autowired
	OtpService service;

	@GetMapping("/")
	public String welcomePage() {
		return "WelcomePage";
	}

	@GetMapping("/signup")
	public String signup() {
		return "SignUp";
	}

	@PostMapping("/signup")
	public String customerSignup(@Validated CustomerBean bean, BindingResult result, Model model) {
		model.addAttribute("data", bean);
		if (result.hasErrors()) {
			model.addAttribute("error", "Please, Enter the value.");
			return "SignUp";
		} else {
			bean.setPassword(encoder.encode(bean.getPassword()));
			dao.insertCustomer(bean);
			return "Login";
		}
	}

	@GetMapping("/login")
	public String login() {
		return "Login";
	}

	@PostMapping("/authenticate")
	public String authenticate(@RequestParam("email") String email, @RequestParam("password") String password,
			Model model,HttpSession session) {
		boolean isauthenticate = false;
		// System.out.println(email);
		// System.out.println(password);
		CustomerBean dbCustomer = null;
		try {
			// System.out.println("success");
			dbCustomer = dao.authenticateCustomerByEmail(email);
			String enpwd = dbCustomer.getPassword();
			if (encoder.matches(password, enpwd)==true) {
				isauthenticate = true;
				session.setAttribute("customer",dbCustomer);
			} else {
				isauthenticate = false;
			}
		} catch (Exception e) {
			// System.out.println("authenticate error");
			isauthenticate = false;
		}
		if (isauthenticate == false) {
			model.addAttribute("error", "Invaild Credentials.");
			return "Login";
		} else {
			if (dbCustomer.getRole().equals("ADMIN")) {
				return "redirect:/admindashboard";
			} else if (dbCustomer.getRole().equals("customer")) {
				return "redirect:/customerhomepage";
			} else {
				return "ErrorPage";
			}
		}
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

	@GetMapping("/forgetPassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}

	@PostMapping("/sendotp")
	public String sendOtp(@RequestParam("email") String email, Model model) {
		CustomerBean customerBean = null;
		try {
			customerBean = dao.authenticateCustomerByEmail(email);
		} catch (Exception e) {
			System.out.println("email not found....");
		}
		if (customerBean == null) {
			model.addAttribute("error", "Email not Found.");
			return "ForgetPassword";
		} else {
			// otp genrate
			String otp = service.otpGenerater();
			System.out.println(otp);
			// user:email:otp
			// send mail in otp
			SimpleMailMessage message = new SimpleMailMessage();
			message.setFrom("riddhmodi2003@gmail.com");
			message.setTo(email);
			message.setSubject("OTP SEND BY ECOMAPP");
			message.setText("OTP is : " + otp);

			mailSender.send(message);
			dao.updateotp(email, otp);
			return "VerifyOtp";
		}
	}

	@PostMapping("/updatepassword")
	public String updatePassword(CustomerBean customerBean, Model model) {
		boolean status = dao.verifyotp(customerBean.getEmail(), customerBean.getOtp());
		if (status == true) {
			String password = encoder.encode(customerBean.getPassword());
			dao.updatePassowrd(customerBean.getEmail(), password);
			dao.updateotp(customerBean.getEmail(), "");
			return "redirect:/login";
		} else {
			model.addAttribute("error","Data I	nvaild.");
			return "VerifyOtp";
		}
	}
}