//
//  ManagedClouds+Methods.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

extension ManagedClouds {
  
  func update(with clouds: Clouds) {
    
    all = clouds.all
  }
}
