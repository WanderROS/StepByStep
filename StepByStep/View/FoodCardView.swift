//
//  FoodCardView.swift
//  StepByStep
//
//  Created by wander on 2021/11/24.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct FoodCardView: View {
    var food: Food
    var body: some View {
        ZStack {
            Text(food.content)
                .padding(.leading,45)
                .padding(.trailing,5)
                .frame(width:300,height: 135,alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlackTransparentDark"),Color("ColorBlackTransparentLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(.white)
            
            Image(food.image)
                .resizable()
                .frame(width:66,height: 66,alignment: .center)
                .clipShape(Circle())
                
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width:74,height: 74,alignment: .center)
            )
                .padding(8)
                .background(Color("ColorBlackTransparentLight"))
                .clipShape(Circle())
                .offset(x: -150)
        }
    }
}

struct FoodCardView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCardView(food:foodData[0])
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
