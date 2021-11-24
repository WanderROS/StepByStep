//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct FoodView: View {
    let headers: [Header] = headerData
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0){
                        ForEach(headers){
                            item in
                            HeaderView(header: item)
                        }
                        
                    }
                }
                
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    Text("关于北京的小吃")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorBlackTransparentDark"))
                        .padding(8)
                    
                    Text("北京小吃，历史比较悠久")
                        .font(.system(.body,design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
