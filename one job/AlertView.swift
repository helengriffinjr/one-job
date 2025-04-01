//
//  AlertView.swift
//  one job
//
//  Created by Helen Griffin on 3/27/25.
//

import SwiftUI

struct AlertView: View {
    @State private var distractionPercentage = 50
    @State private var topPriorityPercentage = 13
    @State private var currentTime = Date()
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Clock It!")
                .font(.largeTitle)
                .bold()
            
            Text("Hold Up! Something is not right!")
                .foregroundColor(.red)
                .font(.headline)
            
            Image(systemName: "light.beacon.max")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .overlay(
                    Text("\(distractionPercentage)%")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                )
            
            Text("As of \(formattedTime)")
                .font(.title3)
                .padding(.top, 10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Valuable time spent on distractions.")
                HStack {
                    Text("\(topPriorityPercentage)%").bold()
                    Text("Top Priority")
                }
                HStack {
                    Text("\(distractionPercentage)%").bold()
                    Text("Distraction")
                }
            }
            
            HStack {
                Button("Get Back to It") {
                    // Add action here
                    print("User tapped 'Get Back to It'")
                }
                .buttonStyle(.borderedProminent)
                
                Button("Change Task") {
                    // Add action here
                    print("User tapped 'Change Task'")
                }
                .buttonStyle(.bordered)
            }
            
            Button("Update your Vision") {
                // Add action here
                print("User tapped 'Update your Vision'")
            }
            .font(.footnote)
            .underline()
        }
        .padding()
        .onAppear(perform: updateTime)
    }
    
    var formattedTime: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return formatter.string(from: currentTime)
    }
    
    func updateTime() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            currentTime = Date()
    }
    }
}

#Preview {
    AlertView()
}
