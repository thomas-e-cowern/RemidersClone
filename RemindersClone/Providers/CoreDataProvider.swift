//
//  CoreDataProvider.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/10/23.
//

import Foundation
import CoreData

class CoreDataProvider {
    
    // Singleton
    static let shared = CoreDataProvider()
    
    // Persistent container
    let persistentContainer: NSPersistentContainer
    
    // Private init
    private init() {
        // Assign persistent container
        persistentContainer = NSPersistentContainer(name: "RemindersModel")
        // Load stores
        persistentContainer.loadPersistentStores { description, error in
            if let error {
                fatalError("Error initializing RemindersModel: \(error)")
            }
        }
    }
    
}
