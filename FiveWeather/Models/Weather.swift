//
//  Weather.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct Weather {
  
  var id: Int32?
  var main: String?
  var description: String?
  var icon: String?
  
  
  init(with dictionary: [String: Any]) {
    
    id = dictionary["id"] as? Int32
    main = dictionary["main"] as? String
    description = dictionary["description"] as? String
    icon = dictionary["icon"] as? String
  }
  
  
  init(with managedWeather: ManagedWeather) {
    
    id            = managedWeather.id
    main          = managedWeather.main
    description  = managedWeather.weatherDescription
    icon          = managedWeather.icon
  }
}
