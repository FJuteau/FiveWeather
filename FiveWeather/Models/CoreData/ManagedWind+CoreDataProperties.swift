//
//  ManagedWind+CoreDataProperties.swift
//  
//
//  Created by François Juteau on 04/12/2016.
//
//

import Foundation
import CoreData


extension ManagedWind {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ManagedWind> {
        return NSFetchRequest<ManagedWind>(entityName: "ManagedWind");
    }

    @NSManaged public var degree: Int32
    @NSManaged public var speed: Int32
    @NSManaged public var weatherDetail: ManagedWeatherDetail?

}
