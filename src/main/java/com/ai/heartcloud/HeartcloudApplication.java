package com.ai.heartcloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
@ComponentScan(basePackages = {"com.ai.heartcloud.*"})
public class HeartcloudApplication {
	public static void main(String[] args) {
		SpringApplication.run(HeartcloudApplication.class, args);
	}
}

