//
//  WeatherDetailProvider.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

class WeatherDetailProvider {
  
  static func weatherDetail(success: @escaping (WeatherDetail) -> (), failure: @escaping () -> () ) {
    
    OpenWeatherService.weatherDetail(success: { weatherDetail in
      
      print(" \(weatherDetail)")
      WeatherCoreDataService.save(weatherDetail: weatherDetail)
      success(weatherDetail)
    }, failure: { errorMessage in
      
      if let weatherDetail = WeatherCoreDataService.fetchWeatherDetail() {
        
        success(weatherDetail)
      } else {
        failure()
      }
    })
  }
}
