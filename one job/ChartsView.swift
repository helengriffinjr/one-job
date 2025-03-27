//
//  ChartsView.swift
//  one job
//
//  Created by Helen Griffin on 3/27/25.
//

import SwiftUI


struct ToyShape: Identifiable {
    let palette: [String: Color] = [
        "Red": .red,
        "Orange": .orange,
        "Yellow": .yellow,
        "Green": .green,
        "Blue": .blue,
        "Indigo": .indigo,
        "Violet": .purple
    ]
    var color: String
    var type: String
    var count: Int
    var id = UUID()
}
var data: [ToyShape] = [
    ToyShape(color: "Red", type: "Cube", count: 5),
    ToyShape(color: "Orange", type: "Sphere", count: 4),
    ToyShape(color: "Yellow", type: "Circle", count: 9),
    ToyShape(color: "Green", type: "Pyramid", count: 4),
    ToyShape(color: "Blue", type: "Square", count: 2),
    ToyShape(color: "Indigo", type: "Triangle", count: 40),
    ToyShape(color: "Violet", type: "Star", count: 13)
]
