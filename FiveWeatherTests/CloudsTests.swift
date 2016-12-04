//
//  CloudsTests.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import XCTest
@testable import FiveWeather

class CloudsTests: XCTestCase {
  
  var jsonDictionary: [String: Any]?
  
  override func setUp() {
    super.setUp()
    
    jsonDictionary = Helper.localJSON(with: "CloudsTestable")
  }
  
  
  func testCloudsInitWithDictionary() {
    
    if let jsonDictionary = jsonDictionary {
      
      if let noMissDictionary = jsonDictionary["noMiss"] as? [String:Int32] {
        
        XCTAssertNotNil(Clouds(with: noMissDictionary))
      }
      if let allMissDictionary = jsonDictionary["allMiss"] as? [String:Int32] {
        
        XCTAssertNil(Clouds(with: allMissDictionary))
      }
    }
  }
  
}
