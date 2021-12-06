//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//
import SwiftUI
struct ProgressShape: Shape {
    let progress: Double

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: rect.width / 2,
            startAngle: .radians(1.5 * .pi),
            endAngle: .init(radians: 2 * Double.pi * progress + 1.5 * Double.pi),
            clockwise: false
        )
        return path
    }
}

struct ProgressView: View {
    let progress: Double

    var body: some View {
        ProgressShape(progress: progress)
            .stroke(Color.blue,
                    style: StrokeStyle(
                        lineWidth: 4,
                        lineCap: .round,
                        lineJoin: .round,
                        miterLimit: 0,
                        dash: [],
                        dashPhase: 0
                    )
        )
    }
}
struct Legend: Hashable {
    let color: Color
    let label: String
}

struct Bar: Identifiable {
    let id: UUID = UUID()
    let value: Double
    let label: String
    let legend: Legend
}

struct BarsView: View {
    let bars: [Bar]
    let max: Double

    init(bars: [Bar]) {
        self.bars = bars
        self.max = bars.map { $0.value }.max() ?? 0
    }

    var body: some View {
        GeometryReader { geometry in
            HStack(alignment: .bottom, spacing: 0) {
                ForEach(self.bars) { bar in
                    Capsule()
                        .fill(bar.legend.color)
                        .frame(height: CGFloat(bar.value) / CGFloat(self.max) * geometry.size.height)
                        .overlay(Rectangle().stroke(Color.white))
                        .accessibility(label: Text(bar.label))
                        .accessibility(value: Text(bar.legend.label))
                }
            }
        }
    }
}

struct LegendView: View {
    private let legends: [Legend]

    init(bars: [Bar]) {
        legends = Array(Set(bars.map { $0.legend }))
    }

    var body: some View {
        HStack(alignment: .center) {
            ForEach(legends, id: \.self) { legend in
                VStack(alignment: .center) {
                    Circle()
                        .fill(legend.color)
                        .frame(width: 16, height: 16)

                    Text(legend.label)
                        .font(.subheadline)
                        .lineLimit(nil)
                }
            }
        }
    }
}
struct BarChartView: View {
    let bars: [Bar]

    var body: some View {
        Group {
            if bars.isEmpty {
                Text("There is no data to display chart...")
            } else {
                VStack {
                    BarsView(bars: bars)
                    LabelsView(bars: bars, labelsCount: 6)
                    LegendView(bars: bars)
                        .padding()
                        .accessibility(hidden: true)
                }
            }
        }
    }
}

struct LabelsView: View {
    let bars: [Bar]
    let labelsCount: Int

    private var threshold: Int {
        let threshold = bars.count / labelsCount
        return threshold == 0 ? 1 : threshold
    }

    var body: some View {
        HStack {
            ForEach(0..<bars.count, id: \.self) { index in
                Group {
                    if index % self.threshold == 0 {
                        Spacer()
                        Text(self.bars[index].label)
                            .font(.caption)
                        Spacer()
                    }
                }
            }
        }
    }
}
struct ContentView: View {
    @State private var showPopover: Bool = false

    let bars: [Bar] = [
        Bar(value: 23.0, label: "1", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "2", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "3", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 23.0, label: "4", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "5", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "6", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 23.0, label: "7", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "8", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "9", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "10", legend: Legend(color: Color.orange, label: "test")),
        Bar(value: 23.0, label: "1", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "2", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "3", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 23.0, label: "4", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "5", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "6", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 23.0, label: "7", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "8", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "9", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "10", legend: Legend(color: Color.orange, label: "test")),
        Bar(value: 23.0, label: "1", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "2", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "3", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 23.0, label: "4", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "5", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "6", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 23.0, label: "7", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "8", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "9", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "10", legend: Legend(color: Color.orange, label: "test")),
        Bar(value: 23.0, label: "1", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "2", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "3", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 23.0, label: "4", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "5", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "6", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 23.0, label: "7", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 22.0, label: "8", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "9", legend: Legend(color: Color.red, label: "awke")),
        Bar(value: 24.0, label: "10", legend: Legend(color: Color.orange, label: "test"))
    ]
    var body: some View {
        VStack {
            BarChartView(bars: bars)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
