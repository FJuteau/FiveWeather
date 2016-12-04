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
    
    guard let mainDictionary  = dictionary["main"] as? [String: Int32],
      let dictionaryMain      = Main(with: mainDictionary),
      
      let weatherArray        = dictionary["weather"] as? [[String: Any]],
      let weatherDictionary   = weatherArray.first,
      let dictionaryWeather   = Weather(with: weatherDictionary),
      
      let cloudsDictionary    = dictionary["clouds"] as? [String: Int32],
      let dictionaryClouds    = Clouds(with: cloudsDictionary),
      
      let windDictionary      = dictionary["wind"] as? [String: Int32],
      let dictionaryWind      = Wind(with: windDictionary)
    else { return nil }
    
    main = dictionaryMain
    weather = dictionaryWeather
    clouds = dictionaryClouds
    wind = dictionaryWind
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
