package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Bean.CustomerBean;

import jakarta.servlet.http.HttpSession;

@Controller
public class CardController {
	@GetMapping("/addtocart")
	public String addToCart(@RequestParam("productId") Integer productId,HttpSession session) {
		CustomerBean customerBean = (CustomerBean)session.getAttribute("customer");
		return "redirect:/customerhomepage";
	}
}
