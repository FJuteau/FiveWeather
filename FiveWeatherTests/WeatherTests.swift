//
//  WeatherTests.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import XCTest
@testable import FiveWeather

class WeatherTests: XCTestCase {
  
  var jsonDictionary: [String: Any]?
  
  override func setUp() {
    super.setUp()
    
    jsonDictionary = Helper.localJSON(with: "WeatherTestable")
  }
  
  
  func testWeatherInitWithDictionary() {
    
    if let jsonDictionary = jsonDictionary {
      
      if let noMissArray = jsonDictionary["noMiss"] as? [[String:Any]],
        let noMissDictionary = noMissArray.first {
        
        XCTAssertNotNil(Weather(with: noMissDictionary))
      }
      if let idMissArray = jsonDictionary["idMiss"] as? [[String:Any]],
        let idMissDictionary = idMissArray.first{
        
        XCTAssertNil(Weather(with: idMissDictionary))
      }
      if let mainMissArray = jsonDictionary["mainMiss"] as? [[String:Any]],
        let mainMissDictionary = mainMissArray.first {
        
        XCTAssertNil(Weather(with: mainMissDictionary))
      }
      if let descriptionMissArray = jsonDictionary["descriptionMiss"] as? [[String:Any]],
        let descriptionMissDictionary = descriptionMissArray.first {
        
        XCTAssertNil(Weather(with: descriptionMissDictionary))
      }
      if let iconMissArray = jsonDictionary["iconMiss"] as? [[String:Any]],
        let iconMissDictionary = iconMissArray.first {
        
        XCTAssertNil(Weather(with: iconMissDictionary))
      }
    }
  }
  
}
