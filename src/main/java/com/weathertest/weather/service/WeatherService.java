package com.weathertest.weather.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.weathertest.weather.enums.LogStatus;
import com.weathertest.weather.models.RequestLogs;
import com.weathertest.weather.repositories.RequestLogsRepository;

import jakarta.transaction.Transactional;

@Service
public class WeatherService {
     
	@Autowired
	private RequestLogsRepository logRepo;
	
	@Value("${weather-api-url}")
	private String baseUrl;
	
	@Value("${weather-api-key}")
	private String apiKey;
	
	private String source = "http://api.weatherapi.com/";
	
	@Transactional
	@SuppressWarnings("unchecked")
	public Map<String, Object> getWeather(String city) {
		RequestLogs log = new RequestLogs();
		log.setDate(new Date());
		log.setSource(source);
		Map<String, Object> result = new LinkedHashMap<String, Object>();
		String url = baseUrl + "?key=" + apiKey;
		url += "&q=" + city;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> entity = new HttpEntity<String>(headers);
		try {
	        ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
	            url,
	            HttpMethod.GET,
	            entity,
	            new ParameterizedTypeReference<Map<String, Object>>() {}
	        );
			Map<String, Object> location = (Map<String, Object>) response.getBody().get("location");
			Map<String, Object> current = (Map<String, Object>) response.getBody().get("current");
			Map<String, Object> temperature = new LinkedHashMap<String, Object>();
			Map<String, Object> condition = (Map<String, Object>) current.get("condition");
			Map<String, Object> wind = new LinkedHashMap<String, Object>();
			wind.put("speed", current.get("wind_kph"));
			wind.put("unit", "km/h");
			temperature.put("value", current.get("temp_c"));
			temperature.put("unit", "°C");
	        result.put("city", location.get("name"));
	        result.put("temperature", temperature);
	        result.put("condition", condition.get("text"));
	        result.put("wind", wind);
	        log.setCity(location.get("name").toString());
	        log.setStatus(LogStatus.success.getValue());
	        log = logRepo.save(log);
	    } catch (HttpClientErrorException | HttpServerErrorException ex) {
	        result.put("status", ex.getStatusCode().value());
	        result.put("error", ex.getStatusText());
	        result.put("message", ex.getResponseBodyAsString());
	        log.setCity(city);
	        log.setStatus(LogStatus.fail.getValue());
	        log.setError(ex.getResponseBodyAsString());
	        log = logRepo.save(log);
	    } catch (RestClientException ex) {
	        result.put("status", HttpStatus.SERVICE_UNAVAILABLE.value());
	        result.put("error", "Service unavailable");
	        result.put("message", ex.getMessage());
	        log.setCity(city);
	        log.setStatus(LogStatus.fail.getValue());
	        log.setError(ex.getMessage());
	        log = logRepo.save(log);
	    }
		return result;
	}
	
	@Transactional
	public List<RequestLogs> getRecords() {
		return logRepo.getHistory();
	}
}
