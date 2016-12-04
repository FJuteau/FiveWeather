//
//  ManagedMain+CoreDataProperties.swift
//  
//
//  Created by François Juteau on 04/12/2016.
//
//

import Foundation
import CoreData


extension ManagedMain {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ManagedMain> {
        return NSFetchRequest<ManagedMain>(entityName: "ManagedMain");
    }

    @NSManaged public var temp: Int32
    @NSManaged public var minTemp: Int32
    @NSManaged public var maxTemp: Int32
    @NSManaged public var seaLevel: Int32
    @NSManaged public var groundLevel: Int32
    @NSManaged public var pressure: Int32
    @NSManaged public var humidity: Int32
    @NSManaged public var weatherDetail: ManagedWeatherDetail?

}
