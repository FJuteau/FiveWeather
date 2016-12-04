//
//  ManagedWeather+CoreDataProperties.swift
//  
//
//  Created by François Juteau on 04/12/2016.
//
//

import Foundation
import CoreData


extension ManagedWeather {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ManagedWeather> {
        return NSFetchRequest<ManagedWeather>(entityName: "ManagedWeather");
    }

    @NSManaged public var icon: String?
    @NSManaged public var id: Int32
    @NSManaged public var main: String?
    @NSManaged public var weatherDescription: String?
    @NSManaged public var weatherDetail: ManagedWeatherDetail?

}
