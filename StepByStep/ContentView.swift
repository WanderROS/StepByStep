//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import SPIndicator
struct ContentView : View {
    var body: some View {
        Button("Show Indicator") {
            let indicatorView = SPIndicatorView(title: "Complete", preset: .done)
         //   indicatorView.backgroundColor = UIColor.orange
            indicatorView.present(duration: 3)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
