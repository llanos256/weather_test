package com.weathertest.weather.controllers;

import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;

@Configuration
@OpenAPIDefinition(
    info = @Info(
        title = "Weather api documentation",
        version = "1.0",
        description = "Comsumption of a external weather api"
    )
)
public class OpenApiConfig {
}
