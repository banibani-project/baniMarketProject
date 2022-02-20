package com.banibani.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	@Autowired
//	private SessionInterceptor sessionInterceptor;
	private SessionInterceptor sessionInterceptor;

	/**
	 *
	 * 작성일 : 2021. 12. 18. 작성자 : jubs parm :레지스트르
	 */
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		registry.addInterceptor(sessionInterceptor)
				.addPathPatterns("/user/**")
				.excludePathPatterns("/static/css/**")
				.excludePathPatterns("/static/images/**")
				.excludePathPatterns("/static/js/**")
				.excludePathPatterns("/login/**");
	}

	// 21.12.19 외부 이미지 접근을 위해 생성
	@Value("${resources.location}")
	private String resourcesLocation;
	@Value("${resources.uri_path:}")
	private String resourcesUriPath;

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler(resourcesUriPath).addResourceLocations(resourcesLocation);

	}


}
