//
//  Helper.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

@testable import FiveWeather

class Helper {
  
  static func localJSON(with fileNamed: String) -> [String: Any]? {
    
    let bundle = Bundle(for: self)
    if let resourceURL = bundle.url(forResource: fileNamed, withExtension: "json") {
      
      do {
        
        let data = try Data.init(contentsOf: resourceURL, options:.alwaysMapped)
        if let jsonArray = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [[String: Any]] {
          
          return jsonArray.first
        }
      } catch {
        
        print("Could not retrieve the json local file")
      }
    }
    return nil
  }
  
}
