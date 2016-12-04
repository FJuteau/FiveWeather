//
//  WeatherDetailProvider.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

class WeatherDetailProvider {
  
  
  /** Retrieve a WeatherDetail object from an online or offline source
   *
   *  - Parameters:
   *  - success: a WeatherDetail object
   *  - failure: a String error message
   **/
  static func weatherDetail(success: @escaping (WeatherDetail) -> (), failure: @escaping (String) -> () ) {
    
    OpenWeatherService.weatherDetail(success: { weatherDetail in
      
      WeatherCoreDataService.save(weatherDetail: weatherDetail)
      success(weatherDetail)
    }, failure: { errorMessage in
      
      if let weatherDetail = WeatherCoreDataService.fetchWeatherDetail() {
        
        success(weatherDetail)
      } else {
        
        failure("Coud not load CoreData managed objects after an API error : \n \(errorMessage)")
      }
    })
  }
}
