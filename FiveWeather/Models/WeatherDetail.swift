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
  var dataTime: String
  
  
  init?(with dictionary: [String: Any]) {
    
    guard let mainDictionary  = dictionary["main"] as? [String: Int32],
      let main                = Main(with: mainDictionary),
      
      let weatherArray        = dictionary["weather"] as? [[String: Any]],
      let weatherDictionary   = weatherArray.first,
      let weather             = Weather(with: weatherDictionary),
      
      let cloudsDictionary    = dictionary["clouds"] as? [String: Int32],
      let clouds              = Clouds(with: cloudsDictionary),
      
      let windDictionary      = dictionary["wind"] as? [String: Int32],
      let wind                = Wind(with: windDictionary),
      
      let dataTime            = dictionary["dt_txt"] as? String
    else { return nil }
    
    self.main     = main
    self.weather  = weather
    self.clouds   = clouds
    self.wind     = wind
    self.dataTime = dataTime
  }
  
  
  init?(with managedWeatherDetail: ManagedWeatherDetail) {
    
    guard let managedMain   = managedWeatherDetail.main,
      let managedWeather    = managedWeatherDetail.weather,
      let weather           = Weather(with: managedWeather),
      let managedClouds     = managedWeatherDetail.clouds,
      let managedWind       = managedWeatherDetail.wind,
      let dataTime          = managedWeatherDetail.dataTime
    else { return nil }
    
    self.main     = Main(with: managedMain)
    self.weather  = weather
    self.clouds   = Clouds(with: managedClouds)
    self.wind     = Wind(with: managedWind)
    self.dataTime = dataTime
  }
}
