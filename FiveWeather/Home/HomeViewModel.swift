//
//  HomeViewModel.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct HomeViewModel {
  
  var welcomeString             : String
  var temperatureString         : String
  var weatherDescriptionString  : String
  var iconName                  : String?
  
  init(with weatherDetail: WeatherDetail) {
    
    welcomeString = "In five days, the temperature will be"
    
    temperatureString = "\(weatherDetail.main?.temp) ° F"
    weatherDescriptionString = "\(weatherDetail.weather?.description)"
    iconName = weatherDetail.weather?.icon
  }
}
