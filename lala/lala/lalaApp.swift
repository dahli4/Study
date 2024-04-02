//
//  lalaApp.swift
//  lala
//
//  Created by A on 2024/01/31.
//

import SwiftUI

@main
struct lalaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
