//
//  LineMarkView.swift
//  ChartView
//
//  Created by keisuke yamagishi on 2022/06/23.
//

import Charts
import SwiftUI

struct LineMarkStruct: Identifiable {
    let id = UUID()
    var city: String
    var date: Date
    var hoursOfSunshine: Double

    init(city: String, month: Int, hoursOfSunshine: Double) {
        let calendar = Calendar.autoupdatingCurrent
        self.city = city
        date = calendar.date(from: DateComponents(year: 2020, month: month))!
        self.hoursOfSunshine = hoursOfSunshine
    }
}

struct LineMarkView: View {
    let items = [
        LineMarkStruct(city: "Seattle", month: 1, hoursOfSunshine: 74),
        LineMarkStruct(city: "Cupertino", month: 1, hoursOfSunshine: 196),
        // ...
        LineMarkStruct(city: "Seattle", month: 2, hoursOfSunshine: 62),
        LineMarkStruct(city: "Cupertino", month: 2, hoursOfSunshine: 21),
        LineMarkStruct(city: "Seattle", month: 3, hoursOfSunshine: 56),
        LineMarkStruct(city: "Cupertino", month: 3, hoursOfSunshine: 23),
        LineMarkStruct(city: "Seattle", month: 4, hoursOfSunshine: 78),
        LineMarkStruct(city: "Cupertino", month: 4, hoursOfSunshine: 100),
        LineMarkStruct(city: "Seattle", month: 5, hoursOfSunshine: 21),
        LineMarkStruct(city: "Cupertino", month: 5, hoursOfSunshine: 43),
        LineMarkStruct(city: "Seattle", month: 6, hoursOfSunshine: 89),
        LineMarkStruct(city: "Cupertino", month: 6, hoursOfSunshine: 200),
        LineMarkStruct(city: "Seattle", month: 7, hoursOfSunshine: 54),
        LineMarkStruct(city: "Cupertino", month: 7, hoursOfSunshine: 79),
    ]

    var body: some View {
        Chart(items) {
            LineMark(
                x: .value("Month", $0.date),
                y: .value("Hours of Sunshine", $0.hoursOfSunshine),
                series: .value("City", $0.city)
            )
            .foregroundStyle(by: .value("City", $0.city))
        }
    }
}

struct LineMarkView_Previews: PreviewProvider {
    static var previews: some View {
        LineMarkView()
    }
}
