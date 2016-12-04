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
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    
    if let date = dateFormatter.date(from: weatherDetail.dataTime) {
      
      let enDateFormatter = DateFormatter()
      enDateFormatter.dateStyle = .full
      enDateFormatter.locale = Locale(identifier: "en_US")
      
      let formattedDate = enDateFormatter.string(from: date)
      
      welcome = "\(formattedDate), the temperature will be"
    } else {
      
      welcome = "In five days, the temperature will be"
    }
    
    temperature         = "\(weatherDetail.main.temp) ° F"
    weatherDescription  = "\(weatherDetail.weather.description)"
    iconName            = weatherDetail.weather.icon
  }
}
