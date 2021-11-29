//
//  VegetableDetailView.swift
//  StepByStep
//
//  Created by Wander on 2021/11/29.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI

struct VegetableDetailView: View {
    var vegetable: Vegetable
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VegetableHeaderView(vegetable: vegetable)
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    // title
                    Text(vegetable.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(vegetable.gradientColors[1])
                   
                    // 提要
                    Text(vegetable.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    // 分类
                    VegetableClassificationView(vegetable: vegetable)
                    // 子提要
                    Text("了解更多关于：\(vegetable.title)")
                        .fontWeight(.bold)
                        .foregroundColor(vegetable.gradientColors[1])
                    // 描述
                    Text(vegetable.description)
                        .multilineTextAlignment(.leading)
                    SourceLinkView()
                        .padding(.top,10)
                        .padding(.bottom,40)
                    
                }
                .padding(.horizontal,20)
                .frame(maxWidth:375,alignment: .center)
            }
          //  .navigationBarHidden(true)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct VegetableDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableDetailView(vegetable: vegetableData[0])
    }
}
