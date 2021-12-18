package com.banibani.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//21.12.19 외부 이미지 접근을 위해 생성
@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
    @Value("${resources.location}")
    private String resourcesLocation;
    @Value("${resources.uri_path:}")
    private String resourcesUriPath;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(resourcesUriPath)
                .addResourceLocations(resourcesLocation);

    }
}
 
