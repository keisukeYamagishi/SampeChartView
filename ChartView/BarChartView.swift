//
//  ContentView.swift
//  ChartView
//
//  Created by keisuke yamagishi on 2022/06/23.
//

import Charts
import SwiftUI

struct ValuePerCategory: Identifiable {
    var id = UUID()
    var category: String
    var value: Double
}

let data: [ValuePerCategory] = [
    .init(category: "A", value: 5),
    .init(category: "B", value: 10),
    .init(category: "C", value: 8),
]

struct BarChartView: View {
    var body: some View {
        Chart(data) {
            BarMark(
                x: .value("Category", $0.category),
                y: .value("Value", $0.value)
            )
            .foregroundStyle(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
