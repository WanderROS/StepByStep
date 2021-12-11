//
//  TriangleShape.swift
//  StepByStep
//
//  Created by wander on 2021/12/11.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct TriangleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 0.85))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.85))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 0.85))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.85))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

struct TriangleShape_Previews: PreviewProvider {
    static var previews: some View {
        TriangleShape()
            .size(width: 200, height: 200)
            .stroke(lineWidth: 3)
            .foregroundColor(Color.orange)
            
    }
}

