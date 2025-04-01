//
//  ProgressView.swift
//  one job
//
//  Created by Helen Griffin on 3/27/25.
//

import SwiftUI
import Charts


var timestamp = Date.now

struct ProgressView: View {
//    @EnvironmentObject var profile: Profile
    
    @ObservedObject var profile = Profile()
    
    
    
    var body: some View {
        
        VStack {
            //title
            Text("Today's Progress")
            //subheadline
            Text("Your daily breakdown of your hardwork and investment.")
            HStack {
                //chart
                
                
                Chart() {
                    ForEach(breakdown, id: \.id) { task in
                        if task.totalHours != 0 {
                            SectorMark(
                                angle: .value("Task", task.totalHours),
                                innerRadius: .ratio(0.55),
                                angularInset: 1.0
                            )
                            .foregroundStyle(task.palette[task.color] ?? .gray)
                            .annotation(position: .overlay){
                                Text(task.totalHours, format: .percent)
                                    .font(.caption)
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
                .chartLegend(.visible)
                .frame(height: 300)
                .chartBackground { proxy in
                    Text("Today, I will complete day 1 of Hacking with SwiftUI")
                        .font(.subheadline)
                        .frame(width: 125)
                }
                VStack {
                    //timestamp
                    Text("As of Today, ")
                        .font(.title2).bold() + Text(timestamp, format: .dateTime.month().day().hour().minute())
                        .font(.title2).bold()
                    //category list
//                    Group {
//                        ForEach(breakdown.sorted(by: { $0.key < $1.key }), id: \.value.id) { pair in
//                            let item = pair.value
//                            Text("\(item.totalHours)% \(item.task)")
//                        }
//                    }
                }
            }
//            HStack {
                //cta buttons and link
            NavigationStack {
                HStack {
                    NavigationLink("Keep Going") {
                        Text("abc")
                    }
                    NavigationLink("New Task") {
                        Text("xyz")
                    }
                    NavigationLink("Update your Vision") {
                        Text("xyz")
                    }
                }
            }
        }
    }
}

#Preview {
    ProgressView()
}
