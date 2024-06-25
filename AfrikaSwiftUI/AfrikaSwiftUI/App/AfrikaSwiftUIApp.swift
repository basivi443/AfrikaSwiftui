//
//  AfrikaSwiftUIApp.swift
//  AfrikaSwiftUI
//
//  Created by Basivi Reddy on 25/06/24.
//

import SwiftUI

@main
struct AfrikaSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
