//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import SPAlert
struct ContentView : View {
    @State var showAlert = false
    var body: some View {
       Button("Show alert") {
        self.showAlert = true
       }.spAlert(isPresent: $showAlert,
               title: "Alert title",
               message: "Alert message",
               duration: 2.0,
               dismissOnTap: true,
               preset: .custom(UIImage(systemName: "heart")!),
               haptic: .success,
               layout: .init(),
               completion: {
                   print("Alert is destory")
               })
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
