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
    
    // Container
    let persistentContainer: NSPersistentContainer
    
    // Initializer
    private init() {
        
        // Persistent container
        persistentContainer = NSPersistentContainer.init(name: "ReminderModel")
        
        // Load stores
        persistentContainer.loadPersistentStores { descrtiption, error in
            if let error {
                fatalError("Error initializing RemidnersModel: \(error)")
            }
        }
    }
}
