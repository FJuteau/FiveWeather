//
//  WeatherTest.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import XCTest
@testable import FiveWeather

class MainTests: XCTestCase {
  
  var jsonDictionary: [String: Any]?
  
  override func setUp() {
    super.setUp()
    
    jsonDictionary = Helper.localJSON(with: "MainTestable")
    
  }
  
  
  func testMainInitWithDictionary() {
    
    if let jsonDictionary = jsonDictionary {
      
      if let noMissDictionary = jsonDictionary["noMiss"] as? [String:Int32] {
        
        XCTAssertNotNil(Main(with: noMissDictionary))
      }
      if let tempMissDictionary = jsonDictionary["tempMiss"] as? [String:Int32] {
        
        XCTAssertNil(Main(with: tempMissDictionary))
      }
      if let minTempMissDictionary = jsonDictionary["minTempMiss"] as? [String:Int32] {
        
        XCTAssertNil(Main(with: minTempMissDictionary))
      }
      if let maxTempMissDictionary = jsonDictionary["maxTempMiss"] as? [String:Int32] {
        
        XCTAssertNil(Main(with: maxTempMissDictionary))
      }
      if let pressureMissDictionary = jsonDictionary["pressureMiss"] as? [String:Int32] {
        
        XCTAssertNil(Main(with: pressureMissDictionary))
      }
      if let seaLevelMissDictionary = jsonDictionary["seaLevelMiss"] as? [String:Int32] {
        
        XCTAssertNil(Main(with: seaLevelMissDictionary))
      }
      if let grndLevelMissDictionary = jsonDictionary["grndLevelMiss"] as? [String:Int32] {
        
        XCTAssertNil(Main(with: grndLevelMissDictionary))
      }
      if let humidityMissDictionary = jsonDictionary["humidityMiss"] as? [String:Int32] {
        
        XCTAssertNil(Main(with: humidityMissDictionary))
      }
    }
  }
  
}
