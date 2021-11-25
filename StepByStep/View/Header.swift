//
//  Header.swift
//  StepByStep
//
//  Created by Wander on 2021/11/25.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct Header: View {
    var body: some View {
        ZStack {
            // background
            LinearGradient(gradient: Gradient(colors: [Color("Pink"),Color("Purple")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            // Interface
            VStack(alignment: .center, spacing: 5){
                // header
                LogoView()
                // score
                HStack {
                    HStack{
                        Text("Score")
                            .scoreLableStyle()
                            .multilineTextAlignment(.trailing)
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                    }
                    .modifier(ScoreContainerModifier())
                    Spacer()
                    HStack{
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        Text("Highest \n Score")
                            .scoreLableStyle()
                            .multilineTextAlignment(.leading)
                    }
                    .modifier(ScoreContainerModifier())
                }
                
                // fruitmachine
                VStack(alignment: .center, spacing: 0){
                    ZStack{
                        ReelView()
                        Image("strawberry")
                            .resizable()
                            .modifier(ImageModifier2())
                    }
                    
                    HStack(alignment: .center, spacing:0){
                        ZStack{
                            ReelView()
                            Image("ningmeng")
                                .resizable()
                                .modifier(ImageModifier2())
                        }
                        Spacer()
                        ZStack{
                            ReelView()
                            Image("niuyouguo")
                                .resizable()
                                .modifier(ImageModifier2())
                        }
                    }
                    .frame(maxWidth: 450)
                }
                .layoutPriority(2)
                
                Button(action: {
                    print("push")
                }, label: {
                    Image("push")
                        .renderingMode(.original)
                        .resizable()
                        .modifier(ImageModifier2())
                })
                .layoutPriority(2)
                
                // footer
                
                HStack {
                    // coin
                    HStack(alignment: .center, spacing: 10){
                        Button(action: {
                            
                        }){
                            Text("20")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .modifier(CoinNumberModifier())
                        }
                        .modifier(CoinModifier())
                        Image("coin")
                            .resizable()
                            .opacity(1)
                            .scaledToFit()
                            .frame(height:64)
                            .animation(.default)
                            .modifier(ShadowModifier())
                    }
                    
                }
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: 720)
            .overlay(
                Button(action: {
                    print("重置游戏")
                }, label: {
                    Image(systemName: "arrow.2.circlepath.circle")
                })
                .font(.title)
                .accentColor(.white)
                ,alignment: .topLeading)
            .overlay(
                Button(action: {
                    print("info")
                }, label: {
                    Image(systemName: "info.circle")
                })
                .modifier(ButtonModifier())
                ,alignment: .topTrailing)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
