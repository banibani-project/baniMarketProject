package com.banibani;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
@SpringBootApplication
public class FpsApplication {

    @RequestMapping("/")
    public String home() {
        return "Hello World!";
    }

    @RequestMapping(value="/main.do")
    @ResponseBody
    public String openMain() {
    	return "main";
    }

    public static void main(String[] args) {
        SpringApplication.run(FpsApplication.class, args);
    }

}


