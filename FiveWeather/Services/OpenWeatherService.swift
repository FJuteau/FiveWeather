//
//  OpenWeatherService.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation
import Alamofire

class OpenWeatherService {
  
  static private let apiURL = "http://api.openweathermap.org/data/2.5/forecast"
  static private let countryIDParameter = "id="
  static private let countryID = "6455259"
  static private let appIDParameter = "APPID="
  static private let appID = "634286f8220fd376af5c1555f1892b29"
  
  
  /** Retrieve a WeatherDetail object from the OpenWeather API
   *
   * - Parameters:
   *   - success: return a WeatherDetail Object
   *   - failure: return an error String
   **/
  static func weatherDetail(success: @escaping (WeatherDetail) -> (), failure: @escaping (String) -> () ) {
    
    Alamofire.request("\(apiURL)?\(countryIDParameter)\(countryID)&\(appIDParameter)\(appID)").response { response in
      
      if let data = response.data {
        do {
          if let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
            
            // The OpenWeather API delivers the weather for the five next day
            // Therefor we want the jsonDictionary last object that is the weather in five days
            if let listArray = jsonDictionary["list"] as? [[String: Any]],
              let lastWeatherDetail = listArray.last {
              
              success(WeatherDetail(with: lastWeatherDetail))
            }
          }
        }
        catch {
          
          failure("Could not serialize the OpenWeather data")
        }
      } else if let error = response.error {
        
        failure("Could not retrieve the OpenWeather data with error : \(error)")
      }
    }
  }
  
  
}
