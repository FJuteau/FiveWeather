//
//  ManagedWind+Methods.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

extension ManagedWind {
  
  func update(with wind: Wind) {
    
    degree  = wind.degree
    speed   = wind.speed
  }
}
