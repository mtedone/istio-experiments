package com.devopsfolks.istio.demo.istiodemo.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.validation.Valid;

@Configuration
public class AppConfig {

    @Value("${version}")
    private String version;

    @Bean
    public String getVersion() {
        return version;
    }
}
