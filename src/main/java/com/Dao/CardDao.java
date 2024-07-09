package com.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CardDao {
    @Autowired
    JdbcTemplate stmt;
    
    public void addcart(Integer productId, Integer cid) {
        stmt.update("insert into cart(cid,productId) values(?,?)",cid,productId);
    }
}
