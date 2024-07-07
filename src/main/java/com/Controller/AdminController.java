package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping("/admindashboard")
	public String adminDashBoard() {
		return "AdminDashBoard";
	}
	
	@GetMapping("/product")
	public String product(){
		return "redirect:/newproduct";
	}
}
