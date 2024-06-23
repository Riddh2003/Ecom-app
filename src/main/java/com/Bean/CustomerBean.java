package com.Bean;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CustomerBean {
	Integer cid;
	@NotBlank
	String firstname;
	@NotBlank
	String gender;
	@NotBlank
	String email;
	@NotBlank
	String password;
	String role;
}
