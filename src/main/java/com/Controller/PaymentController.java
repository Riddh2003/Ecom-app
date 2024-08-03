package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Bean.PaymentBean;
import com.Service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;
	
	@PostMapping("/buy")
	public String buyitems() {
		return "PaymentDetails";
	}
	
	@PostMapping("/pay")
	public String payment(@RequestParam("amount") String amount,PaymentBean paymentBean) {
		paymentBean.setAmount(amount);
		paymentService.run(paymentBean);
		return "PaymentDetails";
	}
}
