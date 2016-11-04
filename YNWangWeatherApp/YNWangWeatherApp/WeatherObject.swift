//
//  WeatherObject.swift
//  YNWangWeatherApp
//
//  Created by ynwang on 16/11/3.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import Foundation

class WeatherObject {
	var week : String
	var temperature : String
	var dayTime : String
	
	
	init (week: String, temperature: String, dayTime: String) {
		self.week = week
		self.temperature = temperature
		self.dayTime = dayTime
	}
	
	func initWeather(week: String, temperature: String, dayTime: String) -> WeatherObject {
		self.week = week
		self.temperature = temperature
		self.dayTime = dayTime
		return self
	}
	
	
	
}