package com.Service;

import org.springframework.stereotype.Service;

@Service
public class OtpService {
	public String otpGenerater() {
		String source="QWERTYUIOPASDFGHJKLZXCVBNM";
		String otp = "";
		for(int i = 1;i<=6;i++) {
			int randomIndex = (int)(Math.random()*source.length());
			otp += source.charAt(randomIndex);
		}
		return otp;
	}
}
