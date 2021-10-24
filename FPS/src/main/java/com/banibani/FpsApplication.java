package com.banibani;

import javax.servlet.http.HttpServlet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
public class FpsApplication {

	public static void main(String[] args) {
		SpringApplication.run(FpsApplication.class, args);
	}
}
