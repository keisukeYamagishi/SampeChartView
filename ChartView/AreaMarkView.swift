//
//  AreaMarkView.swift
//  ChartView
//
//  Created by keisuke yamagishi on 2022/06/23.
//

import Charts
import SwiftUI

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let date: Date

    init(name: String, price: Double, year: Int) {
        self.name = name
        self.price = price
        let calendar = Calendar.autoupdatingCurrent
        date = calendar.date(from: DateComponents(year: year))!
    }
}

struct AreaMarkView: View {
    let data = [
        Food(name: "Cheeseburger", price: 0.15, year: 1960),
        Food(name: "Cheeseburger", price: 0.20, year: 1970),
        // ...
        Food(name: "Cheeseburger", price: 1.10, year: 2020),
    ]

    var body: some View {
        let data = [
            Food(name: "Cheeseburger", price: 0.15, year: 1960),
            Food(name: "Cheeseburger", price: 0.20, year: 1970),
            // ...
            Food(name: "Cheeseburger", price: 1.10, year: 2020),
        ]

        Chart(data) {
            AreaMark(
                x: .value("Date", $0.date),
                y: .value("Price", $0.price)
            )
        }
    }
}

struct AreaMarkView_Previews: PreviewProvider {
    static var previews: some View {
        AreaMarkView()
    }
}
