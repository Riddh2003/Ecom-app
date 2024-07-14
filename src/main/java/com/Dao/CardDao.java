package com.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Bean.CartBean;

@Repository
public class CardDao {
    @Autowired
    JdbcTemplate stmt;
    
    public void addcart(CartBean bean) {
        stmt.update("insert into cart(cid,productId) values(?,?)",bean.getCid(),bean.getProductId());
    }
}
