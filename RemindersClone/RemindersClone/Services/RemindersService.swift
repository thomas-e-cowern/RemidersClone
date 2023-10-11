//
//  RemindersService.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/11/23.
//

import Foundation
import CoreData
import UIKit

class RemindersService {
    
    // Set up viewContext
    static var viewContext: NSManagedObjectContext {
        CoreDataProvider.shared.persistentContainer.viewContext
    }
    
    // Save list
    static func saveMyList(_ name: String, _ color: UIColor) throws {
        let myList = MyList(context: viewContext)
        myList.name = name
        myList.color = color
    
        try save()
    }
    
    // Save data
    static func save() throws {
        try viewContext.save()
    }
    
}
