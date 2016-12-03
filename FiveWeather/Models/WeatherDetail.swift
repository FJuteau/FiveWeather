//
//  WeatherDetail.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct WeatherDetail {
  
  var main: Main?
  var weather: Weather?
  var clouds: Clouds?
  var wind: Wind?
  
  
  init(with dictionary: [String: Any]) {
    
    if let mainDictionary = dictionary["main"] as? [String: Int32] {
      
      main = Main(with: mainDictionary)
    }
    
    if let weatherArray = dictionary["weather"] as? [[String: Any]],
      let weatherDictionary = weatherArray.first {
      
      weather = Weather(with: weatherDictionary)
    }
    
    if let cloudsDictionary = dictionary["clouds"] as? [String: Int32] {
      
      clouds = Clouds(with: cloudsDictionary)
    }
    
    if let windDictionary = dictionary["wind"] as? [String: Int32] {
      
      wind = Wind(with: windDictionary)
    }
  }
  
  
  init(with managedWeatherDetail: ManagedWeatherDetail) {
    
    if let managedMain = managedWeatherDetail.main {
      
      main = Main(with: managedMain)
    }
    
    if let managedWeather = managedWeatherDetail.weather {
      
      weather = Weather(with: managedWeather)
    }
    
    if let managedClouds = managedWeatherDetail.clouds {
      
      clouds = Clouds(with: managedClouds)
    }
    
    if let managedWind = managedWeatherDetail.wind {
      
      wind = Wind(with: managedWind)
    }
  }
}
