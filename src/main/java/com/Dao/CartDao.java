package com.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Bean.CartBean;
import com.Bean.ProductBean;

@Repository
public class CartDao {
	@Autowired
	JdbcTemplate stmt;

	public void addcart(CartBean bean) {
		stmt.update("insert into cart(cid,productId) values(?,?)", bean.getCid(), bean.getProductId());
	}

	public List<ProductBean> cart(Integer cid) {
		return stmt.query("Select * from products join cart using(productId) where cid=?",
				new BeanPropertyRowMapper<>(ProductBean.class), new Object[] { cid });
	}

	public void removeProduct(Integer cid, Integer productId) {
		stmt.update("delete from cart where cid = ? and productId = ?", cid, productId);
	}

	public ProductBean myproduct(Integer productId) {
		ProductBean product = stmt.queryForObject("select * from products where productId= ?",
				new BeanPropertyRowMapper<>(ProductBean.class), new Object[]{productId});
		return product;
	}
}
