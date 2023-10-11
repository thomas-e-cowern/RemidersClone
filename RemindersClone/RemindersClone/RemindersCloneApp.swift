//
//  RemindersCloneApp.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/10/23.
//

import SwiftUI

@main
struct RemindersCloneApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, CoreDataProvider.shared.persistentContainer.viewContext)
        }
    }
}
