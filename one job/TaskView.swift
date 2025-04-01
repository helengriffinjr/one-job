//
//  TaskView.swift
//  one job
//
//  Created by Helen Griffin on 3/27/25.
//

import SwiftUI

struct TaskView: View {
    @State private var requiredTask: String = ""
    @State private var desiredItem: String = ""
    @State private var actionChoice: String = "refusing"
    @State private var resultChoice: String = "keeps me"
    

    let actionOptions = ["refusing", "delaying"]
    let resultOptions = ["keeps me", "prevents it"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("First")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("I need to")
            TextField("list a “required” task", text: $requiredTask)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Text("today because I want")
            TextField("list a “desired” item", text: $desiredItem)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Text("By")
            
            HStack {
                Picker("", selection: $actionChoice) {
                    ForEach(actionOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
            }

            Text("to do it")
            HStack {
                Picker("", selection: $resultChoice) {
                    ForEach(resultOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(MenuPickerStyle())
        }
            Text("from happening")
            HStack {
                Picker("", selection: $actionChoice) {
                ForEach(actionOptions, id: \.self) { option in
                    Text(option)
                }
            }
            .pickerStyle(MenuPickerStyle())
        }
        }
        .padding()
    }
}

#Preview {
    TaskView()
}
