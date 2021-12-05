//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import SPIndicator
import SPConfetti

struct ContentView : View {
    @State private var isPresenting = false
    
    var body: some View {
        Button("🎉 hooray!", action: { self.isPresenting.toggle() })
            .confetti(isPresented: $isPresenting,
                      animation: .fullWidthToDown,
                      particles: [.triangle, .arc,.heart],
                      duration: 3.0)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
