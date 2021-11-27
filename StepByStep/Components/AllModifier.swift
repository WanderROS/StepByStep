//
//  AllModifier.swift
//  StepByStep
//
//  Created by wander on 2021/11/27.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.pink)
    }
}

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
        .padding()
            .frame(minWidth:0,maxWidth: .infinity)
            .background(Capsule().fill(Color.pink))
            .foregroundColor(.white)
    }
}
