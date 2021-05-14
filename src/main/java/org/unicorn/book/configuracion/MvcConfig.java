package org.unicorn.book.configuracion;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.thymeleaf.extras.springsecurity5.dialect.SpringSecurityDialect;
import org.thymeleaf.spring5.SpringTemplateEngine;
import org.thymeleaf.spring5.templateresolver.SpringResourceTemplateResolver;
import org.thymeleaf.spring5.view.ThymeleafViewResolver;
import org.unicorn.book.configuracion.converter.StringToCompraStepConverter;
import org.unicorn.book.configuracion.converter.StringToTipoOperacionConverter;
import org.unicorn.book.configuracion.handlers.LogTimesInterceptor;
import org.unicorn.book.configuracion.handlers.RequestHandler;

/**
 *
 */
@Configuration
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {

    @Value("${external_resources_path}")
    private String externalResourcesPath;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LogTimesInterceptor());
        registry.addInterceptor(requestHandler());
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/acceso").setViewName("usuario/login");
        registry.addViewController("/acceso-denegado").setViewName("error/403");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**", "/manifest.json")
                .addResourceLocations("/resources/", "/manifest.json", String.format("file:%s", externalResourcesPath));
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(new StringToTipoOperacionConverter());
        registry.addConverter(new StringToCompraStepConverter());
    }

    @Bean
    public HandlerInterceptor requestHandler() {
        return new RequestHandler();
    }

    @Bean
    public ThymeleafViewResolver thymeleafViewResolver() {
        ThymeleafViewResolver thymeleafViewResolver = new ThymeleafViewResolver();
        thymeleafViewResolver.setTemplateEngine(springTemplateEngine());
        thymeleafViewResolver.setCharacterEncoding("UTF-8");
        return thymeleafViewResolver;
    }

    @Bean
    public SpringTemplateEngine springTemplateEngine() {
        SpringTemplateEngine springTemplateEngine = new SpringTemplateEngine();
        springTemplateEngine.setTemplateResolver(viewResolver());
        springTemplateEngine.addDialect(new SpringSecurityDialect());
        springTemplateEngine.setEnableSpringELCompiler(true);
        return springTemplateEngine;
    }

    @Bean
    public SpringResourceTemplateResolver viewResolver() {
        SpringResourceTemplateResolver viewResolver = new SpringResourceTemplateResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".html");
        viewResolver.setTemplateMode("HTML");
        viewResolver.setCharacterEncoding("UTF-8");
        viewResolver.setCacheable(true);
        return viewResolver;
    }
}

