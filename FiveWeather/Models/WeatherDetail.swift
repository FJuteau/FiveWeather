//
//  WeatherDetail.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct WeatherDetail {
  
  var main: Main
  var weather: Weather
  var clouds: Clouds
  var wind: Wind
  
  
  init?(with dictionary: [String: Any]) {
    
    guard let mainDictionary = dictionary["main"] as? [String: Int32],
    let weatherArray = dictionary["weather"] as? [[String: Any]],
    let weatherDictionary = weatherArray.first,
    let cloudsDictionary = dictionary["clouds"] as? [String: Int32],
    let windDictionary = dictionary["wind"] as? [String: Int32]
    else { return nil }
    
    main = Main(with: mainDictionary)
    weather = Weather(with: weatherDictionary)
    clouds = Clouds(with: cloudsDictionary)
    wind = Wind(with: windDictionary)
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
