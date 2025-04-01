//
//  DeadlineView.swift
//  one job
//
//  Created by Helen Griffin on 3/27/25.
//

import SwiftUI

struct DeadlineView: View {
    @State private var selectedTime = "1 Hour"
    let timeOptions = ["1 Hour", "3 Hours", "6 Hours", "24 Hours"]
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Complete By")
                .font(.largeTitle)
                .bold()
            
            Text("Allocate enough time for the worst case scenario.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Menu {
                ForEach(timeOptions, id: \.self) { option in
                    Button(action: {
                        selectedTime = option
                    }) {
                        Text(option)
                    }
                }
            } label: {
                HStack {
                    Text(selectedTime)
                        .foregroundColor(.primary)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color(nsColor: NSColor.windowBackgroundColor))
                .cornerRadius(10)
            }

            Button(action: {
                print("Selected time: \(selectedTime)")
            }) {
                Text("Let's GO!!!!")
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 50)
        }
        .padding()
    }
}

#Preview {
    DeadlineView()
}
