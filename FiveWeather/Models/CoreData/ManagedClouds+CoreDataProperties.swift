//
//  ManagedClouds+CoreDataProperties.swift
//  
//
//  Created by François Juteau on 04/12/2016.
//
//

import Foundation
import CoreData


extension ManagedClouds {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ManagedClouds> {
        return NSFetchRequest<ManagedClouds>(entityName: "ManagedClouds");
    }

    @NSManaged public var all: Int32
    @NSManaged public var weatherDetail: ManagedWeatherDetail?

}
