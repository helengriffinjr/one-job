//
//  ContentView.swift
//  one job
//
//  Created by Helen Griffin on 3/25/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var profile: Profile


    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
