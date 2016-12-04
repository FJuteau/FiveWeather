//
//  WindTests.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import XCTest
@testable import FiveWeather

class WindTests: XCTestCase {
  
  var jsonDictionary: [String: Any]?
  
  override func setUp() {
    super.setUp()
    
    jsonDictionary = Helper.localJSON(with: "WindTestable")
  }
  
  
  func testWindInitWithDictionary() {
    
    if let jsonDictionary = jsonDictionary {
      
      if let noMissDictionary = jsonDictionary["noMiss"] as? [String:Int32] {
        
        XCTAssertNotNil(Wind(with: noMissDictionary))
      }
      if let speedMissDictionary = jsonDictionary["speedMiss"] as? [String:Int32] {
        
        XCTAssertNil(Wind(with: speedMissDictionary))
      }
      if let degMissDictionary = jsonDictionary["degMiss"] as? [String:Int32] {
        
        XCTAssertNil(Wind(with: degMissDictionary))
      }
    }
  }
  
}
