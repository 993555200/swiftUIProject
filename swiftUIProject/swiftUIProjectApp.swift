//
//  swiftUIProjectApp.swift
//  swiftUIProject
//
//  Created by Habibulloh on 10/08/22.
//

import SwiftUI

@main
struct swiftUIProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
