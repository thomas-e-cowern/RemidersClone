//
//  MyList+CoreDataProperties.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/10/23.
//

import Foundation
import CoreData
import UIKit

extension MyList {
    
    // Fetch request
    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }
    
    // Properties
    @NSManaged public var name: String
    @NSManaged public var color: UIColor
    @NSManaged public var reminders: NSSet?
}
