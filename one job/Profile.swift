//
//  Profile.swift
//  one job
//
//  Created by Helen Griffin on 3/30/25.
//

import Foundation
import SwiftUI

let now = Date.now


class Profile: ObservableObject {
    //    @Published var id = UUID()
    @Published var vision: String = ""
    @Published var priority: String = ""
    @Published var task: String = ""
    @Published var deadline: Int = 0
    @Published var session: Int = 0
    @Published var timeSpent: Int = 0
    @Published var timeWasted: Int = 0
}


struct Today: Identifiable {
    var color: String
    var task: String
    var totalHours: Int
    var id = UUID()
    
    // formula for day breakdown (%) -> (hour/24 hours) * 100 = x%
    //3600sec - 1hr 86400sec - 24hr
    
    let palette: [String: Color] = [
        "Red": .red,
        "Orange": .orange,
        "Yellow": .yellow,
        "Green": .green,
        "Blue": .blue,
        "Indigo": .indigo,
        "Violet": .purple,
        "Cyan": .cyan,
        "Mint": .mint,
        "Black": .black,
        "Gray": .gray,
        "White": .white
    ]
    
    
//    var breakdown: [String: Today] = [
//        "Priority": Today(task: "Priority", totalHours: 0),
//        "Work": Today(task: "Priority", totalHours: 0),
//        "Family": 0,
//        "Personal": 0,
//        "Health": 0,
//        "Hobby": 0,
//        "Emergency": 0,
//        "Distractions": 0,
//        "Idle": 0,
//        "Sleep": 0,
//        "Breaks": 0,
//        "Other": 0
//    ]
}



//var breakdown: [String: Today] = [
//    "priority": Today(color: "Red", task: "Priority", totalHours: String(0)),
//    "work": Today(color: "Orange", task: "Work", totalHours: String(0)),
//    "family": Today(color: "Yellow", task: "Family", totalHours: String(0)),
//    "personal": Today(color: "Green", task: "Personal", totalHours: String(0)),
//    "health": Today(color: "Blue", task: "Health", totalHours: String(0)),
//    "hobby": Today(color: "Indigo", task: "Hobby", totalHours: String(0)),
//    "emergency": Today(color: "Violet", task: "Emergency", totalHours: String(0)),
//    "sleep": Today(color: "Cyan", task: "Sleep", totalHours: String(0)),
//    "breaks": Today(color: "Mint", task: "Priority", totalHours: String(0)),
//    "distractions": Today(color: "Black", task: "Distractions", totalHours: String(0)),
//    "idle": Today(color: "Gray", task: "Idle", totalHours: String(0)),
//    "other": Today(color: "White", task: "Other", totalHours: String(0))
//]
var breakdown: [Today] = [
    Today(color: "Red", task: "Priority", totalHours: 1),
    Today(color: "Orange", task: "Work", totalHours: 7),
    Today(color: "Yellow", task: "Family", totalHours: 1),
    Today(color: "Green", task: "Personal", totalHours: 0),
    Today(color: "Blue", task: "Health", totalHours: 0),
    Today(color: "Indigo", task: "Hobby", totalHours: 0),
    Today(color: "Violet", task: "Emergency", totalHours: 1),
    Today(color: "Cyan", task: "Sleep", totalHours: 0),
    Today(color: "Mint", task: "Breaks", totalHours: 2),
    Today(color: "Black", task: "Distractions", totalHours: 3),
    Today(color: "Gray", task: "Idle", totalHours: 0),
    Today(color: "White", task: "Other", totalHours: 0)
]

