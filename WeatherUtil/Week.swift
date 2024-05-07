//
//  Week.swift
//  WeatherUtil
//
//  Created by Khan, Owais on 5/6/24.
//

import Foundation
import SwiftUI

struct Day: Hashable{
    var name: String
    var high: Int
    var low: Int
    var icon: String
    var color: Color
}

class Week{
    static let days: [Day] = [
        Day(name: "Sunday", high: 80, low: 60, icon: "sun.max.fill", color: .orange),
        Day(name: "Monday", high: 75, low: 61, icon: "cloud.moon.rain.fill", color: .blue),
        Day(name: "Tuesday", high: 72, low: 64, icon: "sun.max.fill", color: .orange),
        Day(name: "Wednesday", high: 70, low: 55, icon: "cloud.moon.rain.fill", color: .blue),
        Day(name: "Thursday", high: 79, low: 63, icon: "sun.max.fill", color: .orange),
        Day(name: "Friday", high: 81, low: 70, icon: "sun.max.fill", color: .orange),
        Day(name: "Saturday", high: 76, low: 50, icon: "cloud.heavyrain.fill", color: .gray),
    ]
}
