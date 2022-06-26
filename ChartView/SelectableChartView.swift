//
//  SelectableChartView.swift
//  ChartView
//
//  Created by keisuke yamagishi on 2022/06/23.
//

import SwiftUI

struct Items: Identifiable {
    let id = UUID()
    let name: String
    let view: AnyView
}

let items = [
    Items(name: "Bar Chart", view: AnyView(BarChartView())),
    Items(name: "Line Chart", view: AnyView(LineMarkView())),
    Items(name: "Point Chart", view: AnyView(PointMarkView())),
    Items(name: "Area Chart", view: AnyView(AreaMarkView())),
]

struct SelectableChartView: View {
    var body: some View {
        NavigationView {
            List(items) { item in
                NavigationLink(destination: item.view) {
                    Text(verbatim: item.name)
                }
            }
        }.navigationTitle("Chart")
    }
}

struct SelectableChartView_Previews: PreviewProvider {
    static var previews: some View {
        SelectableChartView()
    }
}
