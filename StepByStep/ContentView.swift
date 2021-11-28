//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        TabView {
//            ForEach(vegetableData) { item in
//                VegetableCardView(vegetable: item)
//            }
//
//        }
//            // Xcode11 上没有tabViewStyle
//        .padding(.vertical,20)
        NavigationView {
            List {
                ForEach(vegetableData){
                    item in
                    VegetableRowView(vegetable: item)
                        .padding(.vertical,4)
                }
            }
            .navigationBarTitle("蔬菜",displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
