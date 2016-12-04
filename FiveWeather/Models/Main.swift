//
//  Main.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation

struct Main {
 
  var temp: Int32
  var minTemp: Int32
  var maxTemp: Int32
  var pressure: Int32
  var seaLevel: Int32
  var groundLevel: Int32
  var humidity: Int32
  
  
  init?(with dictionary: [String: Int32]) {
    
    guard let dictionaryTemp  = dictionary["temp"],
    let dictionaryMinTemp     = dictionary["temp_min"],
    let dictionaryMaxTemp     = dictionary["temp_max"],
    let dictionaryPressure    = dictionary["pressure"],
    let dictionarySeaLevel    = dictionary["sea_level"],
    let dictionaryGroundLevel = dictionary["grnd_level"],
    let dictionaryHumidity    = dictionary["humidity"]
    else { return nil }
    
    temp = dictionaryTemp
    minTemp = dictionaryMaxTemp
    maxTemp = dictionaryMinTemp
    pressure = dictionaryPressure
    seaLevel = dictionarySeaLevel
    groundLevel = dictionaryGroundLevel
    humidity = dictionaryHumidity
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
