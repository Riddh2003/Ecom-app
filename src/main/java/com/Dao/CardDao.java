package com.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Bean.CartBean;
import com.Bean.ProductBean;

@Repository
public class CardDao {
	@Autowired
	JdbcTemplate stmt;

	public void addcart(CartBean bean) {
		stmt.update("insert into cart(cid,productId) values(?,?)", bean.getCid(), bean.getProductId());
	}

	public List<ProductBean> cart(Integer cid) {
		return stmt.query("Select * from products join cart using(productId) where cid=?",
				new BeanPropertyRowMapper<ProductBean>(ProductBean.class), new Object[] { cid });
	}
}
