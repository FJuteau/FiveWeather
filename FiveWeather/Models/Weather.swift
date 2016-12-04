//
//  Weather.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct Weather {
  
  var id: Int32
  var main: String
  var description: String
  var icon: String
  
  
  init?(with dictionary: [String: Any]) {
    
    guard let dictionaryId      = dictionary["id"] as? Int32,
      let dictionaryMain        = dictionary["main"] as? String,
      let dictionaryDescription = dictionary["description"] as? String,
      let dictionaryIcon        = dictionary["icon"] as? String
      else { return nil }
    
    id = dictionaryId
    main = dictionaryMain
    description = dictionaryDescription
    icon = dictionaryIcon
  }
  
  
  init(with managedWeather: ManagedWeather) {
    
    id            = managedWeather.id
    main          = managedWeather.main
    description  = managedWeather.weatherDescription
    icon          = managedWeather.icon
  }
}
