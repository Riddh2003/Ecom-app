package com.Bean;

import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ProductBean {
	Integer productId;
	@NotBlank
	String productName;
	@NotBlank
	String category;
	@NotBlank
	Float price;
	@NotBlank
	Integer qty;
	@NotBlank
	MultipartFile productImage;
	
	String productImagePath;
}
