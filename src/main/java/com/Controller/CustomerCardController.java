package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Bean.CartBean;
import com.Bean.CustomerBean;
import com.Bean.ProductBean;
import com.Dao.CardDao;
import com.Dao.ProductDao;

import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerCardController {
	@Autowired
	CardDao cardDao;
	
	@Autowired
	ProductDao productDao;

	@GetMapping("/homelistproduct")
	public String listofProduct(Model model) {
		List<ProductBean> products = productDao.getAllProduct();
		model.addAttribute("products",products);
		return "HomeListProduct";
	}
	@GetMapping("/addtocart")
	public String addToCart(@RequestParam("productId") Integer productId,HttpSession session) {
		CustomerBean customerBean = (CustomerBean)session.getAttribute("customer");
		CartBean bean = new CartBean();
		bean.setCid(customerBean.getCid());
		bean.setProductId(productId);
		cardDao.addcart(bean);
		return "redirect:/homelistproduct";
	}
	
	@GetMapping("/mycart")
	public String mycart(HttpSession session,Model model) {
		CustomerBean customer = (CustomerBean) session.getAttribute("customer");
		Integer cid = customer.getCid();
		List<ProductBean> products = cardDao.cart(cid);
		model.addAttribute("products",products);
		return "MyCart";
	}
}
