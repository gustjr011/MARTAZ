package kr.com.choi.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.com.choi.interceptor.StatusInterceptor;

@Configuration
public class WebMvmConfig implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		 registry.addInterceptor(statusInterceptor()).excludePathPatterns("/css/**", "/images/**", "/js/**");
	}
	
	@Bean
	public StatusInterceptor statusInterceptor() {
		return new StatusInterceptor();
	}
}
