package com.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Bean.CustomerBean;

import jakarta.validation.constraints.Email;

@Repository
public class CustomerDao {
	@Autowired
	JdbcTemplate stmt;
	
	public void insertCustomer(CustomerBean bean) {		
		stmt.update("insert into customer(firstname, gender, email, password, role) values(?,?,?,?,?)", bean.getFirstname(),
					bean.getGender(), bean.getEmail(), bean.getPassword(), bean.getRole());
	}
	
	public CustomerBean authenticateCustomerByEmail(String email) {
		CustomerBean customer = stmt.queryForObject("select * from customer where email = ?",new BeanPropertyRowMapper<>(CustomerBean.class),email);
		return customer;
	}
	
}
