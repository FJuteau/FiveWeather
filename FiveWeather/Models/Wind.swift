//
//  Wind.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct Wind {
  
  var speed: Int32?
  var degree: Int32?
  
  
  init(with dictionary: [String: Int32]) {
    
    speed = dictionary["speed"]
    degree = dictionary["deg"]
  }
  
}
