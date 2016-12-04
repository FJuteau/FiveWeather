//
//  ManagedMain+Methods.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

extension ManagedMain {
  
  func update(with main: Main) {
    
    temp        = main.temp
    minTemp     = main.minTemp
    maxTemp     = main.maxTemp
    pressure    = main.pressure
    seaLevel    = main.seaLevel
    groundLevel = main.groundLevel
    humidity    = main.humidity
  }
}
