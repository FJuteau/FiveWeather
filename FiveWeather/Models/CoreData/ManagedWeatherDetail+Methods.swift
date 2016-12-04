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
    
    main?.update(with: weatherDetail.main)
    weather?.update(with: weatherDetail.weather)
    clouds?.update(with: weatherDetail.clouds)
    wind?.update(with: weatherDetail.wind)
  }
}
