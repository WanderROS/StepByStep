//
//  ShadowModifier.swift
//  StepByStep
//
//  Created by Wander on 2021/11/25.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.shadow(color: Color("Shadow"), radius: 0, x: 0, y: 6)
    }
}

struct ScoreNumberModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("Shadow"), radius: 0, x: 0, y: 3)
            .layoutPriority(1)
    }
}

struct ScoreContainerModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical,4)
            .padding(.horizontal,16)
            .frame(minWidth:138)
            .background(Capsule().foregroundColor(Color("Shadow")))
    }
}
