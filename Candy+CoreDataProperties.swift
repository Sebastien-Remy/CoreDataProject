//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Sebastien REMY on 20/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
    
    public var wrappedName: String {
        name ?? "Unknow Candy"
    }

}
