package com.weather.weathertest.enums;

public enum LogStatus {
     
	success("success"),
    fail("fail");
	 
	private String value;
	
	LogStatus(String value){
		this.value = value;
	}
	
	public String getValue() {
		return this.value;
	}
}
