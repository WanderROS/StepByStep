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
    let foods: [Food] = foodData
    let snacks = snackBarData
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
                Text("烹制的方法")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorBlackTransparentDark"))
                    .padding(8)
                CookingWayView()
                    .frame(maxWidth:640)
                
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
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(alignment: .top, spacing: 60){
                            ForEach(foods){
                                item in
                                FoodCardView(food: item)
                            }
                        }
                    }
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
            }
            Text("特色小吃店")
                .fontWeight(.bold)
            .modifier(TitleModifier())
            
            VStack(alignment: .center, spacing: 20){
                ForEach(snacks){
                    item in
                    SnackBarCardView(snack:item)
                }
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
