package org.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc
public class WebMvcConfig extends WebMvcConfigurerAdapter{
	 // Cấu hình để sử dụng các file nguồn tĩnh (html, image, ..)
	   @Override
	   public void addResourceHandlers(ResourceHandlerRegistry registry) {
		   //user-interface
	       registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/views/user-interface/css/").setCachePeriod(31556926);
	       registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/images/").setCachePeriod(31556927);
	       registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/views/user-interface/fonts/").setCachePeriod(31556928);
	       registry.addResourceHandler("/includes/**").addResourceLocations("/WEB-INF/views/user-interface/includes/").setCachePeriod(31556929);
	       registry.addResourceHandler("/vendor/**").addResourceLocations("/WEB-INF/views/user-interface/vendor/").setCachePeriod(31556930);
	       registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/views/user-interface/js/").setCachePeriod(31556931);
	       
	       //admin
	       registry.addResourceHandler("/assets/**").addResourceLocations("/WEB-INF/views/admin/assets/").setCachePeriod(31556932);
	       registry.addResourceHandler("/vendors/**").addResourceLocations("/WEB-INF/views/admin/vendors/").setCachePeriod(31556933);
	   }
	 
	    
	   @Override
	   public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
	       configurer.enable();
	   }
}
