//
//  Main.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct Main {
 
  var temp: Int32?
  var minTemp: Int32?
  var maxTemp: Int32?
  var pressure: Int32?
  var seaLevel: Int32?
  var groundLevel: Int32?
  var humidity: Int32?
  
  
  init(with dictionary: [String: Int32]) {
    
    temp = dictionary["temp"]
    minTemp = dictionary["temp_min"]
    maxTemp = dictionary["temp_max"]
    pressure = dictionary["pressure"]
    seaLevel = dictionary["sea_level"]
    groundLevel = dictionary["grnd_level"]
    humidity = dictionary["humidity"]
  }
  
  
  init(with managedMain: ManagedMain) {
    
    temp        = managedMain.temp
    minTemp     = managedMain.minTemp
    maxTemp     = managedMain.maxTemp
    pressure    = managedMain.pressure
    seaLevel    = managedMain.seaLevel
    groundLevel = managedMain.groundLevel
    humidity    = managedMain.humidity
  }
}
