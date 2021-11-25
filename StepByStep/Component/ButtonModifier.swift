//
//  ButtonModifier.swift
//  StepByStep
//
//  Created by Wander on 2021/11/25.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import Foundation
import SwiftUI

struct ButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title)
            .accentColor(.white)
    }
}
