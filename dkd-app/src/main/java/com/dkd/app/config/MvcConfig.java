package com.dkd.app.config;

import com.dkd.app.interceptor.LogInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// springMVC配置类
@Configuration
public class MvcConfig implements WebMvcConfigurer {


    @Autowired
    private LogInterceptor logInterceptor;

    // 注册拦截器，告诉springBoot拦截器要工作了
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 第一个拦截器
        registry
                .addInterceptor(logInterceptor) // 添加刚刚写的拦截器
                .addPathPatterns("/**")// 指定拦截
                .excludePathPatterns("/user-service/user/**")
                ;// 执行拦截顺序
    }


}
