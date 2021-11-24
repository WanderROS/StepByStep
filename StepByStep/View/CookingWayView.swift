//
//  CookingWayView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct CookingWayView: View {
    var body: some View {
        HStack {
            // 第一列
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Image("food1")
                        .resizable()
                        .modifier(CookModifier())
                    Spacer()
                    Text("蒸")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                }
                Divider()
                HStack{
                    Image("food2")
                        .resizable()
                        .modifier(CookModifier())
                    Spacer()
                    Text("煎")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                }
                Divider()
                HStack{
                    Image("food3")
                        .resizable()
                        .modifier(CookModifier())
                    Spacer()
                    Text("烙")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                }
                Divider()
                HStack{
                    Image("food4")
                        .resizable()
                        .modifier(CookModifier())
                    Spacer()
                    Text("爆")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                }
                Divider()
            }
            
            // 第二列
            VStack(alignment: .center, spacing: 16){
                
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            
            // 第三列
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("烤")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Spacer()
                    Image("food5")
                        .resizable()
                        .modifier(CookModifier())
                }
                Divider()
                HStack {
                    Text("涮")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Spacer()
                    Image("food6")
                        .resizable()
                        .modifier(CookModifier())
                }
                Divider()
                HStack {
                    Text("冲")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Spacer()
                    Image("food7")
                        .resizable()
                        .modifier(CookModifier())
                }
                Divider()
                HStack {
                    Text("煨")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Spacer()
                    Image("food8")
                        .resizable()
                        .modifier(CookModifier())
                }
                Divider()
            }
            
        }
        .font(.callout)
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct CookingWayView_Previews: PreviewProvider {
    static var previews: some View {
        CookingWayView()
    }
}


struct CookModifier: ViewModifier{
    func body(content: Content) -> some View {
        content.frame(width:42,height: 42,alignment: .center)
    }
}

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content.font(.system(.title,design:.serif))
            .foregroundColor(Color("ColorBlackTransparentDark"))
            .padding(8)
    }
}
