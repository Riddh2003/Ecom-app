package com.Bean;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CartBean {
	
	Integer cart_Id;
	Integer cid;
	Integer productId;
}
