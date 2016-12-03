//
//  ManagedWeatherDetail+Methods.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

extension ManagedWeatherDetail {
  
  func update(with weatherDetail: WeatherDetail) {
    
    if let nonManagedMain = weatherDetail.main {
      
      main?.update(with: nonManagedMain)
    }
    
    if let nonManagedWeather = weatherDetail.weather {
      
      weather?.update(with: nonManagedWeather)
    }
    
    if let nonManagedClouds = weatherDetail.clouds {
      
      clouds?.update(with: nonManagedClouds)
    }
    
    if let nonManagedWind = weatherDetail.wind {
      
      wind?.update(with: nonManagedWind)
    }
  }
}
