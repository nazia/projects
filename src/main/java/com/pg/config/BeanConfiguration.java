package com.pg.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
public class BeanConfiguration {

	@Bean("multipartResolver")
	CommonsMultipartResolver multipartResolver() {
		return new CommonsMultipartResolver();
	}
}
