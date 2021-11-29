//
//  VegetableHeaderView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/29.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct VegetableHeaderView: View {
    var vegetable: Vegetable
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: vegetable.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(vegetable.image)
                .resizable()
                .scaleEffect(self.isAnimating ? 1.0 : 0.6)
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
        }
        .frame(height:440)
        .onAppear(){
            withAnimation(.easeInOut(duration: 0.5)){
                self.isAnimating = true
            }
        }
    }
}

struct VegetableHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableHeaderView(vegetable: vegetableData[1])
    }
}
