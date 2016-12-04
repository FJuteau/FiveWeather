//
//  HomeViewModel.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct HomeViewFormatter {
  
  var welcome             : String
  var temperature         : String
  var weatherDescription  : String
  var iconName            : String
  
  init(with weatherDetail: WeatherDetail) {
    
    welcome             = "In five days, the temperature will be"
    
    temperature         = "\(weatherDetail.main.temp) ° F"
    weatherDescription  = "\(weatherDetail.weather.description)"
    iconName            = weatherDetail.weather.icon
  }
}
