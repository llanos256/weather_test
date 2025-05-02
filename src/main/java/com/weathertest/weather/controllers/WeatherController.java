package com.weathertest.weather.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.weathertest.weather.service.WeatherService;

@RestController
public class WeatherController {
    
	@Autowired
	private WeatherService weatherService;
	
	@GetMapping(value = "/api/weather/{city}")
	public Map<String, Object> getCurrentWeather(@PathVariable String city) {
		return weatherService.getWeather(city);
	}
}
