//
//  SwiftUI_ToDoListApp.swift
//  SwiftUI-ToDoList
//
//  Created by 김두운 on 9/6/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataExampleApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Todo.self
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
