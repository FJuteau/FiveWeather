//
//  ManagedWeather+Methods.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

extension ManagedWeather {
  
  func update(with weather: Weather) {
    
    id                  = weather.id
    main                = weather.main
    weatherDescription  = weather.description
    icon                = weather.icon
  }
}
