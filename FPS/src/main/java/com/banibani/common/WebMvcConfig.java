package com.banibani.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	@Autowired
	private SessionInterceptor sessionInterceptor;
	/**
	 *
	 * 작성일 : 2021. 12. 18.
	 * 작성자 : jubs
	 * parm :레지스트르
	 */
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		registry.addInterceptor(sessionInterceptor)
		.addPathPatterns("/**")
		.excludePathPatterns("/static/css/**")
		.excludePathPatterns("/static/images/**")
		.excludePathPatterns("/static/js/**");

	}



}
