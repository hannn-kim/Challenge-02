//
//  Challenge02App.swift
//  Challenge02
//
//  Created by Han on 4/15/26.
//

import SwiftUI
import SwiftData

@main
struct Challenge02App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Post.self, Host.self, Guests.self])
    }
}
