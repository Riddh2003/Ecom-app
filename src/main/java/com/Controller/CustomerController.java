package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController {
	@GetMapping("/customerhomepage")
	public String customerHomePage() {
		return "HomePage";
	}
}
