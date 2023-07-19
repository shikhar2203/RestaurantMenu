//
//  RestaurantMenuApp.swift
//  RestaurantMenu
//
//  Created by shikhar on 20/07/23.
//

import SwiftUI

@main
struct RestaurantMenuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
