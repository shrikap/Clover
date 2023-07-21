//
//  cloverApp.swift
//  clover
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

@main

struct cloverApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
          ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
