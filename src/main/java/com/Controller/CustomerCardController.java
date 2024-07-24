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
import com.Dao.CartDao;
import com.Dao.ProductDao;

import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerCardController {
	@Autowired
	CartDao cartDao;
	
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
		int qty = cartDao.checkqty(bean);
		if(qty ==0) {
			cartDao.addcart(bean);
		}
		else {
			bean.setQty(qty+1);
			cartDao.updateCart(bean);
		}
		return "redirect:/homelistproduct";
	}
	
	@GetMapping("/carttocart")
	public String cartToCart(@RequestParam("productId") Integer productId,HttpSession session) {
		CustomerBean customerBean = (CustomerBean)session.getAttribute("customer");
		CartBean bean = new CartBean();
		bean.setCid(customerBean.getCid());
		bean.setProductId(productId);
		int qty = cartDao.checkqty(bean);
		if(qty>=1){
			bean.setQty(qty+1);
			cartDao.updateCart(bean);
		}
		return "redirect:/mycart";
	}

	@GetMapping("/minustocart")
	public String minusToCart(@RequestParam("productId") Integer productId,HttpSession session) {
		CustomerBean customerbean = (CustomerBean)session.getAttribute("customer");
		CartBean bean = new CartBean();
		bean.setCid(customerbean.getCid());
		bean.setProductId(productId);
		int qty = cartDao.checkqty(bean);
		if(qty>=1){
			bean.setQty(qty-1);
			cartDao.updateCart(bean);
		}
		return "redirect:/mycart";
	}
	
	@GetMapping("/mycart")
	public String myCart(HttpSession session,Model model) {
		CustomerBean customer = (CustomerBean) session.getAttribute("customer");
		Integer cid = customer.getCid();
		List<ProductBean> products = cartDao.cart(cid);
		model.addAttribute("products",products);
		return "MyCart";
	}

	@GetMapping("/removefromcart")
	public String removeFromCart(@RequestParam("productId") Integer productId,HttpSession session) {
		CustomerBean customer = (CustomerBean)session.getAttribute("customer");
		Integer cid = customer.getCid();
		cartDao.removeProduct(cid,productId);
		return "redirect:/mycart";
	}

	@GetMapping("/viewcartproduct")
	public String viewCartProduct(@RequestParam("productId") Integer productId,Model model) {
		ProductBean product = cartDao.myproduct(productId);
		model.addAttribute("product",product);
		return "ViewMyCartProduct";
	}
	
}
