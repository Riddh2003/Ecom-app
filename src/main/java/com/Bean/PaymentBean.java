package com.Bean;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PaymentBean {

	Integer PaymentId;
	Integer cid;
	String AuthCode;
	String transactionStringId;
	String Date;
	
	String CardNumber;
	String amout;
}
