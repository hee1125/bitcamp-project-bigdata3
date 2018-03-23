package bigdata3.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import bigdata3.interceptor.InterCeptor;

@Configuration
public class StatConfig implements WebMvcConfigurer {
	
	@Autowired InterCeptor interCeptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// 이렇게 하면 모든 페이지에서 로그인 세션 체크를 수행 할 것
//		registry.addInterceptor(interCeptor).addPathPatterns("/**").excludePathPatterns("/**/");
	}
}
