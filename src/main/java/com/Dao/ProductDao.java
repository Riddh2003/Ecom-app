package com.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.Bean.ProductBean;

@Repository
public class ProductDao {

	@Autowired
	JdbcTemplate stmt;

	public void addproduct(ProductBean productBean) {
		stmt.update("insert into products (productName,category,price,qty,productImagePath) values(?,?,?,?,?)",
				productBean.getProductName(), productBean.getCategory(), productBean.getPrice(), productBean.getQty(),
				productBean.getProductImagePath());
	}

	public List<ProductBean> getAllProduct() {
		List<ProductBean> list = stmt.query("select * from products", new BeanPropertyRowMapper<>(ProductBean.class));
		return list;
	}

	public ProductBean getProductById(Integer productId) {
		ProductBean productBean = stmt.queryForObject("select * from products where productId = ?",
				new BeanPropertyRowMapper<>(ProductBean.class), new Object[]{productId});
		return productBean;
	}

	public void deleteproduct(Integer productId) {
		// TODO Auto-generated method stub
		stmt.update("delete from products where productId = ?",productId);
	}
}
