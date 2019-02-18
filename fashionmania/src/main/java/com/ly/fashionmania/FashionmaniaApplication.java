package com.ly.fashionmania;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.ly.fashionmania.dao")
public class FashionmaniaApplication {

	public static void main(String[] args) {
		SpringApplication.run(FashionmaniaApplication.class, args);
	}

}
