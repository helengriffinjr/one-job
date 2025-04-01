//
//  one_jobApp.swift
//  one job
//
//  Created by Helen Griffin on 3/25/25.
//

import SwiftUI

@main
struct one_jobApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Profile())
        }
    }
}
