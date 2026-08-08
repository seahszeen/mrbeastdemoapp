//
//  QueryApp.swift
//  Query
//
//  Created by T Krobot on 6/8/26.
//

import SwiftUI
import SwiftData

@main
struct QueryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Persons.self)
    }
}
