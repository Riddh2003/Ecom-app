package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Bean.ProductBean;
import com.Dao.ProductDao;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CustomerController {

    @Autowired
    ProductDao productDao;

    @GetMapping("/customerhomepage")
    public String customerHomePage() {
        return "HomePage";
    }

    @GetMapping("/showproduct")
    public String showProduct(@RequestParam("productId") Integer productId, Model model) {
        ProductBean productBean = productDao.getProductById(productId);
        model.addAttribute("product", productBean);
        return "ShowProduct";
    }

}
