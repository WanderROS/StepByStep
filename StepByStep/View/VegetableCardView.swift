//
//  VegetableCardView.swift
//  StepByStep
//
//  Created by wander on 2021/11/28.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct VegetableCardView: View {
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("huanggua")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(self.isAnimating ? 1.0 : 0.6)
                Text("黄瓜")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text("中国各地普遍栽培，且许多地区均有温室或塑料大棚栽培；现广泛种植于温带和热带地区。黄瓜为中国各地夏季主要菜蔬之一。茎藤药用，能消炎、祛痰、镇痉。")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal,15)
                    .frame(maxWidth:320)
                StartButtonView()
            }
        }
        .onAppear(){
            withAnimation(.easeInOut(duration:0.5), {
                self.isAnimating = true
            })
        }
        .frame(minWidth:0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue,Color.green]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
        
    }
}

struct VegetableCardView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
