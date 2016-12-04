//
//  Wind.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct Wind {
  
  var speed: Int32
  var degree: Int32
  
  
  init?(with dictionary: [String: Int32]) {
    
    guard let dictionarySpeed = dictionary["speed"],
      let dictionaryDegree    = dictionary["deg"]
      else { return nil }
    
    speed = dictionarySpeed
    degree = dictionaryDegree
  }
  
  
  init(with managedWind: ManagedWind) {
    
    degree  = managedWind.degree
    speed   = managedWind.speed
  }
}
