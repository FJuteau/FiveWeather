//
//  WeatherDetailTest.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import XCTest
@testable import FiveWeather

class WeatherDetailTests: XCTestCase {
  
  var jsonDictionary: [String: Any]?
  
  override func setUp() {
    super.setUp()
    
    jsonDictionary = Helper.localJSON(with: "WeatherDetailTestable")
  }
  
  
  func testWeatherDetailInitWithDictionary() {
    
    if let jsonDictionary = jsonDictionary {
      
      if let noMissDictionary = jsonDictionary["noMiss"] as? [String:Any] {
        
        XCTAssertNotNil(WeatherDetail(with: noMissDictionary))
      }
      if let mainMissDictionary = jsonDictionary["mainMiss"] as? [String:Any] {
        
        XCTAssertNil(WeatherDetail(with: mainMissDictionary))
      }
      if let weatherMissDictionary = jsonDictionary["weatherMiss"] as? [String:Any] {
        
        XCTAssertNil(WeatherDetail(with: weatherMissDictionary))
      }
      if let cloudsMissDictionary = jsonDictionary["cloudsMiss"] as? [String:Any] {
        
        XCTAssertNil(WeatherDetail(with: cloudsMissDictionary))
      }
      if let windMissDictionary = jsonDictionary["windMiss"] as? [String:Any] {
        
        XCTAssertNil(WeatherDetail(with: windMissDictionary))
      }
    }
  }
  
}
