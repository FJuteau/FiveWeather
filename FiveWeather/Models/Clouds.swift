//
//  Clouds.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct Clouds {
  
  var all: Int32
  
  
  init?(with dictionary: [String: Int32]) {
    
    guard let dictionaryAll = dictionary["all"] else { return nil }

    all = dictionaryAll
  }
  
  
  init(with managedClouds: ManagedClouds) {
    
    all = managedClouds.all
  }
}
