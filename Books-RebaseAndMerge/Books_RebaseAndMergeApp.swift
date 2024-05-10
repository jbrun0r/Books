//
//  Books_RebaseAndMergeApp.swift
//  Books-RebaseAndMerge
//
//  Created by João Bruno Rodrigues on 10/05/24.
//

import SwiftUI
import SwiftData

@main
struct Books_RebaseAndMergeApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
