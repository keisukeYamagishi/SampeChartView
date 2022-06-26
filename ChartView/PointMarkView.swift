//
//  PointMarkView.swift
//  ChartView
//
//  Created by keisuke yamagishi on 2022/06/23.
//

import Charts
import SwiftUI

struct Insect: Identifiable {
    let id = UUID()
    let name: String
    let family: String
    let wingLength: Double
    let wingWidth: Double
    let weight: Double
}

struct PointMarkView: View {
    var data: [Insect] = [
        Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 61, wingWidth: 52, weight: 22),
        Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 60, wingWidth: 48, weight: 24),
        Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 53, wingWidth: 43, weight: 18),

        Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 10, wingWidth: 32, weight: 78),
        Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 87, wingWidth: 76, weight: 90),
        Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 21, wingWidth: 90, weight: 18),
        Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 11, wingWidth: 34, weight: 100),
        Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 1, wingWidth: 32, weight: 56),
        Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 12, wingWidth: 32, weight: 47),
        Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 23, wingWidth: 46, weight: 77),
        Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 84, wingWidth: 98, weight: 90),
        Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 53, wingWidth: 43, weight: 18),
        Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 61, wingWidth: 52, weight: 22),
        Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 60, wingWidth: 48, weight: 24),
        Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 53, wingWidth: 43, weight: 18),
        // ...
    ]
    var body: some View {
        Chart(data) {
            PointMark(
                x: .value("Wing Length", $0.wingLength),
                y: .value("Wing Width", $0.wingWidth)
            )
        }
    }
}

struct PointMarkView_Previews: PreviewProvider {
    static var previews: some View {
        PointMarkView()
    }
}
