//
//  Clouds.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct Clouds {
  
  var all: Int32?
  
  
  init(with dictionary: [String: Int32]) {
    
    all = dictionary["all"]
  }
  
}
