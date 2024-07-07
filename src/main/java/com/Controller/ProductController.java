package com.Controller;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.Bean.ProductBean;
import com.Dao.ProductDao;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	
	@GetMapping("/newproduct")
	public String newProduct() {
		return "NewProduct";
	}
	
	@PostMapping("/saveproduct")
	public String saveProduct(ProductBean productBean) {
		String productImagePath = "D:\\SpringBoot\\Ecom-app\\src\\main\\webapp\\Image\\Products\\";
		try {
			File file = new File(productImagePath,productBean.getProductImage().getOriginalFilename());
			byte b[] = productBean.getProductImage().getBytes();
			
			FileUtils.writeByteArrayToFile(file, b);
			
			productBean.setProductImagePath("Image/Products/"+ productBean.getProductImage().getOriginalFilename());
			productDao.addproduct(productBean);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/products";
	}
	
	@GetMapping("/products")
	public String listProducts(Model model) {
		List<ProductBean> products = productDao.getAllProduct();
		model.addAttribute("products",products);
		return "ListProduct";
	}
	
	@GetMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("productId") Integer productId) {
		productDao.deleteproduct(productId);
		return "redirect:/products";
	}
	@GetMapping("/viewproduct")
	public String viewProduct(@RequestParam("productId") Integer productId,Model model) {
		ProductBean productBean = productDao.getProductById(productId);
		model.addAttribute("product", productBean);
		return "ViewProduct";
	}
	
}
