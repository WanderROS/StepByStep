//
//  ArcShape.swift
//  StepByStep
//
//  Created by wander on 2021/12/11.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ArcShape : Shape {
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        p.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: self.radius, startAngle: .degrees(220), endAngle: .degrees(320), clockwise: false)
        return p.strokedPath(.init(lineWidth: 6, lineCap: .round))
    }
}
