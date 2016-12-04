//
//  ManagedWeatherDetail+CoreDataProperties.swift
//  
//
//  Created by François Juteau on 04/12/2016.
//
//

import Foundation
import CoreData


extension ManagedWeatherDetail {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ManagedWeatherDetail> {
        return NSFetchRequest<ManagedWeatherDetail>(entityName: "ManagedWeatherDetail");
    }

    @NSManaged public var dataTime: String?
    @NSManaged public var clouds: ManagedClouds?
    @NSManaged public var main: ManagedMain?
    @NSManaged public var wind: ManagedWind?
    @NSManaged public var weather: ManagedWeather?

}
