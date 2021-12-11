//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//
import SwiftUI
struct LongPressButton: PrimitiveButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .gesture(
                LongPressGesture()
                    .onEnded { _ in configuration.trigger() }
        )
    }
}

struct ContentView: View {
    @State private var isLoading = true

    var body: some View {
        AddView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
