//
//  CardView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var gradient: [Color] = [Color("Color01"),Color("Color02")]
    var body: some View {
        ZStack{
            Image("developer01")
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("如此美妙 不同凡响")
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y:-218)
            
            Button(action:{
                print("按钮被用户点击")
            }){
                HStack {
                    Text("技术总监")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }
                .padding(.vertical)
                .padding(.horizontal,24)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color:Color("ColorShadow"),radius: 6,x:0,y:0)
            }.offset(y: 210)
        }.frame(width: 335,height: 545)
            .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
            .cornerRadius(16)
            .shadow(radius: 18)
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
