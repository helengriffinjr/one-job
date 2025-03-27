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
    var body: some View {
        
        VStack {
            //title
            Text("Today's Progress")
            //subheadline
            Text("Your daily breakdown of your hardwork and investment.")
            HStack {
                //chart
                Chart() {
                    ForEach(data, id: \.id) { shape in
                        SectorMark(
                            angle: .value("Count", shape.count),
                            innerRadius: .ratio(0.55),
                            angularInset: 1.0
                        )
                        .foregroundStyle(shape.palette[shape.color] ?? .gray)
                        .annotation(position: .overlay){
                            Text(shape.count, format: .percent)
                                .font(.caption)
                                .foregroundStyle(.white)
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
