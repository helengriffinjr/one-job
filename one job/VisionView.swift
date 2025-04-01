//
//  VisionView.swift
//  one job
//
//  Created by Helen Griffin on 3/27/25.
//

import SwiftUI

struct VisionView: View {
    @State private var visionTime = "Tomorrow"
    @State private var showOptions = false
    @State private var currentStatus = "a full-time project manager"
    @State private var targetGoal = ""
    @State private var nextMilestone = ""

    var visionOptions = ["Tomorrow", "Week", "Month"]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Today")
                .font(.largeTitle)
                .bold()

            Text("I envision a better")
                .font(.headline)

            Menu {
                ForEach(visionOptions, id: \.self) { option in
                    Button(option) {
                        visionTime = option
                    }
                }
            } label: {
                Label(visionTime, systemImage: "chevron.down")
                    .padding()
                    .frame(maxWidth: 200)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
            }

            VStack(alignment: .leading, spacing: 5) {
                Text("Where I am")
                    .bold()
                TextField("Your current status", text: $currentStatus)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            VStack(alignment: .leading, spacing: 5) {
                Text("because")
                    .bold()
                TextField("list your target goal", text: $targetGoal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            VStack(alignment: .leading, spacing: 5) {
                Text("happen after I did")
                    .bold()
                TextField("list your next milestone", text: $nextMilestone)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    VisionView()
}
