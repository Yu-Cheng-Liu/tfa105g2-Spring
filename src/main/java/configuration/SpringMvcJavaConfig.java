package configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@ComponentScan(basePackages = {"web.*.controller"})
@EnableWebMvc // <mvc:annotation-driven></mvc:annotation-driven>
public class SpringMvcJavaConfig implements WebMvcConfigurer {	
	
	@Bean
	public CommonsMultipartResolver commonsMultipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setMaxUploadSizePerFile(102400000);
		resolver.setMaxUploadSize(102400000);
		resolver.setDefaultEncoding("UTF-8");
		return resolver;
	}
	
	/*
	<bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
		<property name="viewClass" value="org.springframework.web.servlet.view.InternalResourceView"></property>
		<property name="prefix" value="/WEB-INF/views"></property>
		<property name="suffix" value=".jsp"></property>
	</bean>
	 */
//	@Override
//	public void configureViewResolvers(ViewResolverRegistry registry) {
//		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
//		resolver.setViewClass(InternalResourceView.class);
//		resolver.setPrefix("/WEB-INF/views");
//		resolver.setSuffix(".jsp");
//		
//		registry.viewResolver(resolver);
//	}
	
	/*
	 <mvc:resources mapping="/css/**" location="/css/"></mvc:resources>
	 */
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/css/**").addResourceLocations("/css/");
//	}
	
//	<mvc:default-servlet-handler />
	
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
}
