//
//  DetailViewFormatter.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct DetailsViewFormatter {
  
  var temperature         : String
  var weatherDescription  : String
  var iconName            : String
  
  var clouds              : String
  
  var minTemperature      : String
  var maxTemperature      : String
  var pressure            : String
  var seaLevel            : String
  var groundLevel         : String
  var humidity            : String
  
  var mainWeather         : String
  
  var windSpeed           : String
  var windDegree          : String
  
  
  init(with weatherDetail: WeatherDetail) {
    
    temperature         = "\(weatherDetail.main.temp) ° F"
    weatherDescription  = "\(weatherDetail.weather.description)"
    iconName            = weatherDetail.weather.icon
    
    clouds              = "\(weatherDetail.clouds.all)"
    
    minTemperature      = "\(weatherDetail.main.minTemp)"
    maxTemperature      = "\(weatherDetail.main.maxTemp)"
    pressure            = "\(weatherDetail.main.pressure)"
    seaLevel            = "\(weatherDetail.main.seaLevel)"
    groundLevel         = "\(weatherDetail.main.groundLevel)"
    humidity            = "\(weatherDetail.main.humidity)"
    
    mainWeather         = "\(weatherDetail.weather.main)"
    
    windSpeed           = "\(weatherDetail.wind.speed)"
    windDegree          = "\(weatherDetail.wind.degree)"
  }
}
