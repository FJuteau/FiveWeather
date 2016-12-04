//
//  WeatherCoreDataService.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class WeatherCoreDataService {
  
  
  
  /** Fetch a WeatherDetail object from CoreData
   *
   *  - Returns: a WeatherDetail object if CoreData could retrive it, else returns nil
   **/
  static func fetchWeatherDetail() -> WeatherDetail? {
    
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return nil }
    let managedContext = appDelegate.managedObjectContext
    let weatherDetailRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ManagedWeatherDetail")
    
    do {
      
      if let weatherDetailArray = try managedContext.fetch(weatherDetailRequest) as? [ManagedWeatherDetail] {
        
        if let managedWeatherDetail = weatherDetailArray.first {
          
          return WeatherDetail(with: managedWeatherDetail)
        }
      }
      
    }
    catch {
      
      return nil
    }
    return nil
  }
  
  
  /** Save a WeatherDetail object in CoreData current context
   *
   * - Parameter weatherDetail: WeatherDetail object to save
   **/
  static func save(weatherDetail: WeatherDetail) {
    
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
    let managedContext = appDelegate.managedObjectContext
    let weatherDetailRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ManagedWeatherDetail")
    
    do {
      
      if let weatherDetailArray = try managedContext.fetch(weatherDetailRequest) as? [ManagedWeatherDetail] {
        
        if let managedWeatherDetail = weatherDetailArray.first {
          
          managedWeatherDetail.update(with: weatherDetail)
        } else {
          
          insert(weatherDetail: weatherDetail, into: managedContext)
        }
        
      }
    } catch {
      
      insert(weatherDetail: weatherDetail, into: managedContext)
    }
    
    do {
      
      try managedContext.save()
    } catch { }
  }
  
  
  /** Insert a WeatherDetail object in the wanted context
   *
   * - Parameters:
   * - weatherDetail: WeatherDetail object to save
   * - managedContext: Context to save the WeatherDetail object in
   **/
  static private func insert(weatherDetail: WeatherDetail, into managedContext: NSManagedObjectContext) {
    
    let managedClouds         = NSEntityDescription.insertNewObject(forEntityName: "ManagedClouds", into: managedContext)        as! ManagedClouds
    let managedWind           = NSEntityDescription.insertNewObject(forEntityName: "ManagedWind", into: managedContext)          as! ManagedWind
    let managedMain           = NSEntityDescription.insertNewObject(forEntityName: "ManagedMain", into: managedContext)          as! ManagedMain
    let managedWeather        = NSEntityDescription.insertNewObject(forEntityName: "ManagedWeather", into: managedContext)       as! ManagedWeather
    let managedWeatherDetail  = NSEntityDescription.insertNewObject(forEntityName: "ManagedWeatherDetail", into: managedContext) as! ManagedWeatherDetail
    
    managedWeatherDetail.clouds   = managedClouds
    managedWeatherDetail.wind     = managedWind
    managedWeatherDetail.main     = managedMain
    managedWeatherDetail.weather  = managedWeather
    
    managedWeatherDetail.update(with: weatherDetail)
  }
}
