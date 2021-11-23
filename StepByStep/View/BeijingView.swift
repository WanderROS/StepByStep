//
//  BeijingView.swift
//  StepByStep
//
//  Created by wander on 2021/11/23.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct BeijingView: View {
    @State private var pulsateAnimation: Bool = false
    var body: some View {
        VStack {
            Spacer()
            Image("food1")
                .resizable()
                .scaledToFit()
                .frame(width:180,height:180,alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1.0 : 0.9)
                .opacity(pulsateAnimation ? 1.0 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            Text("这里是北京")
                .font(.system(size: 42,weight:.bold,design:.serif))
                .foregroundColor(Color.white)
                .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)

            Text("北京，是一座政治城市，有着自己独特的风姿，既能独树一帜，又能孤芳自赏！")
                .lineLimit(nil)
                .font(.headline)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .padding(.horizontal,20)
                .frame(maxWidth: 640,minHeight: 120)
            
            Spacer()
        }
        .background(Image("BackgroundGray").resizable().scaledToFill())
        .edgesIgnoringSafeArea(.all)
        .onAppear(){
            self.pulsateAnimation.toggle()
        }
    }
}

struct BeijingView_Previews: PreviewProvider {
    static var previews: some View {
        BeijingView()
    }
}
