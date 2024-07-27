package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Bean.PaymentBean;
import com.Service.PaymentService;

@Controller
public class PaymentController {
	
	@PostMapping("/buy")
	public String buyitems() {
		return "PaymentDetails";
	}
	
	@PostMapping("/pay")
	public String payment(@RequestParam("total") String total,PaymentBean paymentBean) {
		paymentBean.setAmout(total);
		PaymentService.run(paymentBean);
		return "PaymentDetails";
	}
}
