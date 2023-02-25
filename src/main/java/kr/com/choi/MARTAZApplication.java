package kr.com.choi;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(basePackages = {"kr.com.choi.mapper"})
@SpringBootApplication
public class MARTAZApplication {
 
	public static void main(String[] args) {
		SpringApplication.run(MARTAZApplication.class, args);
	}

}
