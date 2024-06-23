package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
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

@Controller
public class SessionController {
	
	@Autowired
	CustomerDao dao;
	
	@Autowired
	BCryptPasswordEncoder encoder;
	
	@Autowired
	OtpService service;
	
	@GetMapping("/signup")
	public String signup() {
		return "SignUp";
	}

	@PostMapping("/signup")
	public String customerSignup(@Validated CustomerBean bean,BindingResult result, Model model) {
		model.addAttribute("data",bean);
		if(result.hasErrors()) {
			model.addAttribute("error","Please, Enter the value.");
			return "SignUp";
		}
		else {			
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
	public String authenticate(@RequestParam("email") String email,@RequestParam("password") String password,Model model) {
		boolean isauthenticate = false;
//		System.out.println(email);
//		System.out.println(password);
		CustomerBean dbCustomer = null;
		try {
//			System.out.println("success");
			 dbCustomer= dao.authenticateCustomerByEmail(email);
			String enpwd = dbCustomer.getPassword();
			if(encoder.matches(password,enpwd)) {
				isauthenticate = true;
			}
			else {
				isauthenticate = false;
			}
		} catch (Exception e) {
//			System.out.println("authenticate error");
			isauthenticate = false;
		}
		if(isauthenticate == false) {
			model.addAttribute("error","Invaild Credentials.");
			return "Login";
		}
		else {			
			if(dbCustomer.getRole().equals("ADMIN")) {
				return "redirect:/admindashboard";
			}
			else if(dbCustomer.getRole().equals("customer")) {
				return "redirect:/customerhomepage";
			}
			else {
				return "ErrorPage";
			}
		}
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "redirect:/login";
	}
	
	@GetMapping("/forgetPassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("/sendotp")
	public String sendOtp(@RequestParam("email") String email,Model model) {
		CustomerBean customerBean=null;
		try {
			customerBean = dao.authenticateCustomerByEmail(email);
		}catch(Exception e) {
			System.out.println("email not found....");
		}
		if(customerBean == null) {
			model.addAttribute("error", "Email not Found.");
			return "ForgetPassword";
		}
		else {
			//otp genrate
			String otp = service.otpGenerater();
//			System.out.println(otp);
			//user:email:otp
			//send mail  in otp
			return "VerifyOtp";
		}
	}
}